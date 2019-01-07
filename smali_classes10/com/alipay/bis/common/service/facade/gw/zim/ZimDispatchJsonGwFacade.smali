.class public interface abstract Lcom/alipay/bis/common/service/facade/gw/zim/ZimDispatchJsonGwFacade;
.super Ljava/lang/Object;
.source "ZimDispatchJsonGwFacade.java"


# virtual methods
.method public abstract init(Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;)Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "zoloz.zim.dispatch.init.json"
    .end annotation
.end method

.method public abstract initAntCloud(Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;)Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "com.zoloz.zhubcn.zim.init"
    .end annotation
.end method

.method public abstract validate(Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;)Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "zoloz.zim.dispatch.validate.json"
    .end annotation
.end method

.method public abstract validateAntCloud(Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;)Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "com.zoloz.zhubcn.zim.verify"
    .end annotation
.end method
