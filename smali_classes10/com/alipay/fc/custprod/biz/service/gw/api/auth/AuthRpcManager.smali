.class public interface abstract Lcom/alipay/fc/custprod/biz/service/gw/api/auth/AuthRpcManager;
.super Ljava/lang/Object;
.source "AuthRpcManager.java"


# virtual methods
.method public abstract alipayLocalLogin(Lcom/alipay/fc/custprod/biz/service/gw/request/auth/LoginReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/auth/TrustLoginResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.auth.alipayLocalLogin"
    .end annotation
.end method

.method public abstract alipayTrustLogin(Lcom/alipay/fc/custprod/biz/service/gw/request/auth/TrustLoginReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/auth/TrustLoginResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.auth.alipayTrustLogin"
    .end annotation
.end method

.method public abstract alipayTrustLoginBySesssion(Liim;)Lcom/alipay/fc/custprod/biz/service/gw/result/auth/LoginResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.auth.alipayTrustLoginBySesssion"
    .end annotation
.end method

.method public abstract autoLogin(Lcom/alipay/fc/custprod/biz/service/gw/request/auth/LoginReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/auth/LoginResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.auth.autoLogin"
    .end annotation
.end method

.method public abstract fakeLogin(Lcom/alipay/fc/custprod/biz/service/gw/request/auth/FakeLoginReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/auth/LoginResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.auth.fakeLogin"
    .end annotation
.end method

.method public abstract login(Lcom/alipay/fc/custprod/biz/service/gw/request/auth/LoginReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/auth/LoginResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.auth.login"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract login2V2(Lcom/alipay/fc/custprod/biz/service/gw/request/auth/LoginReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/auth/LoginResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.auth.login.v2"
    .end annotation
.end method

.method public abstract logout(Lcom/alipay/fc/custprod/biz/service/gw/result/auth/LogoutReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.auth.logout"
    .end annotation
.end method

.method public abstract shoutaoTrustLogin(Lcom/alipay/fc/custprod/biz/service/gw/request/auth/ShoutaoTrustLoginReq;)Lcom/alipay/fc/custprod/biz/service/gw/result/auth/ShoutaoTrustLoginResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.auth.shoutaoTrustLogin"
    .end annotation
.end method

.method public abstract trustAlipayLogin(Liim;)Lcom/alipay/fc/custprod/biz/service/gw/result/auth/TrustLoginAlipayResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.fc.customer.auth.trustAlipayLogin"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
