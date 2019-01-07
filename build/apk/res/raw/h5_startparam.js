!function(){function t(){var t=n.getAttribute("content");console.log(t),AlipayJSBridge.call("setStartParam",{content:t},function(t){console.log(t)})}var n=document.querySelector('meta[name="Alipay:startParam"]');n&&function(t){window.AlipayJSBridge?t&&t():document.addEventListener("AlipayJSBridgeReady",t,!1)}(function(){t()})}();
// do not modify
