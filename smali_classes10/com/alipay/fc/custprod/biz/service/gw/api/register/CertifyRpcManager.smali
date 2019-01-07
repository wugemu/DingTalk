.class public interface abstract Lcom/alipay/fc/custprod/biz/service/gw/api/register/CertifyRpcManager;
.super Ljava/lang/Object;
.source "CertifyRpcManager.java"


# virtual methods
.method public abstract applyCertify(Ljava/lang/String;)Lcom/alipay/fc/custprod/biz/service/gw/result/register/CertifyApplyResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.certify.applyCertify"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract uploadCertifyImg(Lcom/alipay/fc/custprod/biz/service/gw/request/register/CertifyImgUploadReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.certify.uploadCertifyImg"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract uploadFaceInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.certify.uploadFaceInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract validateOrgCertInfo(Lcom/alipay/fc/custprod/biz/service/gw/result/register/OrgCertInfo;)Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.certify.validateOrgCertInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
