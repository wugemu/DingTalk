.class public Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;
.super Ljava/lang/Object;
.source "DefaultAppProvider.java"

# interfaces
.implements Lcom/ali/user/enterprise/base/provider/IDataProvider;


# instance fields
.field protected TTID:Ljava/lang/String;

.field protected appKey:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field protected envType:I

.field protected mLogService:Lcom/ali/user/enterprise/base/log/LogService;

.field protected mLoginService:Lcom/ali/user/enterprise/base/rpc/LoginService;

.field protected mThreadService:Lcom/ali/user/enterprise/base/coordinator/ThreadService;

.field protected maxSessionSize:I

.field protected site:I

.field protected useSeparateThreadPool:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->envType:I

    .line 37
    const/16 v0, 0x14

    iput v0, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->maxSessionSize:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->site:I

    return-void
.end method


# virtual methods
.method public getAppkey()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 63
    iget-object v1, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->appKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->getEnvType()I

    move-result v0

    .line 68
    .local v0, "evnType":I
    packed-switch v0, :pswitch_data_0

    .line 76
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->getAppKey(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->appKey:Ljava/lang/String;

    .line 80
    .end local v0    # "evnType":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->appKey:Ljava/lang/String;

    return-object v1

    .line 71
    .restart local v0    # "evnType":I
    :pswitch_0
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->getAppKey(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->appKey:Ljava/lang/String;

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getEnvType()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->envType:I

    return v0
.end method

.method public getLogService()Lcom/ali/user/enterprise/base/log/LogService;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->mLogService:Lcom/ali/user/enterprise/base/log/LogService;

    return-object v0
.end method

.method public getLoginService()Lcom/ali/user/enterprise/base/rpc/LoginService;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->mLoginService:Lcom/ali/user/enterprise/base/rpc/LoginService;

    return-object v0
.end method

.method public getMaxSessionSize()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->maxSessionSize:I

    return v0
.end method

.method public getSite()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->site:I

    return v0
.end method

.method public getTTID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->TTID:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadService()Lcom/ali/user/enterprise/base/coordinator/ThreadService;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->mThreadService:Lcom/ali/user/enterprise/base/coordinator/ThreadService;

    return-object v0
.end method

.method public isAccountChangeDegrade()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->appKey:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->context:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public setEnvType(I)V
    .locals 0
    .param p1, "envType"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->envType:I

    .line 106
    return-void
.end method

.method public setLogService(Lcom/ali/user/enterprise/base/log/LogService;)V
    .locals 0
    .param p1, "service"    # Lcom/ali/user/enterprise/base/log/LogService;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->mLogService:Lcom/ali/user/enterprise/base/log/LogService;

    .line 146
    return-void
.end method

.method public setLoginService(Lcom/ali/user/enterprise/base/rpc/LoginService;)V
    .locals 0
    .param p1, "service"    # Lcom/ali/user/enterprise/base/rpc/LoginService;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->mLoginService:Lcom/ali/user/enterprise/base/rpc/LoginService;

    .line 136
    return-void
.end method

.method public setMaxSessionSize(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->maxSessionSize:I

    .line 164
    return-void
.end method

.method public setSite(I)V
    .locals 0
    .param p1, "site"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->site:I

    .line 111
    return-void
.end method

.method public setTTID(Ljava/lang/String;)V
    .locals 0
    .param p1, "ttid"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->TTID:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setThreadService(Lcom/ali/user/enterprise/base/coordinator/ThreadService;)V
    .locals 0
    .param p1, "service"    # Lcom/ali/user/enterprise/base/coordinator/ThreadService;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->mThreadService:Lcom/ali/user/enterprise/base/coordinator/ThreadService;

    .line 156
    return-void
.end method

.method public setUseSeparateThreadPool(Z)V
    .locals 0
    .param p1, "useSeparateThreadPool"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->useSeparateThreadPool:Z

    .line 126
    return-void
.end method

.method public useSeparateThreadPool()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->useSeparateThreadPool:Z

    return v0
.end method
