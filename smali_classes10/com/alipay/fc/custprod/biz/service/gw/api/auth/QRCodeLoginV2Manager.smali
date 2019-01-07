.class public interface abstract Lcom/alipay/fc/custprod/biz/service/gw/api/auth/QRCodeLoginV2Manager;
.super Ljava/lang/Object;
.source "QRCodeLoginV2Manager.java"


# virtual methods
.method public abstract corporationOrderApprovalLogin(Lcom/alipay/fc/custprod/biz/service/gw/request/auth/QRCodeLoginV2Req;)Lcom/alipay/fc/custprod/biz/service/gw/result/auth/QRCodeLoginV2Result;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.auth.v2.corporationOrderApprovalLogin"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract corporationOrderApprovalLoginCheck(Lcom/alipay/fc/custprod/biz/service/gw/request/auth/QRCodeLoginV2Req;)Lcom/alipay/fc/custprod/biz/service/gw/result/auth/QRCodeLoginCheckV2Result;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.auth.v2.corporationOrderApprovalLoginCheck"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract loginByQRCode(Lcom/alipay/fc/custprod/biz/service/gw/request/auth/QRCodeLoginV2Req;)Lcom/alipay/fc/custprod/biz/service/gw/result/auth/QRCodeLoginV2Result;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.auth.v2.loginByQRCode"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract loginByQRCodeCheck(Lcom/alipay/fc/custprod/biz/service/gw/request/auth/QRCodeLoginV2Req;)Lcom/alipay/fc/custprod/biz/service/gw/result/auth/QRCodeLoginCheckV2Result;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.auth.v2.loginByQRCodeCheck"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
