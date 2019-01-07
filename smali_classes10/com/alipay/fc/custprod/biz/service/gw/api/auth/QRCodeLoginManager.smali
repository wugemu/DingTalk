.class public interface abstract Lcom/alipay/fc/custprod/biz/service/gw/api/auth/QRCodeLoginManager;
.super Ljava/lang/Object;
.source "QRCodeLoginManager.java"


# virtual methods
.method public abstract loginByQRCode(Lcom/alipay/fc/custprod/biz/service/gw/request/auth/QRCodeLoginReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/auth/QRCodeLoginResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.auth.loginByQRCode"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract loginByQRCodeCheck(Lcom/alipay/fc/custprod/biz/service/gw/request/auth/QRCodeLoginReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/auth/QRCodeLoginCheckResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.auth.loginByQRCodeCheck"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract timeOutLogin(Lcom/alipay/fc/custprod/biz/service/gw/request/auth/QRCodeLoginReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/auth/QRCodeLoginResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.auth.timeOutLogin"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract timeOutLoginCheck(Lcom/alipay/fc/custprod/biz/service/gw/request/auth/QRCodeLoginReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/auth/QRCodeLoginCheckResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.auth.timeOutLoginCheck"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
