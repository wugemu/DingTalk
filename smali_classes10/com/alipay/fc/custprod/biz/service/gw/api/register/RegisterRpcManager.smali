.class public interface abstract Lcom/alipay/fc/custprod/biz/service/gw/api/register/RegisterRpcManager;
.super Ljava/lang/Object;
.source "RegisterRpcManager.java"


# virtual methods
.method public abstract register(Lcom/alipay/fc/custprod/biz/service/gw/request/register/RegisterReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/register/RegisterResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.register.register"
    .end annotation
.end method

.method public abstract registerInfoChange(Lcom/alipay/fc/custprod/biz/service/gw/request/register/RegisterReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/register/RegisterResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.register.registerInfoChange"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract registerV2(Lcom/alipay/fc/custprod/biz/service/gw/request/register/RegisterReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/register/RegisterResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.register.registerV2"
    .end annotation
.end method
