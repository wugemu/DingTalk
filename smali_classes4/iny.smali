.class public interface abstract Liny;
.super Ljava/lang/Object;
.source "H5BridgeContext.java"


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
.end method

.method public abstract sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method public abstract sendBridgeResultWithCallbackKept(Lcom/alibaba/fastjson/JSONObject;)Z
.end method

.method public abstract sendError(ILjava/lang/String;)V
.end method

.method public abstract sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z
.end method

.method public abstract sendNoRigHtToInvoke()V
.end method

.method public abstract sendSuccess()V
.end method

.method public abstract sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V
.end method
