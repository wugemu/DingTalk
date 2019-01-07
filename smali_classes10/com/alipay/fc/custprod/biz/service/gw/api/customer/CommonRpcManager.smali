.class public interface abstract Lcom/alipay/fc/custprod/biz/service/gw/api/customer/CommonRpcManager;
.super Ljava/lang/Object;
.source "CommonRpcManager.java"


# virtual methods
.method public abstract queryBankCardInfoByRoleId(Liio;)Lcom/alipay/fc/custprod/biz/service/gw/result/customer/MyBankCardResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.common.queryBankCardInfoByRoleId "
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract sendSmsCode(Lcom/alipay/fc/custprod/biz/service/gw/request/customer/SmsCodeSendReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/customer/SmsCodeSendResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.common.sendSmsCode"
    .end annotation
.end method

.method public abstract uploadIdCardImg(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/fc/custprod/biz/service/gw/result/customer/CertInfoUploadResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.common.uploadIdCardImg"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract validLoginPassword(Lcom/alipay/fc/custprod/biz/service/gw/request/customer/LoginPasswordValidReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.common.validLoginPassword "
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract validSmsCode(Lcom/alipay/fc/custprod/biz/service/gw/request/customer/SmsCodeValidReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/customer/SmsCodeSendResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.common.validSmsCode"
    .end annotation
.end method

.method public abstract verifyGesturePassword(Lcom/alipay/fc/custprod/biz/service/gw/request/customer/LoginPasswordValidReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.common.verifyGesturePassword"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
