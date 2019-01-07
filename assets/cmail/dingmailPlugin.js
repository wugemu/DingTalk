/**
 *
 * @authors Your Name (you@example.org)
 * @date    2017-02-14 17:48:29
 * @version $Id$
 */


var dm_showBtns=function(){
	var cid,mid,name,content;
	var btns=document.querySelectorAll('.at_msg_btn_wrap'),
		len=btns.length;
	if(len){
		for(var i=0;i<len;i++){
			btns[i].style.display='block';
		}
	}

	var at_btns=document.querySelectorAll('.at_btn');
	var ding_comfirm=document.querySelectorAll('.ding_comfirm');


	if(at_btns){
		dm_bindEvent(at_btns,function(e){
			var root_ele=e.target.parentNode.parentNode;
			var ele=root_ele.querySelector('.at_reply_info');
			var data=dm_getInfo(ele);
			cid=data.cid;
			mid=data.mid;
			name=root_ele.querySelector('.at_msg_from_name').innerHTML;
			content=root_ele.querySelector('.at_msg_content_text_hidden').innerHTML;
			jsBridge.postNotification('dm_backtoSession', {cid: cid, mid: mid,name:name,content:content});
		});
	}

	if(ding_comfirm){
		dm_bindEvent(ding_comfirm,function(e){
			var root_ele=e.target.parentNode.parentNode;
			var ele=root_ele.querySelector('.ding_reply_info');
			var data=dm_getInfo(ele);
			var send_data={
				dingid:data.dingid
			};
			jsBridge.postNotification('dm_dingComfirm',send_data);
		})
	}
}

function dm_getInfo(ele){
	var info_ele= typeof ele == 'string' ? document.querySelector('.'+ele) : ele;
	if(info_ele){
		var info_str=info_ele.id;
		info_arr=info_str.split(',');
		var info={};
		info_arr.forEach(function(ele){
			var unit=ele.split(' ');
			info[unit[0]]=unit[1];
		})
		return info;
	}
}

function dm_bindEvent(nodeList,fn){
	var len=nodeList.length;
	for(var i=0;i<len;i++){
		nodeList[i].onclick=fn;
	}
}

document.getElementById('toMove').style.display='none';
var info=dm_getInfo('dingmail_uid');

var client_id = -1;

function setClientId(cid) {
    client_id = cid;
    if(info && info.uid == client_id) {
		dm_showBtns();
	}
}

function getNotificationObject(nid) {
    var result = jsBridge.popNotificationObject(nid);
    sendResultToAndroid(result);
}

function sendResultToAndroid(res) {
	window.cmailBridge.onReceiveResult(res);
}