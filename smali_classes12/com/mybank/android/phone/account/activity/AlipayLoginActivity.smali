.class public Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;
.super Lcom/mybank/android/phone/common/component/custom/CustomActivity;
.source "AlipayLoginActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/mybank/android/phone/common/component/custom/CustomActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;)Llhg;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;->e:Llhg;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 30
    invoke-super {p0, p1}, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1035
    invoke-virtual {p0}, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-static {v0, v1}, Ljfr;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1036
    invoke-static {}, Ljfu;->a()V

    .line 1037
    const-string/jumbo v0, "http://www.alipay.com"

    invoke-static {p0, v0}, Ljfr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0}, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;->finish()V

    .line 1069
    :cond_0
    new-instance v0, Lcom/alipay/fc/custprod/biz/service/gw/request/login/GenerateAuthCodeReq;

    invoke-direct {v0}, Lcom/alipay/fc/custprod/biz/service/gw/request/login/GenerateAuthCodeReq;-><init>()V

    .line 1070
    const-string/jumbo v1, "dingtalk://alipayAccount"

    iput-object v1, v0, Lcom/alipay/fc/custprod/biz/service/gw/request/login/GenerateAuthCodeReq;->returnUrl:Ljava/lang/String;

    .line 1072
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v1

    .line 1073
    if-eqz v1, :cond_1

    .line 1074
    iget-object v1, v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/fc/custprod/biz/service/gw/request/login/GenerateAuthCodeReq;->clientKey:Ljava/lang/String;

    .line 1076
    :cond_1
    const-string/jumbo v1, "DINGTALK_ALIPAY_TRUST_LOGIN"

    iput-object v1, v0, Lcom/alipay/fc/custprod/biz/service/gw/request/login/GenerateAuthCodeReq;->loginScene:Ljava/lang/String;

    .line 1077
    const-class v1, Lcom/alipay/fc/custprod/biz/service/gw/api/login/LoginRpcManager;

    const-string/jumbo v2, "generateAuthCode"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Llgs;

    move-result-object v0

    new-instance v1, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity$3;

    invoke-direct {v1, p0}, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity$3;-><init>(Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;)V

    invoke-virtual {v0, v1}, Llgs;->a(Llhk;)Llgs;

    move-result-object v0

    .line 1040
    new-instance v1, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity$1;

    invoke-direct {v1, p0}, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity$1;-><init>(Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;)V

    new-instance v2, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity$2;

    invoke-direct {v2, p0}, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity$2;-><init>(Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;)V

    invoke-virtual {v0, v1, v2}, Llgs;->a(Llhg;Llhg;)Llgz;

    .line 1063
    const-class v0, Lcom/mybank/android/phone/common/service/api/DeviceService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mybank/android/phone/common/service/api/DeviceService;

    .line 1064
    invoke-virtual {v0, v4}, Lcom/mybank/android/phone/common/service/api/DeviceService;->uploadDeviceInfo(Z)V

    .line 32
    return-void
.end method
