.class public interface abstract Lcom/alipay/fc/custprod/biz/service/gw/api/register/BindCardRpcManager;
.super Ljava/lang/Object;
.source "BindCardRpcManager.java"


# virtual methods
.method public abstract queryBindedCardList()Lcom/alipay/fc/custprod/biz/service/gw/result/register/BindedCardsQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.bindcard.queryBindedCardList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryBindingCardList()Lcom/alipay/fc/custprod/biz/service/gw/result/register/BindingCardsQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.bindcard.queryBindingCardList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract signAgreementWithThirdPartVerify(Lcom/alipay/fc/custprod/biz/service/gw/request/register/CardBindWithThirdPartVerifyReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/register/CardBindWithThirdPartVerifyResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.bindcard.thirdpartverify.signAgreement"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract signBindCardAgreement2V2(Lcom/alipay/fc/custprod/biz/service/gw/request/register/CardBindReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/register/SignBindCardAgreementResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.bindcard.signBindCardAgreement.v2"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract unbindCardAgreement(Lcom/alipay/fc/custprod/biz/service/gw/request/register/CardUnbindReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/register/UnbindCardAgreementResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.bindcard.unbindCardAgreement"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract updateCardArrangement(Lcom/alipay/fc/custprod/biz/service/gw/model/CardArragementInfo;)Lcom/alipay/fc/custprod/biz/service/gw/result/register/AdjustCardAgreementResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.bindcard.updateCardArrangement"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
