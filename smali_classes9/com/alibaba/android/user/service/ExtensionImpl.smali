.class public Lcom/alibaba/android/user/service/ExtensionImpl;
.super Lcom/alibaba/wukong/auth/AuthExtension;
.source "ExtensionImpl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/alibaba/wukong/auth/AuthExtension;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/user/service/ExtensionImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/service/ExtensionImpl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/android/user/service/ExtensionImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected configSwitch(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .line 64
    .restart local p2    # "defaultValue":Z
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method public defaultServerURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "lws://lws.dingtalk.com:443"

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public fixedServerURI()Ljava/net/URI;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 27
    sget-object v0, Lcom/alibaba/android/user/devset/DevSettingActivity;->v:Ljava/lang/String;

    .line 28
    .local v0, "uri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 31
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fixedShortServerURI()Ljava/net/URI;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 35
    sget-object v0, Lcom/alibaba/android/user/devset/DevSettingActivity;->w:Ljava/lang/String;

    .line 36
    .local v0, "uri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 39
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDNSForHttp()Lcom/laiwang/protocol/http/DNS;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/alibaba/android/user/service/ExtensionImpl$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/service/ExtensionImpl$1;-><init>(Lcom/alibaba/android/user/service/ExtensionImpl;)V

    return-object v0
.end method

.method public mainOrgId()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 72
    :try_start_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 73
    .local v1, "orgEmployee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_0

    .line 74
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1    # "orgEmployee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :goto_0
    return-wide v2

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
