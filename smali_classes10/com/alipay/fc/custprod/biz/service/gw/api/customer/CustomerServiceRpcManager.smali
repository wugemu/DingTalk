.class public interface abstract Lcom/alipay/fc/custprod/biz/service/gw/api/customer/CustomerServiceRpcManager;
.super Ljava/lang/Object;
.source "CustomerServiceRpcManager.java"


# virtual methods
.method public abstract auditFace(Lcom/alipay/fc/custprod/biz/service/gw/request/auth/ManualFaceAuditReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/customer/CustomerFaceAuditResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.customerService.auditFace"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract certImgUnlockCustomer(Lcom/alipay/fc/custprod/biz/service/gw/request/customer/UnlockCustomerReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/customer/CustomerUnlockResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.customerService.unlockCustomer"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract lockCustomer(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.customerService.lockCustomer"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract unlockCustomerByBisIDCard(Lcom/alipay/fc/custprod/biz/service/gw/request/customer/BisIDCardUnlockReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/customer/CustomerUnlockResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.customerService.unlockCustomerByBisIDCard"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract unlockCustomerByManualAudit(Lcom/alipay/fc/custprod/biz/service/gw/request/customer/ManualAuditUnlockReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/customer/CustomerUnlockResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.customerService.unlockCustomerByManualAudit"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
