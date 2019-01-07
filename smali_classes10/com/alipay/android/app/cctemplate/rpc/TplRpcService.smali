.class public interface abstract Lcom/alipay/android/app/cctemplate/rpc/TplRpcService;
.super Ljava/lang/Object;
.source "TplRpcService.java"


# virtual methods
.method public abstract querySyncTpls(Lcom/alipay/mobiletms/common/service/facade/rpc/pb/Request;)Lcom/alipay/mobiletms/common/service/facade/rpc/pb/Response;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.mobiletms.querySyncTpls"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method

.method public abstract queryTemplate(Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReq;)Lcom/alipay/android/app/cctemplate/rpc/model/TemplateRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.mobiletms.queryTemplate"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method
