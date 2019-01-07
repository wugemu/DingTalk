/************
 * 语音播放
 ************/
var AudioPlayer = (function(_aoNS) {
  //播放音频
  function _playAudio(_aoDomAudio){
    var _oParams = "title src size".split(/\s+/).map(function(_asItem) {
      return _aoDomAudio.getAttribute(_asItem);
    });

    _notifyClear();
    _aoDomAudio.className = "mail_audio_playing";

    App.playAudio.apply(App, _oParams);
  }

  //点击事件
  function _eventForTouchEnd() {
    this.className == "mail_audio_init" && _playAudio(this);
  }

  //初始化dom事件
  function _initEvent(_aoDomAudio) {
    _aoDomAudio.addEventListener("touchend", _eventForTouchEnd, true);
  }

  //初始化对象
  var _oAudioPlayer = {};

  //音频播放器初始化方法
  _oAudioPlayer.init = function(){
    var _oDomAudios = doms(".mail_audio_init");
    for (var i = 0, _nLen = _oDomAudios.length; i < _nLen; i++) {
      _initEvent(_oDomAudios[i]);
    }
  }

  var _notifyClear =

    //公开给java调用
    window.notifyClear = function(){
      doms(".mail_audio_loading,.mail_audio_playing").forEach(function(_aoDom){
        _aoDom.className = "mail_audio_init";
      });
    }

  //公开给java调用
  window.notifyPlaying = function(){
    doms(".mail_audio_loading").forEach(function(_aoDom){
      _aoDom.className = "mail_audio_playing";
    });
  }

  return _oAudioPlayer;
})(window);

/************
 * 业务代码
 ************/
(function() {
  //分析url
  var _oUrlSearchs = location.search.substr(1).split("&"),
  _oUrlParams = {};
for (var i = 0, l = _oUrlSearchs.length, _oUrlParam; i < l; i++) {
  _oUrlParam = _oUrlSearchs[i].split("=");
  _oUrlParams[_oUrlParam[0]] = _oUrlParam[1];
}

//初始化操作变量
var _nRestoreBodyScrollWidth = parseFloat(_oUrlParams["contentWidth"]) || 0,
_nCurScale = parseFloat(_oUrlParams["scale"]) || 1,
_nPageWidth = parseInt(_oUrlParams["pageWidth"]) || 360,
_bIsShowImg = _oUrlParams["showimage"] == "false" ? false : true,
_bIsAdMail = _oUrlParams["admail"] == "true",
_bIsHasScaleTable = _oUrlParams["tableFix"] == "true",
_bIsContentNull = _oUrlParams["contentNull"] == "true",
_bIsShowdownloadalldiv = _oUrlParams["showdownloadalldiv"] == "true",
//某些机器很恶心，刚开始的页面宽度较大导致缩放错误，需要延迟缩放
//延迟缩放体验不是很好
_bIsDelayScale = docElem().scrollWidth > _nPageWidth,
               _nPageMargin = 0,
               _bIsFixTable = _bIsHasScaleTable,
               _bIsOnLoad = false;

var domContentReady = false;

//console.log(["rbsw", _nRestoreBodyScrollWidth, "scale", _nCurScale, "pw", _nPageWidth, "si",
//	_bIsShowImg, "ad", _bIsAdMail, "delay", _bIsDelayScale].toString());

//图片操作函数
function _setImgMaxHeightBaseMaxWidth(_aoImg) {
  //按比例计算maxHeight
  var _nW, _nH;
  if ((_nW = _aoImg.naturalWidth) && (_nH = _aoImg.naturalHeight)) {
    //设置maxHeight
    _aoImg.style.maxHeight = (parseInt(_aoImg.width) * _nH / _nW)  + "px";
    //标记已经处理
    _aoImg.getAttribute("layoutResized", true);
  }
}

//设置缩放
function _setViewport(_anScale, _anWidth) {
  //12为右margin
  console.log("_setViewport:" + _anScale + "," + _anWidth);
  dom("#viewport").content = "initial-scale=" + _anScale + ",width=" + (_anWidth + 12) +
    " , user-scalable=yes, maximum-scale=2.0" + ", minimum-scale=" + _anScale;
}

//是否没有缩放状态
function _isScale() {
  return _nCurScale != 1 && !!_nRestoreBodyScrollWidth;
}

//--暂时废弃
/*
//还原图片原大小
function _revertImgSize() {
var _sScaleClass = "mailcontent_beforescale",
_oDom = dom("." + _sScaleClass);
removeClass(_oDom, _sScaleClass);
}
*/

//--暂时废弃
/*
//获取边宽
function _getParentMarinSum() {
return _nPageMargin || (
//群邮件本身有margin
_nPageMargin = 24 + (doms(".group_floor").length > 0 ? 24 : 0)
);
}
*/

//调整图片缩放
function _fixImgScale() {
  replaceClass(dom("#mailcontent"), "mailcontent_beforescale", "mailcontent_scale");
}

//调整页面缩放
function _fixPageScale() {
  //页面缩放
  var _nBodyScrollWidth = document.body.scrollWidth;
  console.log("_fixPageScale bw=" + _nBodyScrollWidth + " pw=" + _nPageWidth + " rbsw=" + _nRestoreBodyScrollWidth);
  if (_nBodyScrollWidth > (Math.max(_nPageWidth, _nRestoreBodyScrollWidth) + 24)) {
    //边框为24
    var _nScale = _nPageWidth / ((_nRestoreBodyScrollWidth = _nBodyScrollWidth) + 24);
    //设置缩放
    _setViewport(_nCurScale = _nScale, _nRestoreBodyScrollWidth);
    //保存缩放比例
    App.saveScale(_nScale, _nRestoreBodyScrollWidth);
    // 全局缩放
    App.onGlobalScale(_nScale);
    //返回缩放
    return true;
  } else {
    App.onGlobalScale(1);
  }
  //返回没有缩放
  return false;
}

//重新设置表格区域的高度
function _resetTableAreaHeight(_aoDomArea) {
  var _nScale = parseFloat(attr(_aoDomArea, "nScale"));
  if (!isNaN(_nScale)) {
    _aoDomArea.style.cssText = "height:" +
      //用parseInt避免出现压缩后table与table之间出现空行
      parseInt(_getTableFromTableArea(_aoDomArea).scrollHeight * _nScale +
          (parseInt(_aoDomArea, "nOriHeightDelta") || 0)) +
      "px!important;overflow:visible;";
    return true;
  }
  return false;
}

//进行表格缩放
function _fixTableScale(_aoDomArea, _aoDomTable, _anTableWidth) {
  //计算比例
  var _nScale = _aoDomArea.clientWidth / _anTableWidth;
  //console.log([_aoDomArea.clientWidth, _anTableWidth, _nScale, parseFloat(attr(_aoDomArea, "nScale"))].toString());
  //需要缩放，而且跟当前缩放不一致
  if (_nScale < 1 && parseFloat(attr(_aoDomArea, "nScale")) != _nScale) {
    //计算偏移百分比(由于是中心缩放，缩放后需要平移到左上角位置
    var _nTranslate = (1 - _nScale) * 100 / (2 * _nScale);
    //设置样式
    _aoDomTable.style.webkitTransform =
      "scale(" + _nScale + ") translate(-" + _nTranslate + "%,-" + _nTranslate + "%)";
    //记录缩放大小
    _aoDomArea.setAttribute("nScale", _nScale);
    //由于缩放后，占位不变，外面高度也需要调整
    _resetTableAreaHeight(_aoDomArea);
    return true;
  }

  return false;
}

//是否能去掉容器内表格的宽带限制
function _canRemoveTablesWidth(_aoDomContainer) {
  var _nTrsLen = _aoDomContainer.getElementsByTagName("tr").length,
      _nTdsLen = _aoDomContainer.getElementsByTagName("td").length,
      _nThsLen = _aoDomContainer.getElementsByTagName("th").length,
      //表格是否接近单行 并且 不含有图片
      _bIsOk = _nTrsLen > 0 && (_nTdsLen > 0 || _nThsLen > 0) &&
        //安全起见，严格1
        (_nThsLen + _nTdsLen) / _nTrsLen == 1 &&
        //太危险了，table写100%的很容易会乱掉，再加个条件，table嵌套不允许
        //或者可以改用判断 width 是否 100% ?
        _aoDomContainer.getElementsByTagName("table").length == 0;
  //console.log(["_nTrsLen", _nTrsLen, "_nTdsLen", _nTdsLen, "_nThsLen", _nThsLen, "_canRemoveTablesWidth ", _bIsOk].toString());
  return _bIsOk;
}

//获取区域的缩放table
function _getTableFromTableArea(_aoTableAreaDom) {
  //由于某些情况下，解释到的talbe前面有&nbsp;&nbsp;的情况。所以改用此方式获取较为安全。
  var _oTable = dom("table", _aoTableAreaDom);
  !_oTable && console.err("table not found in mailTableArea!");
  //table不存在的情况（理论上不会有，但是担心html错乱也有可能），做个保护避免js错误
  return _oTable || _aoTableAreaDom;
}

function _fixTableScaleReady(_aoDomArea) {
  //要过滤内area
  //		if (getComputedStyle(_aoDomArea)["overflow"] != "visible") {
  //用firstChild 有可能不是 table
  var _oDomTable = _getTableFromTableArea(_aoDomArea),
      _nScrollWidth;
  //			console.log("_canRemoveTablesWidth " + _canRemoveTablesWidth(_aoDomArea));
  //确定要fix的table才去掉margin
  addClass(_aoDomArea, "mailFixedTableArea" +
      (_canRemoveTablesWidth(_aoDomArea) ? " mailFixedTableWidthForAll" : ""));
  //记录高度差（某些html会导致table前面会有&nbsp;导致存在高度差）
  _aoDomArea.setAttribute("nOriHeightDelta", _aoDomArea.scrollHeight - _oDomTable.scrollHeight);
  //必须要后于mailFixedTableWidthForAll的类来获取才能是正确的
  _aoDomArea.setAttribute("nOriWidth", _nScrollWidth = _oDomTable.scrollWidth);
  //记录原宽度，方便refix的时候使用
  _fixTableScale(_aoDomArea, _oDomTable, _nScrollWidth);
  //		}
}

//调整所有表格缩放
function _fixTablesScale(_aoDomAreas) {
  // _nLen > 0 && _fixTableScaleReady(_aoDomAreas[0]);
  // _nLen > 1 && setTimeout(function() {
  for (var i = 0, l = _aoDomAreas.length; i < l; i++) {
    _fixTableScaleReady(_aoDomAreas[i]);
  }
  // 	_aoDomAreas = null;
  // 	//因为有延迟，加入reset高度
  // 	_resetContentHeight();
  // });
}

//重新调整所有表格缩放
function _refixTablesScale() {
  //console.log("_refixTablesScale " + document.body.clientWidth + " " + window.orientation);
  var _oDomAreas = doms(".mailTableArea");
  for (var i = 0, l = _oDomAreas.length, _nTableWidth, _oDomArea, _oDomTable; i < l; i++) {
    if (!isNaN(_nTableWidth = parseInt(attr(_oDomArea = _oDomAreas[i], "nOriWidth")))) {
      if (!_fixTableScale(_oDomArea, _oDomTable = _getTableFromTableArea(_oDomArea), _nTableWidth) &&
          (parseFloat(attr(_aoDomArea, "nScale")) || 10) < 1) {
            //去掉scale
            _oDomTable.style.webkitTransform = "";
            _oDomArea.setAttribute("nScale", 1);
            _resetTableAreaHeight(_oDomArea);
          }
    }
  }
}

//添加缩放事件
function _addScaleEvent() {
  //使用轮询方案加速触发时机
  var _nOrientationChangeTimer = 0,
      _nTimerStartTime = 2000000000000,
      _nBodyWidth = document.body.clientWidth;

  function _timerFunc() {
    //运行时间过长，就不再探测，避免死循环
    if (now() - _nTimerStartTime > 1000) {
      console.log("resetContentHeight _addScaleEvent timeout");
      _clearInterval();
      return true;
    }

    var _nClientWidth = document.body.clientWidth;
    console.log("resetContentHeight _addScaleEvent:" + _nClientWidth + " " + _nBodyWidth);

    if (_nClientWidth != _nBodyWidth) {
      _nBodyWidth = _nClientWidth;
      _clearInterval();
      _refixTablesScale();
      _resetContentHeight();
      return true;
    }

    return false;
  }

  function _clearInterval() {
    if (_nOrientationChangeTimer) {
      clearInterval(_nOrientationChangeTimer);
      _nOrientationChangeTimer = 0;
    }
  }

  function _detectOrientationChange() {
    if (!_timerFunc()) {
      _clearInterval();
      _nTimerStartTime = now();
      _nOrientationChangeTimer = setInterval(_timerFunc, 10);
    }
  }

  window.addEventListener("orientationchange", _detectOrientationChange);
}

//为了异步调用
function _setLoadsImagesAutomatically() {
  App.setLoadsImagesAutomatically();
}

function _getImgSetedWidth(_aoImg) {
  var _nWidth;
  if (_nWidth = _aoImg.oriWidth) {
    return _nWidth;
  }
  var _sWidth = _aoImg.style.width || attr(_aoImg, "width");
  if (_sWidth && _sWidth.indexOf("%") == -1) {
    return parseInt(_sWidth);
  }
  return null;
}

function _getImgSetedHeight(_aoImg) {
  var _nHeight;
  if (_nHeight = _aoImg.oriWidth) {
    return _nHeight;
  }
  var _sHeight = _aoImg.style.height || attr(_aoImg, "height");
  if (_sHeight && _sHeight.indexOf("%") == -1) {
    return parseInt(_sHeight);
  }
  return null;
}

function _reCalcImgHeight(_aoImg, _abIsAbsoluteValue) {
  var _nWidth, _nHeight, _nImgWidth;
  if (//_aoImg.style.display.toLowerCase() != "block" &&
      (_nWidth = _getImgSetedWidth(_aoImg)) &&
      (_nHeight = _getImgSetedHeight(_aoImg)) &&
      _nHeight > 30 &&
      _nWidth > (_nImgWidth = _aoImg.width)) {
        if (_abIsAbsoluteValue) {
          _aoImg.oriWidth = _nWidth;
          _aoImg.oriHeight = _nHeight;
          _aoImg.style.height = (_nHeight * _nImgWidth / _nWidth) + "px";
          //console.log("ANGUS_WEBVIEW _initImages w=" + _nWidth + " h=" + _nHeight + " value=" + (_nHeight * _nImgWidth / _nWidth));
        }
        else {
          _aoImg.style.cssText = "height:auto!important;";
        }
      }
}

//开始加载实体图片
function _startLoadImages(_aoImgs, _asImgsInfo) {
  var _oRealImgsResult = App.getImageCachePath(_asImgsInfo).split("#;#");
  //console.log("_oRealImgsResult = " + _oRealImgsResult);
  //console.log("_aoImgs = " + _aoImgs);

  for (var i = 0, _nLen = _oRealImgsResult.length, _sSrc; i < _nLen; i++) {
    if (_sSrc = _oRealImgsResult[i]) {
      _loadImage(_aoImgs[i], _sSrc);
    }
  }
}

//初始化图片
function _initImages(_aoImgs) {
  var _nLen = _aoImgs.length,
      _oImgsInfo = [];

  for (var i = 0, _oImg, _sSrc, _nWidth, _nHeight; i < _nLen; i++) {
    //获取原始图片信息
    _oImg = _aoImgs[i];
    _sSrc = _oImg.src.split("#")[0],

          _nWidth = _oImg.width,
          _nHeight = _oImg.height;

		//--added by liangkun
	    //可能是网络图片
		var index = _oImg.src.indexOf('http');
		if(index==0){
			//以'http'开头
			_sSrc = _oImg.src;
			_oImgsInfo.push(_sSrc);
		} else {
			_sSrc = _oImg.src.split("#")[0];
    		_oImgsInfo.push(_sSrc);
		}
	    //--added end;

    //_oImgsInfo.push(_oImg.id || (_oImg.id = "qimg_" + i));
    //_oImgsInfo.push(_sSrc);

    //设置最大宽度
    if ((_nWidth > 50 && _nHeight > 50) || (_nWidth == 0 && _nHeight == 0)) {
      addClass(_oImg, "mail_img_spacer");
    }

    //参看 ## Problom1 ##
    _oImg.src = "file:///android_asset/other/spacer.png?r=" + i;

    //存在高度的图片，都可能需要重新计算
    _reCalcImgHeight(_oImg, true);
  }

  //如果id里面有#可能存在bug
  return _oImgsInfo.join("#;#");
}

//图片加载完成的处理逻辑
function _imgOnLoad() {
  console.log("imgonload ...");
  if (!_imgOnLoad._nTimer) {
    _imgOnLoad._nTimer = setTimeout(function() {
      console.log("img onload process");
      _imgOnLoad._nTimer = 0;
      //不需要fixtable就不做了
      if (_bIsFixTable) {
        //根据maxWidth调整maxHeight
        //_setImgMaxHeightBaseMaxWidth(this);
        //可能图片存在table中，所以需要调整一下对应的table的高度
        for (var _oNode = this.parentNode, _nOriWidth; _oNode && _oNode.tagName != "BODY"; _oNode = _oNode.parentNode) {
          //console.log("nOriWidth=" + attr(_oNode, "nOriWidth") + " parseInt=" + parseInt(attr(_oNode, "nOriWidth")));
          if (!isNaN(_nOriWidth = parseInt(attr(_oNode, "nOriWidth")))) {
            var _oDomTable = _getTableFromTableArea(_oNode),
      _nScrollWidth = _oDomTable.scrollWidth;
    console.log("imgOnLoad ow=" + _nOriWidth + " sw=" + _nScrollWidth);
    //如果图片撑大了表格，需要重新缩放.否则调整高度则可。
    if (_nOriWidth != _nScrollWidth) {
      _oNode.setAttribute("nOriWidth", _nScrollWidth);
      _fixTableScale(_oNode, _oDomTable, _nScrollWidth);
    }
    //否则改变高度即可
    else {
      _resetTableAreaHeight(_oNode);
    }
    break;
          }
        }
      }
      //由于table内的图片没有max-width，所以要再fixPage一下
      else if (_fixPageScale()) {
        //更新scale后需要update一下，否则4.4有问题
        updateTitleBar();
      }
      //android webview 加载图片后由时候不会reflow&repaint，强制处理一下
      reflowAndRepaint();
      //图片加载成功后需要更新正文区高度发生变化，以保证附件位置正确性
      _resetContentHeight();
      // 还获取不了当前的缩放比例
      setTimeout(_resetContentHeight, 400);
    }, 1000); //聚合为1s
  }
}

//加载单张图片
function _loadImage(_aoImg, _asSrc) {
  //相同的图片就不多加载了
  if (_aoImg && _asSrc != _aoImg.src) {
    //不去掉的话，有边框
    removeClass(_aoImg, "mail_img_spacer");
    //
    _aoImg.onload = _imgOnLoad;
    //console.log("_loadImage id=" + _aoImg.id + " src=" + _asSrc);
    _aoImg.src = _asSrc;
    //这个方法还是有bug的。最后是直接设置值，但是resize的时候可能有问题
    _reCalcImgHeight(_aoImg);
  }
}

//图片显示入口
function _showImages() {
  //console.log("ANGUS_WEBVIEW _bIsShowImg=" + _bIsShowImg);
  if (_bIsShowImg) {
    //显示背景图片
    removeClass(dom("#mailcontent"), "mail_nobgimg");
    //放开webview加载图片
    //必须异步，否则上面的src虽然设置了，但是实际js没那么快flash，渲染进程有可能发旧的链接出去
    //setTimeout(_setLoadsImagesAutomatically);
    //貌似不需要异步也ok？
    _setLoadsImagesAutomatically();
  }
}

//调整缩放
function _fixScale(_abIsRecordScale) {
  var _oDomContent = dom("#mailcontent"),
      _oDomImgs = doms("img", _oDomContent),
      _sSaveModifyContent;
  //console.log("_fixScale=" + _bIsHasScaleTable + " _bIsContentNull=" + _bIsContentNull);
  if (!_bIsContentNull) {
    //已经保存缩放表格数据的话，不需要再缩放表格
    if (!_bIsHasScaleTable) {
      //先判断是否需要表格缩放
      var _oDomAreas = doms(".mailTableArea", _oDomContent),
          _nDomAreasLen = _oDomAreas.length,
          _oDomFixAreas = [],
          _nTableImgs = 0;
      for (var i = 0, _oDomArea; i < _nDomAreasLen; i++) {
        if (getComputedStyle(_oDomArea = _oDomAreas[i])["overflow"] != "visible") {
          _oDomFixAreas.push(_oDomArea);
          _nTableImgs += doms("img", _oDomArea).length;
        }
      }
      //console.log(["ad", _bIsAdMail, "tableimgs", _nTableImgs, "imgs", _oDomImgs.length, " domAreaLen", _nDomAreasLen].toString());
      if ((_bIsAdMail && _nTableImgs > 0) || _nTableImgs * 2 > _oDomImgs.length || _nDomAreasLen == 0) {
        addClass(_oDomContent, "mailNoTableScale");
        //不需要保存内容，浪费空间（某些有表格情况，需要去掉mailTableArea的样式，所以要mailNoTableScale配合）
        _sSaveModifyContent = "<!--NotFixTable-->";
      }
      else {
        //记录当前页面需要fixtable
        _bIsFixTable = true;
        //提高显示速度，避免看到跳动感，把fixTablesScale提前
        //调整表格最大宽度
        _fixTablesScale(_oDomFixAreas);
        //保存内容
        _sSaveModifyContent = _oDomContent.innerHTML;
      }
      //console.log("setModifyHtml time " + (new Date - t));
    }
    //如果没有保留缩放比例，先计算缩放，再缩放图片
    //如果已经保留缩放比例，那么不用再计算，直接缩放图片即可
    !_abIsRecordScale && _fixPageScale();
  }
  //4.4以上，需要通知一下改变titleBar，以便全部显示正文
  //这个依赖于_fixPageScale的数据改变
  updateTitleBar();
  //完成回调
  App.finish(_sSaveModifyContent || "");

  if (!_bIsContentNull) {
    //调整图片最大宽度
    _fixImgScale();
    //抽取图片
    var _sImgsInfo = _initImages(_oDomImgs);
    //图片处理异步化，避免堵塞webview再次加载
    var _nImgTimer = setInterval(function() {
      //为了避免堵塞webview再次加载内容，图片等到onload后再加载
      console.log("_bIsOnLoad = " + _bIsOnLoad);
      if (_bIsOnLoad) {
        clearInterval(_nImgTimer);
        //允许图片加载显示
        _showImages();
        //开始加载实体图片
        _startLoadImages(_oDomImgs, _sImgsInfo);
      }
    }, 20);

    //缩放完成后，添加事件，以便改变也可以重新缩放
    _addScaleEvent();
  }

  //告知webview内容高度变化
  //第一次调用给某些机器加速
  //放上面了，这个就不用了？
  setTimeout(_resetContentHeight, 0);
  //过快回调，java获取到页面的scale的值还是旧的，导致content-height 的值计算错误，附件位置会出错
  setTimeout(_resetContentHeight, 400);
}


//缩放入口
function _startFixScale(){
  var _bIsScale = _isScale();
  //console.log("_bIsScale=" + _bIsScale + " _bIsDelayScale=" + _bIsDelayScale);
  //由于默认宽度过大，需要延迟后宽度才对
  if(!_bIsScale && _bIsDelayScale) {
    //延迟0ms就可以（这个测试过，不知道有无其它机器还要调大）
    setTimeout(_fixScale, 0);
  }
  else {
    _fixScale(_bIsScale);
  }
}

function _resetContentHeight() {
  var _oDomFildDiv = dom("#fillDiv");
  if (!_oDomFildDiv) {
  	console.log("#fillDiv not found!");
    return console.err("#fillDiv not found!");
  }
  var _nCurFillDivTop = position(_oDomFildDiv).top;

  //_nCurFillDivTop = _nCurFillDivTop + _oDomFildDiv.style.height;
  //warning!!!
  //调用java会严重影响webview性能。耗时严重。
  //这里是否不需要读取？先改为不读取
  var _nWebViewScale = 0;//App.getScale();
  //App.log("_resetContentHeight: " + _resetContentHeight._nOldFillDivTop + ", " + _nCurFillDivTop
  //+ ", scale:" + _resetContentHeight._nOldWebViewScale  + ", " +  _nWebViewScale);
  console.log("_resetContentHeight: " + _resetContentHeight._nOldFillDivTop + ", " + _nCurFillDivTop
  + ", scale:" + _resetContentHeight._nOldWebViewScale  + ", " +  _nWebViewScale);
  //高度没变化就不回调了，减少回调次数
  if (_resetContentHeight._nOldFillDivTop != _nCurFillDivTop || _resetContentHeight._nOldWebViewScale != _nWebViewScale) {
    console.log("fillDiv top=" + _nCurFillDivTop);
    //有缩放的情况下，需要通知client更新fillDiv以便支持小内容的滚动以及附件位置
    App.setRealContentHeight(_resetContentHeight._nOldFillDivTop = _nCurFillDivTop);
    _resetContentHeight._nOldWebViewScale = _nWebViewScale;
    //通知页面更新缩放
    App.resetContentHeight();
  }
}

function _showToolBar() {
  console.log("_showToolBar");
  App.showToolBar();
}

var _bIsFirstSetBar = true;
//调整FillDiv高度，公开给java调用
window.setBarFillDivHeight = function(_anFillDivHeight, _anToolBarHeight) {
  //第一次设置完成后才显示toolbar
  if (_bIsFirstSetBar) {
    //附件需要设置该值后才能正确显示对应位置，所以设置在这里
    console.log("setBarFillDivHeight first");
    _bIsFirstSetBar = false;
    setTimeout(_showToolBar, 100);
  }
  console.log("func-setBarFillDivHeight fillDivHeight=" + _anFillDivHeight + " toolBarHeight=" + _anToolBarHeight);
  if (domContentReady) {
     dom("#fillDiv").style.height = _anFillDivHeight +"px";
  }
  //dom("#toolBarFillDiv").style.height = _anToolBarHeight +"px";
};

//显示图片，公开给java调用
window.loadImage = function(_asId, _asPath) {
  console.log("window.loadImage " + _asId + ", path:" + _asPath);
  var _oImg = dom("#" + _asId);
  _loadImage(_oImg, _asPath);
};

//显示多张图片，公开给java调用
window.loadImages = function(_asIds, _asPath) {
  console.log("window.loadImages " + _asIds + ", path:" + _asPath);
  var _oIds = _asIds.split(",|,");
  for (var i = 0, l = _oIds.length; i < l; i++) {
    loadImage(_oIds[i], _asPath, true);
  }
}

//打开图片加载，公开给java调用
window.resetShowImages = function() {
  if (!_bIsShowImg) {
    _bIsShowImg = true;
    _showImages();
  }
}

//公开给java层调用reflow&repaint
window.reflowAndRepaint = function() {
  document.body.style.overflow = "hidden";
  document.body.offsetHeight;
  document.body.style.overflow = "auto";
  console.log("reflowAndRepaint");
}

//公开给java层调用显示正在加载全部
window.showLoadingAll = function() {
//  dom("#mailLoadAllContent").style.display = "none";
//  dom("#mailLoadingAllContent").style.display = "";
  document.body.style.display = "none";
}

// 4.4以上的titleBarWebView 使用到
var _nCurTitleBarHeight = App.getTitleBarHeight(),
    //跟getTitleBarHeight()一致，以便下面判断减少1次
    _nDisplayTitleBarHeight = -1,
    _nDisplayScale;
// 公开给java调用
window.updateTitleBar = function(_anTitleBarHeight) {
  //存在数据，更新titleBar高度值
  if (_anTitleBarHeight > 0) {
    _nCurTitleBarHeight = _anTitleBarHeight;
  }
  //参数发生改变的话，重置高度
  if (_nCurTitleBarHeight > 0 && (_nCurTitleBarHeight != _nDisplayTitleBarHeight || _nDisplayScale != _nCurScale)) {
    var _sId = "mailTitleBarFillDiv",
      _oDom = dom("#" + _sId);
    //容器不存在就自己创建
    if (!_oDom) {
      _oDom = document.createElement("div");
      _oDom.id = _sId;
      docElem().insertBefore(_oDom, document.body);
    }
    //设置高度
    _oDom.style.height = (_nCurTitleBarHeight / _nCurScale) + "px";
    //记录显示状态，以便优化避免重复设置
    _nDisplayTitleBarHeight = _nCurTitleBarHeight;
    _nDisplayScale = _nCurScale;
    //
    console.log("updateTitleBar " + _anTitleBarHeight);
    _resetContentHeight();
  }
};

var phone = /(\+[0-9]+[\- ]*)?(\([0-9]+\)[\-]*)?([0-9][0-9\-][0-9\-]+[0-9]{2,})(?!\.)(?!\d)/g;
var email = /[a-zA-Z0-9\+\.\_\%\-\+]{1,256}\@[a-zA-Z0-9][a-zA-Z0-9\-]{0,64}(\.[a-zA-Z0-9][a-zA-Z0-9\-]{0,25})+/g;

// copy webmail 的版本
var url = /((?:https?:\/\/|www\d{0,3}[.]|[a-z0-9.\-]+[.][a-z]{2,4}\/)(?:(&amp;amp;)|(&amp;)|[^\s`!()\uff08\uff09\[\]{};'"<>\u201c\u201d\u2018\u2019\u3002\uff0c\uff1b]|([(\uff08][^\s()\uff08\uff09<>]+[)\uff09])|([(\uff08][^\s()\uff08\uff09<>]*?[(\uff08][^\s()\uff08\uff09<>]*?[)\uff09][)\uff09]))+(?:([(\uff08][^\s()\uff08\uff09<>]+[)\uff09])|([(\uff08][^\s()\uff08\uff09<>]*?[(\uff08][^\s()\uff08\uff09<>]*?[)\uff09][)\uff09])|[^\s`!()\uff08\uff09\[\]{};:'".,<>?\u201c\u201d\u2018\u2019\u3002\uff0c\uff1b]))/g;
var date = /((((?!0000)([0-9]{4}|[0-9]{2})[-/\.年])?((0[1-9]|1[0-2]|[1-9])[-/\.月](0[1-9]|1[0-9]|2[0-9]|3[01]|[1-9])[日号,，]?))\s*)?((上午|中午|下午|晚上)\s*)?\b((([01]?[0-9]|2[0-3])[:：时点]([0-5]?[0-9])?分?((:([0-5][0-9]))|(([0-5]?[0-9])秒))?)\s?(am|pm|AM|PM)?)(?!\d)|\b((((?!0000)([0-9]{4}|[0-9]{2})[-/\.年])?((0[1-9]|1[0-2]|[1-9])[-/\.月](0[1-9]|1[0-9]|2[0-9]|3[01]|[1-9])[日号]?)))(?!\d)/g;

var myYear,myMonth,myDay,myHour,myMinute,mySecond,myReadMailDate;

function getCurrentTime(){
  var myDate = new Date();
  myYear = myDate.getFullYear();    //获取完整的年份(4位,1970-????)
  myMonth = myDate.getMonth()+1;       //获取当前月份(0-11,0代表1月)
  myDay = myDate.getDate();        //获取当前日(1-31)
  myHour = myDate.getHours();       //获取当前小时数(0-23)
  myMinute = myDate.getMinutes();     //获取当前分钟数(0-59)
  mySecond = myDate.getSeconds();     //获取当前秒数(0-59)
  myReadMailDate = myDate.getTime();        //获取当前时间(从1970.1.1开始的毫秒数)
  //  		console.log("helloworld_"+myYear+","+myMonth+","+myDay+","+myHour+","+myMinute+","+mySecond+","+myReadMailDate)
}

function phoneTransform(content) {
  phone.lastIndex = 0;
  return content.replace(phone, function(m) {
    var c = 0;
    for (var i = 0, l = m.length; i < l; i++) {
      if (/\d/.test(m.charAt(i))) c++;
    }
    if (c >= 5 && c <= 20) {
      var arr = m.split(/(\s|-)/)
      arr = arr.slice(arr.length - 3)
      if (arr.length > 0) {
        for (var i = 0, l = arr.length; i < l; i++) {
          if (arr[i].length > 2) {
            return '<a href="tel:' + m + '">' + m + '</a>';
          }
        }
      } else {
        return '<a href="tel:' + m + '">' + m + '</a>';
      }
    }
    return m;
  });
}

function emailTransform(content) {
  email.lastIndex = 0;
  return content.replace(email, '<a href="mailto:$&">$&</a>');
}

function urlTransform(content) {
  url.lastIndex = 0;
  return content.replace(url, function(m) {
    if (/^http/.test(m)) {
      return '<a href="' + m + '">' + m + '</a>';
    }
    return '<a href="http://' + m + '">' + m + '</a>';
  });
}

function dateTransform(content) {
  return content;
}

var IGNORE_NODE_NAMES = ['A', 'STYLE']
function ignoreNode(node) {
  return node.parentNode &&
    (IGNORE_NODE_NAMES.indexOf(node.parentNode.nodeName.toUpperCase()) != -1
     || node.parentNode.hasAttribute('ignore'));
}

function linkify(el, transforms) {
  var node, nodes = [],
      count = 0, loop = 0, match = 0;

  var walker = document.createTreeWalker(el, NodeFilter.SHOW_TEXT, {
    // Android 2.3 Webkit 533.1 BUG:
    // https://bugs.webkit.org/show_bug.cgi?id=35296
    acceptNode: function(node) {
      if (ignoreNode(node)) {
        return NodeFilter.FILTER_REJECT;
      }
      return NodeFilter.FILTER_ACCEPT;
    }
  }, false);

  while (node = walker.nextNode()) nodes.push(node);

  while (node = nodes.shift()) {
    count++;
    (function transform(node, i) {
      i = i || 0;
      var originalText = node.textContent;
      if (!transforms[i] || originalText.trim().length == 0) return;
      if (ignoreNode(node)) return;
      loop++;
      var newText = transforms[i](originalText);
      if (originalText != newText) {
        match++;
        var newNode = document.createElement('span');
        newNode.innerHTML = newText;
        node.parentNode.insertBefore(newNode, node);
        node.parentNode.removeChild(node);
        linkify(newNode, transforms);
      } else {
        transform(node, i+1)
      }
    })(node);
  }
  return [count, loop, match]
}

function removeToInsertLater(element) {
  var parentNode = element.parentNode;
  var nextSibling = element.nextSibling;
  parentNode.removeChild(element);
  return function() {
    if (nextSibling) {
      parentNode.insertBefore(element, nextSibling);
    } else {
      parentNode.appendChild(element);
    }
  };
}

window.replaceCainiaoURLToIframe = function() {
    var link = document.querySelector(".dingmail_cainiao_001");
    if(link) {
        var url = link.href;
        var iframe = document.createElement('iframe');
        iframe.setAttribute('src', url);
        iframe.setAttribute('frameborder', 'no');
        iframe.style.cssText = 'width:100%;height:600px;';
        link.parentNode.insertBefore(iframe, link);
        link.parentNode.removeChild(link);
    }
}

function appendHTML() {
  var html = '<div class="email_loadall" style="display: none;">' +
    '<a id="emailLoadAllContent" href="email://downloadall" onclick="this.parentNode.style.display=\'none\';return true;">下载全部</a>' +
    '<div id="emailLoadingAllContent" style="display:none;line-height:32px;margin-top:-10px;"><Image style="width:32px;height:32px;" src="file:///android_asset/other/icon_recorder_loading.gif" /></div>' +
    '</div>' +
    '<div style="width: 30px; height: 20px; color: #0ff; background: #fff; clear: both;"></div>' +
    '<div style="width: 100px; height: 0px; color: #0ff; background: #fff;" id="fillDiv"></div>' +
    '<div style="width: 30px; height: 0px; color: #666; background: #fff;" id="toolBarFillDiv"></div>';
  insertHTML(document.body,"beforeEnd", html)
}

function autoFormat() {
  getCurrentTime();
  var content = document.getElementById('mailcontent');
  var isCalendarOpen = content.getAttribute('calendar_switch');
  var start = +new Date;
  var ret
  if(isCalendarOpen == "true"){
	  ret = linkify(content, [
		  emailTransform,
		  urlTransform,
		  dateTransform,
		  phoneTransform
		  ]);
  }
  else{
	  ret = linkify(content, [
	      emailTransform,
	      urlTransform,
	      phoneTransform
	      ]);
  }

//  console.log("[linkify] textNodes: " + ret[0]
//      + ", transform: " + ret[1]
//      + ", match: " + ret[2]
//      + ", cost: +" + (new Date() - start) + "ms");
}

function initGroupVote() {
  var voteBox = document.getElementById('vote_content');

  //whether vote box exist.
  if (voteBox != null) {
    var voteOps = document.getElementsByName('vote_option');
    if (voteOps != null && voteOps.length > 0) {
      //set onclick action of title.
      for (var i = 0; i < voteOps.length; i++) {
        if (i == 0) dom('input', voteOps[i]).checked = true;

        //default checked option.
        var title = dom('.vote_item_title', voteOps[i]);
        //onclick action.
        title.onclick = function() {
          dom('input', this.parentNode).checked = true;
        };
      }

      //set submit action.
      var submitBtn = document.getElementById('vote_btn');
      submitBtn.onclick = function() {
        var checkedValue = dom('input:checked', this.parentNode).value;
        this.href = 'email://view_group_vote_btn/' + checkedValue;
      };
    }
  }
}

// 公开给Java更新
window.updateSelection = function() {
  var selected = window.getSelection();
  App.selectionRange(selected.toString().length);
  console.log("getSelection : " + selected.rangeCount + ", " + selected.toString().length);
}

// 监控选择文字状态
document.addEventListener("selectionchange", function() {
  updateSelection();
}, false);

document.addEventListener("DOMContentLoaded", function() {
  //插入html
  appendHTML();

  //显示“下载全部”的对象
  _bIsShowdownloadalldiv && (dom(".email_loadall").style.display = "");
  //初始化语音播放器
  AudioPlayer.init();
  //初始化群邮件投票
  initGroupVote();
  //自动识别
  autoFormat();
  //console.log(navigator.userAgent + " - " + document.body.innerHTML);
  //开始缩放
  _startFixScale();
  domContentReady = true;
  App.finishAll();
}, false);

window.addEventListener("load", function() {
  _bIsOnLoad = true;
}, false);

// 初始化scale
if (_isScale())  {
  // 究竟是否需要？ 除了 contentWidth + 30 没有被设置
  _setViewport(_nCurScale, _nRestoreBodyScrollWidth);
}

//加速显示，优先尝试
updateTitleBar();

//提前调完成
//这个时机较快，优先隐藏滚动条
App.hideLoadingTip();//App.finish();
})();