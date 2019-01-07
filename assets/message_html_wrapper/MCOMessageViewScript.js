
var imageElements = function() {
	var imageNodes = document.getElementsByTagName('img');
	return [].slice.call(imageNodes);
}

var findCIDImageURL = function() {
	var images = imageElements();
	
	var imgLinks = [];
	for (var i = 0; i < images.length; i++) {
		var url = images[i].getAttribute('src');
		if (url.indexOf('cid:') == 0 || url.indexOf('x-mailcore-image:') == 0)
			imgLinks.push(url);
	}
	return JSON.stringify(imgLinks);
}

var findWebKitFakeUrlImageURL = function() {
	var images = imageElements();
	
	var imgLinks = [];
	for (var i = 0; i < images.length; i++) {
		var url = images[i].getAttribute('src');
		if (url.indexOf('webkit-fake-url:') == 0)
			imgLinks.push(url);
	}
	return JSON.stringify(imgLinks);
}

var findUnhanledWebKitFakeUrlImageURL = function() {
	var images = imageElements();
	
	var imgLinks = [];
	for (var i = 0; i < images.length; i++) {
		var url = images[i].getAttribute('src');
		if (url.indexOf('webkit-fake-url:') == 0){
            if(!images[i].getAttribute('dealed')){
                imgLinks.push(url);
            }
        }
	}
	return JSON.stringify(imgLinks);
}

var hanledAllWebKitFakeUrlImageURL = function() {
	var images = imageElements();
	

	for (var i = 0; i < images.length; i++) {
		var url = images[i].getAttribute('src');
		if (url.indexOf('webkit-fake-url:') == 0){
            images[i].setAttribute('dealed','true');
        }
	}
}


var markFakeImageHandled = function(info) {
	var images = imageElements();
	for (var i = 0; i < images.length; i++) {
		var url = images[i].getAttribute('src');
		if (url.indexOf(info.LocalPathKey) == 0) {
			images[i].setAttribute('dealed', 'true');
			break;
		}
	}
}

var findAllImageURL = function() {
	var images = imageElements();
	
	var imgLinks = [];
	for (var i = 0; i < images.length; i++) {
		var url = images[i].getAttribute('src');
			imgLinks.push(url);
	}
	return JSON.stringify(imgLinks);
}

var replaceImageSrc = function(info) {
	var images = imageElements();
	
	for (var i = 0; i < images.length; i++) {
		var url = images[i].getAttribute('src');
        //alert(url);
		if (url.indexOf(info.URLKey) == 0) {
            
            //alert(info.URLKey);
            //alert(info.LocalPathKey);
			images[i].setAttribute('src', info.LocalPathKey);
			//images[i].setAttribute('style', "max-width:285px");
			break;
		}
	}
}

function getContent()
{
    //var baliEditor = document.getElementById("body");
    //alert(baliEditor);
    var baliEditor = document.getElementById("mailBody");
    return baliEditor.innerHTML;
    //return document.documentElement.innerHTML;;
    
}


var findAttachImageURL = function() {
	var images = imageElements();
	
	var imgLinks = [];
	for (var i = 0; i < images.length; i++) {
        var url = images[i].getAttribute('src');
		if (url.indexOf('/') == 0||url.indexOf("file://localhost/")==0 ){
			imgLinks.push(url);
        }
	}
	return JSON.stringify(imgLinks);
}

