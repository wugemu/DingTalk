.class public interface abstract Lcom/alipay/fc/custprod/biz/service/gw/api/login/LoginRpcManager;
.super Ljava/lang/Object;
.source "LoginRpcManager.java"


# virtual methods
.method public abstract alipayLogin(Lcom/alipay/fc/custprod/biz/service/gw/request/login/AlipayTrustLoginReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.login.alipayLogin"
    .end annotation
.end method

.method public abstract autoLogin(Lcom/alipay/fc/custprod/biz/service/gw/request/login/AutoLoginReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.login.autoLogin"
    .end annotation
.end method

.method public abstract fakeLogin(Lcom/alipay/fc/custprod/biz/service/gw/request/auth/FakeLoginReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.login.fakeLogin"
    .end annotation
.end method

.method public abstract generateAuthCode(Lcom/alipay/fc/custprod/biz/service/gw/request/login/GenerateAuthCodeReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/login/GenerateAuthCodeResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.login.generateAuthCode"
    .end annotation
.end method
