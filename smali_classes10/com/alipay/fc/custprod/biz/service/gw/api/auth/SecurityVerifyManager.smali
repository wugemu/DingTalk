.class public interface abstract Lcom/alipay/fc/custprod/biz/service/gw/api/auth/SecurityVerifyManager;
.super Ljava/lang/Object;
.source "SecurityVerifyManager.java"


# virtual methods
.method public abstract getVerifyId(Liin;)Lcom/alipay/fc/custprod/biz/service/gw/result/auth/SecurityVerifyResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.auth.getVerifyId"
    .end annotation
.end method

.method public abstract verifyIdCheck(Liin;)Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.auth.verifyIdCheck"
    .end annotation
.end method
