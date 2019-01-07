.class public interface abstract Lcom/alipay/bid/common/service/facade/gw/config/FaceClientConfigGwFacade;
.super Ljava/lang/Object;
.source "FaceClientConfigGwFacade.java"


# virtual methods
.method public abstract getFaceClientConfig(Lcom/alipay/bid/common/service/facade/gw/config/model/ClientConfigGwRequest;)Lcom/alipay/bid/common/service/facade/gw/config/model/FaceClientConfigGwResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.customer.face.clientconfig.get"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method
