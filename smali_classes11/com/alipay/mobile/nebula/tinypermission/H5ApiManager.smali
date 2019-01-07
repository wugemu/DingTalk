.class public interface abstract Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
.super Ljava/lang/Object;
.source "H5ApiManager.java"


# static fields
.field public static final EVENT_List:Ljava/lang/String; = "EVENT_List"

.field public static final Enable_Proxy:Ljava/lang/String; = "Enable_Proxy"

.field public static final HttpLink_SubResMimeList:Ljava/lang/String; = "HttpLink_SubResMimeList"

.field public static final JSAPI_List:Ljava/lang/String; = "JSAPI_List"

.field public static final JSAPI_SP_Config:Ljava/lang/String; = "JSAPI_SP_Config"

.field public static final Valid_SubResMimeList:Ljava/lang/String; = "Valid_SubResMimeList"

.field public static final Webview_Config:Ljava/lang/String; = "Webview_Config"

.field public static final allowedDomain:Ljava/lang/String; = "allowedDomain"

.field public static final api_permission:Ljava/lang/String; = "api_permission"

.field public static final httpRequest:Ljava/lang/String; = "httpRequest"

.field public static final validDomain:Ljava/lang/String; = "validDomain"


# virtual methods
.method public abstract clear(Ljava/lang/String;)V
.end method

.method public abstract getLoadingViewFromTiny(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)Lcom/alipay/mobile/framework/loading/LoadingView;
.end method

.method public abstract getWebViewTag()Ljava/lang/String;
.end method

.method public abstract hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liop;)Z
.end method

.method public abstract hasPermissionFile(Ljava/lang/String;Liop;)Z
.end method

.method public abstract hasPermissionOnIframe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liop;)Z
.end method

.method public abstract hasPermissionOnScheme(Ljava/lang/String;Ljava/lang/String;Liop;)Z
.end method

.method public abstract hasWebARCameraPermission(Ljava/lang/String;Liop;Liou;)V
.end method

.method public abstract hasWebARPermission(Ljava/lang/String;Ljava/lang/String;Liop;)Z
.end method

.method public abstract httpRequestShouldUseSpdy(Ljava/lang/String;Liop;Ljava/lang/String;)Z
.end method

.method public abstract put(Ljava/lang/String;[B)V
.end method

.method public abstract putJson(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
.end method

.method public abstract setIfNeedUpDownAnimWithoutAppinfo(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
.end method

.method public abstract setPermission(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Liny;ZLiop;)Z
.end method

.method public abstract shouldInterceptJSApiCall(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Liny;Liop;)I
.end method
