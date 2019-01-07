.class public final Ljfu;
.super Ljava/lang/Object;
.source "LoginUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 56
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v1, "params":Landroid/os/Bundle;
    const-string/jumbo v2, "sessionId"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-class v2, Lcom/mybank/android/phone/common/service/login/LoginService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mybank/android/phone/common/service/login/LoginService;

    .line 60
    .local v0, "loginService":Lcom/mybank/android/phone/common/service/login/LoginService;
    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/service/login/LoginService;->doCallback(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "loginResult"    # Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;

    .prologue
    .line 25
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 26
    .local v2, "params":Landroid/os/Bundle;
    const-string/jumbo v5, "sessionId"

    iget-object v6, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v5, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->mybankRoleInfo:Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->mybankRoleInfo:Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;

    iget-object v5, v5, Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;->roleId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 28
    const-string/jumbo v5, "roleId"

    iget-object v6, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->mybankRoleInfo:Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;

    iget-object v6, v6, Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;->roleId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    iget-object v5, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->extendMap:Ljava/util/Map;

    if-eqz v5, :cond_1

    .line 32
    iget-object v5, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->extendMap:Ljava/util/Map;

    const-string/jumbo v6, "AccountInfo"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    .local v0, "alipayLoginId":Ljava/lang/String;
    const-string/jumbo v5, "AccountInfo"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v5, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->extendMap:Ljava/util/Map;

    const-string/jumbo v6, "siteId"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 36
    .local v3, "sitId":Ljava/lang/String;
    const-string/jumbo v5, "siteId"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .end local v0    # "alipayLoginId":Ljava/lang/String;
    .end local v3    # "sitId":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v4

    .line 40
    .local v4, "tokenResult":Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;
    if-eqz v4, :cond_2

    .line 41
    const-string/jumbo v5, "clientKey"

    iget-object v6, v4, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_2
    const-class v5, Lcom/mybank/android/phone/common/service/login/LoginService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mybank/android/phone/common/service/login/LoginService;

    .line 51
    .local v1, "loginService":Lcom/mybank/android/phone/common/service/login/LoginService;
    invoke-virtual {v1, v2}, Lcom/mybank/android/phone/common/service/login/LoginService;->doCallback(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method
