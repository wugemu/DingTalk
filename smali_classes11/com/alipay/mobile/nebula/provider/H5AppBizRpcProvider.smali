.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;
.super Ljava/lang/Object;
.source "H5AppBizRpcProvider.java"


# virtual methods
.method public abstract app(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract handlerPKgJson(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
.end method

.method public abstract rpcCall(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Ljava/lang/String;
.end method
