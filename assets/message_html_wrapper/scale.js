(function (context) {
    var undef = undefined;
    var W = window, D = W.document;
    var transformKeys = [ "webkitTransformOrigin", "webkitTransform"];
    var root = (typeof exports == 'undefined' ? window : exports);

    var isRetina, originalBodyWidth;
    
    
    
    

    function checkRetina() {
        if (isRetina != undefined) {
            return isRetina;
        }

        var mediaQuery = "(-webkit-min-device-pixel-ratio: 1.5),\
                          (min--moz-device-pixel-ratio: 1.5),\
                          (-o-min-device-pixel-ratio: 3/2),\
                          (min-resolution: 1.5dppx)";

        if (root.devicePixelRatio > 1) {
            isRetina = true;

        } else if (root.matchMedia && root.matchMedia(mediaQuery).matches) {
            isRetina = true;

        } else {
            isRetina = false;
        }

        return isRetina;
    }

    Date.now = Date.now || function (o) {
        return new Date().getTime();
    };

    Function.prototype.wait = Function.prototype.wait || function (cond, scope, that) {
        var t = this, waitFn = function () {
            if (cond.call(scope || W)) {
                t.call(that || scope || W);
            } else {
                W.setTimeout(waitFn, 200);
            }
        };

        waitFn();
    };

    String.prototype.contains = String.prototype.contains || function (pattern) {
        return this.indexOf(pattern) > -1;
    }

    Array.prototype.contains = Array.prototype.contains || function (item, from) {
        return this.indexOf(item, from) != -1;
    };

    Array.prototype.indexOf = Array.prototype.indexOf || function (item, from) {
        var length = this.length >>> 0;
        for (var i = (from < 0) ? Math.max(0, length + from) : from || 0; i < length; i++) {
            if (this[i] === item) {
                return i;
            }
        }
        return -1;
    };

    function isTable(node) {
        return node.nodeName.toLowerCase() == "table";
    }

    function isImage(node) {
        return node.nodeName.toLowerCase() == "img";
    }

    function isImageComplete(image) {
        var complete = image.complete;
        return complete != undef ? complete : image.readyState == "complete";
    }

    function unbindEvent(image) {
        image.onload = image.onerror = image.sqmIsLoading = null;
    }

    function getImageWidth(image) {
        var naturalWidth = image.naturalWidth;
        return (isImage(image) && naturalWidth != undefined) ? naturalWidth : image.offsetWidth;
    }

    function getImageHeight(image) {
        var naturalHeight = image.naturalHeight;
        return (isImage(image) && naturalHeight != undefined) ? naturalHeight : image.offsetHeight;
    }

    var TIMEOUT = 1000 * 20, IMAGE_INTERVAL = 100;

    function watchInFlight(self) {
        var taskList = self.__oTaskList, size = taskList.length;

        if (!size) {
            self.clearTimer();
            return;
        }

        var now = Date.now();
        for (var i = size - 1; i >= 0; i--) {
            var judge = 0, task = taskList[i];

            try {
                var currentWidth, currentHeight;
                var image = task.image, callback = task.callback;

                if (task.isComplete) {
                    currentWidth = getImageWidth(image);
                    currentHeight = getImageHeight(image);
                    if (currentWidth > 1 || currentHeight > 1) {
                        judge = 1;
                    }

                } else {
                    if (image.sqmIsError) {
                        judge = 2;

                    } else {
                        currentWidth = getImageWidth(image);
                        currentHeight = getImageHeight(image);
                        if (currentWidth != task.width || currentHeight != task.height || image.sqmIsLoaded) {
                            judge = 1;
                        }
                    }
                }

            } catch (e) {
                judge = 2;
            }

            if (judge == 0) {
                if (now - task.startTime > TIMEOUT) {
                    unbindEvent(image);
                    taskList.splice(i, 1);
                }

            } else {
                if (judge == 1) {
                    callback && callback();
                }

                unbindEvent(image);
                taskList.splice(i, 1);
            }
        }
    }

    var ImageLoader = function () {
        this.__oTaskList = [];
    };

    ImageLoader.prototype = {
        addTask : function (task) {
            var self = this;

            task.startTime = Date.now();
            self.__oTaskList.push(task);

            var timerId = self.__sTimerId;
            if (!timerId) {
                self.__sTimerId = W.setInterval(function () {
                    watchInFlight(self);
                }, IMAGE_INTERVAL);
            }
        },
        clearTimer : function () {
            var self = this, timerId = self.__sTimerId;

            if (timerId) {
                W.clearInterval(timerId);
                delete self.__sTimerId;
            }
        }
    };

    var imageLoader = new ImageLoader();

    function waitForComplete(image, callback) {
        if (image.sqmIsLoading) {
            return;
        }

        image.sqmIsLoading = 1;
        var isComplete = isImageComplete(image);
        if (!isComplete) {
            image.onload = function () {
                image.sqmIsLoaded = 1;
            };

            image.onerror = function () {
                image.sqmIsError = 1;
            };
        }

        imageLoader.addTask({
            image : image,
            callback : callback,
            isComplete : isComplete,
            width : isComplete ? null : getImageWidth(image),
            height : isComplete ? null : getImageHeight(image)
        });
    }

    function findTopTableParent(node) {
        var parents = $(node).parents("table");
        var parentSize = parents.length;

        return parentSize ? parents[parentSize - 1] : node;
    }

    function fixTopTableParentNodes(nodes) {
        var convertList = [];
        for (var i = 0, size = nodes.length; i < size; i++) {
            var node = nodes[i];
            if (isTable(node)) {
                var currentNode = findTopTableParent(node);
                convertList.contains(currentNode) || convertList.push(currentNode);

            } else {
                convertList.push(node);
            }
        }

        return convertList;
    }

    function unscaleNode($node) {
        if ($node.parent().hasClass("aym_scale_wrap")) {
            $node.unwrap();
        }

        var restoreStyles = {};
        restoreStyles[transformKeys[0]] = "";
        restoreStyles[transformKeys[1]] = "";
        $node.css(restoreStyles);
    }

    function scaleNodeWidth(node) {
        var $node = $(node);
        $node.css({margin : 0});
        unscaleNode($node);

        var offsetLeft = $node.offset().left;
        var currentMaxWidth = Math.max(originalBodyWidth - offsetLeft, 0);

        var nodeWidth = node.offsetWidth;
        if (nodeWidth > currentMaxWidth) {
            var percent, targetWidth, style = ["overflow:hidden;"];

            if (isImage(node)) {
                style.push("position:relative;");
                if (nodeWidth <= originalBodyWidth) {
                    style.push("left:" + (currentMaxWidth - nodeWidth) + "px;");
                    percent = 1;
                    targetWidth = nodeWidth;

                } else {
                    style.push("left:" + (-offsetLeft) + "px;");
                    percent = originalBodyWidth / nodeWidth;
                    targetWidth = originalBodyWidth;
                }

            } else {
                percent = currentMaxWidth / nodeWidth;
                targetWidth = currentMaxWidth;
            }

            var nodeHeight = node.offsetHeight;
            var targetHeight = Math.ceil(nodeHeight * percent);

            if (percent != 1) {
                var targetStyles = {};
                targetStyles[transformKeys[0]] = "left top";
                targetStyles[transformKeys[1]] = "scale(" + percent + ")";
                $node.css(targetStyles);
            }

            style.push('height: ' + targetHeight + 'px;');
            style.push('width: ' + targetWidth + 'px;');

            $node.wrap('<div class="aym_scale_wrap" style="' + style.join("") + '"></div>');
        }
    }

    function scaleWidth($parent) {
        var nodes = $parent.find("table,img");
        nodes = fixTopTableParentNodes(nodes);

        for (var i = 0, size = nodes.length; i < size; i++) {
            var node = nodes[i];

            if (isImage(node)) {
                (function (image) {
                    waitForComplete(image, function () {
                        var parent = findTopTableParent(image);
                        if (isTable(parent)) {
                            parent.style.width = "";
                            fixTableWidth([parent]);
                        }

                        scaleNodeWidth(parent);
                    });
                })(node);

            } else {
                scaleNodeWidth(node);
            }
        }
    }

    function hasExactWidth(node) {
        var w = node.style.width;
        if (w && (w.contains("px") || w.contains("pt"))) {
            return true;
        }

        w = node.getAttribute("width");
        return !!(w && !w.contains("%"));
    }

    var MIN_WIDTH = 800;

    function fixTableWidth2(nodes) {
        var size = nodes.length;
        if (size) {
            var $parent = $(document.body);
            var html = ['<div class="aym_table_fix_wrap" style="height: 1px;overflow: hidden;">'];
            html.push('<div style="width: ' + Math.max(D.body.offsetWidth, MIN_WIDTH) + 'px;height: 1px;"></div></div>');
            $parent.prepend(html.join(""));
            var $wrap = $parent.children(":first");
            var $wrapInner = $wrap.children(":first");

            for (var i = 0; i < size; i++) {
                var node = nodes[i];

                var previous = node.previousSibling, parent;
                if (!previous) {
                    parent = node.parentNode;
                }

                $wrapInner.append(node);
                node.style.width = "auto";
                node.style.width = node.clientWidth + "px";

                previous ? $(previous).after(node) : $(parent).prepend(node);
            }
            $wrap.remove();
        }
    }

    var min_multiple = 1;

    function fixTableWidth(nodes) {
        var size = nodes.length;
        if (size) {
            for (var i = 0; i < size; i++) {
                var node = nodes[i];
 node.style.width="auto";
                var width = node.clientWidth;
                var height = node.clientHeight;

                var multiple = height / width;
                if (multiple > min_multiple) {
                    node.style.width = width * Math.pow(multiple, 1 / 3) + "px";
                    node.style.height = node.clientHeight;
                }
            }
        }
    }

    function fixTableChildrenHeight(table) {
        var i, size, node, nodes;
        nodes = $(table).find("[style*='height']");
        for (i = 0, size = nodes.length; i < size; i++) {
            node = nodes[i];
            node.style.height = "auto";
        }

        nodes = $(table).find("[height]");
        for (i = 0, size = nodes.length; i < size; i++) {
            node = nodes[i];
            node.setAttribute("height", "auto");
        }
    }

    function detactAndFixTableWidth($parent) {
        var toFixNodes = [];
        var nodes = fixTopTableParentNodes($parent.find("table"));
        for (var i = 0, size = nodes.length; i < size; i++) {
            var node = nodes[i];
            if (!hasExactWidth(node)) {
                fixTableChildrenHeight(node);
                toFixNodes.push(node);
            }
        }

        fixTableWidth(toFixNodes);
    }

    function detactBodyWidth($parent) {
        var nodes = $parent.find("table,img");
        nodes.hide();
        originalBodyWidth = document.body.scrollWidth;
        nodes.show();
    }

    function hasWidthClass(styles) {
        if (!styles) {
            return false;
        }

        for (var i = 0, size = styles.length; i < size; i++) {
            if (styles[i] == "width") {
                return true;
            }
        }

        return false;
    }

    function fixNodeWidth(nodes) {
        for (var i = 0, size = nodes.length; i < size; i++) {
            var node = nodes[i];
            if (node) {
                var name = node.nodeName.toLowerCase();
                if (name == "td" ||name == "p" || name == "div" || name == "blockquote" || name == "ol" || name == "ul") {
                    node.style.width = "auto";
                }
            }
        }
    }

    function fixAllBlockWidth($parent) {
        var styleNodes = $parent.find("style");
        for (var i = 0, size = styleNodes.length; i < size; i++) {
            var sheet = styleNodes[i].sheet;
            if (sheet) {
                var rules = sheet.rules || sheet.cssRules;
                if (rules) {
                    for (var j = 0, ruleSize = rules.length; j < ruleSize; j++) {
                        var rule = rules[j];
                        if (rule.type == 1 && rule.style.cssText) {
                            var hasWidth = hasWidthClass(rule.style);
                            hasWidth && fixNodeWidth($parent.find(rule.selectorText));
                        }
                    }
                }
            }
        }

        fixNodeWidth($parent.find("[style*='width']"));
    }
    
        
	function fixInitialScale(){
        var documentScrollWidth = document.body.scrollWidth;
        var documentClientWidth= document.body.clientWidth;
        //webView.log('sw:'+ documentScrollWidth + ' clientW:' + documentClientWidth + ' windowW:' + window.screen.width);
        //缩放不完美，出现正文宽度超过屏幕宽度的情况。
        if (documentScrollWidth > documentClientWidth) {
            var viewport = document.getElementById("-richtext-viewport");
            scale = documentClientWidth / (document.body.scrollWidth + 10);
            viewport.content = "initial-scale=" + scale + ",width=device-width, user-scalable=yes, maximum-scale=2.0";
        } else {
            document.getElementById("-richtext-viewport").content = "width=device-width,initial-scale=1, user-scalable=yes, maximum-scale=6.0";
        }
    } 
    
    
    context.scale = function () {
        var $parent = $(document.getElementById("mailBody"));
//webView.log('document.getElementById("mailBody") '+document.body.innerHTML);
        $parent.find("img").css({
            width : "auto",
            height : "auto"
        });
        $parent.find("title,meta").remove();

        fixAllBlockWidth($parent);
        detactBodyWidth($parent);
        detactAndFixTableWidth($parent);
        scaleWidth($parent);
        
		fixInitialScale();
webView.log('scale end parent '+$parent.length);

		//延迟下加载，否则android 4.4，正文向下偏移会偶尔失败
		setTimeout(function(){webView.onScaleFinish()},400);

		
    }

})(window);



$(function () {
webView.log('function() start scale! ');
    scale();
webView.log('function() end scale! ');
    });



	var currentParddingTop,displayPardingTop;

    //给java调用
    var setContentParddingTop = function(paddingTop){
    	
    	if(paddingTop > 0){
    		currentParddingTop = paddingTop;
    	}
    	
    	if(displayPardingTop != currentParddingTop){
    		
    		var fillDiv = document.getElementById('messageContentView');
            fillDiv.style.paddingTop = paddingTop +'px';
            webView.log('setContentParddingTop  ='+paddingTop );
            
    		displayPardingTop = currentParddingTop;
    	}
    	
    	    
    };
    
webView.log('1111111111000000000000000000000000000000000000000000000000000111111111111');