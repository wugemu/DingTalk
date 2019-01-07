.class public final Ljfd;
.super Ljfc;
.source "AuthLoginFacade.java"


# direct methods
.method public constructor <init>(Ljfe;)V
    .locals 0
    .param p1, "iRXRequest"    # Ljfe;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljfc;-><init>(Ljfe;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Llgs;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authCode"    # Ljava/lang/String;
    .param p4, "ctuVerifyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Llgs",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 38
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AlipayTrustLoginReq;

    invoke-direct {v6}, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AlipayTrustLoginReq;-><init>()V

    .line 39
    .local v6, "request":Lcom/alipay/fc/custprod/biz/service/gw/request/login/AlipayTrustLoginReq;
    iput-object p2, v6, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AlipayTrustLoginReq;->authCode:Ljava/lang/String;

    .line 40
    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AlipayTrustLoginReq;->keepOnline:Z

    .line 41
    move-object/from16 v0, p3

    iput-object v0, v6, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AlipayTrustLoginReq;->extendMap:Ljava/util/Map;

    .line 42
    move-object/from16 v0, p4

    iput-object v0, v6, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AlipayTrustLoginReq;->ctuVerifyId:Ljava/lang/String;

    .line 43
    const-string/jumbo v8, "DINGTALK_ALIPAY_TRUST_LOGIN"

    iput-object v8, v6, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AlipayTrustLoginReq;->loginScene:Ljava/lang/String;

    .line 44
    const-string/jumbo v8, "7"

    iput-object v8, v6, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AlipayTrustLoginReq;->site:Ljava/lang/String;

    .line 46
    const-class v8, Lcom/mybank/android/phone/common/service/login/LoginService;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mybank/android/phone/common/service/login/LoginService;

    .line 47
    .local v4, "loginService":Lcom/mybank/android/phone/common/service/login/LoginService;
    iget-object v8, v6, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AlipayTrustLoginReq;->extendMap:Ljava/util/Map;

    sget-object v9, Ljfb;->b:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/mybank/android/phone/common/service/login/LoginService;->getAccountInfo()Lcom/mybank/android/phone/common/service/login/AccountInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->getCorpId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v8, v6, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AlipayTrustLoginReq;->extendMap:Ljava/util/Map;

    sget-object v9, Ljfb;->a:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/mybank/android/phone/common/service/login/LoginService;->getAccountInfo()Lcom/mybank/android/phone/common/service/login/AccountInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {v4}, Lcom/mybank/android/phone/common/service/login/LoginService;->getAccountInfo()Lcom/mybank/android/phone/common/service/login/AccountInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->getCorpId()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "corpId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 52
    iget-object v8, v6, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AlipayTrustLoginReq;->extendMap:Ljava/util/Map;

    sget-object v9, Ljfb;->b:Ljava/lang/String;

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    invoke-virtual {v4}, Lcom/mybank/android/phone/common/service/login/LoginService;->getAccountInfo()Lcom/mybank/android/phone/common/service/login/AccountInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "code":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 57
    iget-object v8, v6, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AlipayTrustLoginReq;->extendMap:Ljava/util/Map;

    sget-object v9, Ljfb;->a:Ljava/lang/String;

    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_1
    invoke-virtual {v4}, Lcom/mybank/android/phone/common/service/login/LoginService;->getAccountInfo()Lcom/mybank/android/phone/common/service/login/AccountInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->getQrCode()Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "qrCode":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 62
    iget-object v8, v6, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AlipayTrustLoginReq;->extendMap:Ljava/util/Map;

    sget-object v9, Ljfb;->c:Ljava/lang/String;

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->getBioInfo()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "info":Ljava/lang/String;
    iget-object v8, v6, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AlipayTrustLoginReq;->extendMap:Ljava/util/Map;

    sget-object v9, Ljfb;->d:Ljava/lang/String;

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v7

    .line 69
    .local v7, "tokenResult":Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;
    if-eqz v7, :cond_3

    .line 70
    iget-object v8, v7, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    iput-object v8, v6, Lcom/alipay/fc/custprod/biz/service/gw/request/login/AlipayTrustLoginReq;->clientKey:Ljava/lang/String;

    .line 73
    :cond_3
    iget-object v8, p0, Ljfd;->a:Ljfe;

    const-class v9, Lcom/alipay/fc/custprod/biz/service/gw/api/login/LoginRpcManager;

    const-string/jumbo v10, "alipayLogin"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-interface {v8, v9, v10, v11}, Ljfe;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Llgs;

    move-result-object v8

    return-object v8
.end method
