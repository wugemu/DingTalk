.class public final Lcom/alibaba/wukong/auth/AuthService;
.super Ljava/lang/Object;
.source "AuthService.java"


# static fields
.field public static final VERSION_MODULE:Ljava/lang/String; = "au"

.field private static sInstance:Lcom/alibaba/wukong/auth/AuthService;


# instance fields
.field private authProvider:Lcom/alibaba/wukong/auth/g;

.field public mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkInitialize()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "init should be invoked first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    return-void
.end method

.method private doInit(Landroid/content/Context;ZLcom/laiwang/protocol/android/Extension;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useDefault"    # Z
    .param p3, "extension"    # Lcom/laiwang/protocol/android/Extension;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->mContext:Landroid/content/Context;

    .line 88
    .local v0, "ctx":Landroid/content/Context;
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/doraemon/Doraemon;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    invoke-static {}, Liga;->a()Liga;

    move-result-object v2

    .line 1025
    iput-object v0, v2, Liga;->a:Landroid/content/Context;

    .line 93
    new-instance v2, Lcom/alibaba/wukong/auth/g;

    invoke-direct {v2, v0}, Lcom/alibaba/wukong/auth/g;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    .line 95
    new-instance v2, Lcom/alibaba/wukong/auth/e;

    invoke-direct {v2, v0}, Lcom/alibaba/wukong/auth/e;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-static {}, Lcom/alibaba/wukong/auth/b;->a()Lcom/alibaba/wukong/auth/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/auth/b;->init()V

    .line 98
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/AuthService;->initStatistics()V

    .line 100
    if-eqz p2, :cond_0

    .line 101
    invoke-static {v0}, Lcom/laiwang/protocol/android/LWP;->initialize(Landroid/content/Context;)V

    .line 105
    :goto_1
    const-string/jumbo v2, "/push/kickout"

    new-instance v3, Lcom/alibaba/wukong/auth/h;

    iget-object v4, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    invoke-direct {v3, v4}, Lcom/alibaba/wukong/auth/h;-><init>(Lcom/alibaba/wukong/auth/g;)V

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/LWP;->subscribe(Ljava/lang/String;Lcom/laiwang/protocol/android/Receive;)V

    .line 106
    const-string/jumbo v2, "/push/kickoutV2"

    new-instance v3, Lcom/alibaba/wukong/auth/i;

    iget-object v4, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    invoke-direct {v3, v4}, Lcom/alibaba/wukong/auth/i;-><init>(Lcom/alibaba/wukong/auth/g;)V

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/LWP;->subscribe(Ljava/lang/String;Lcom/laiwang/protocol/android/Receive;)V

    .line 108
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/AuthService;->initPush()V

    .line 109
    return-void

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WKLog"

    const-string/jumbo v3, "[IM] Doraemon init error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {v0, p3}, Lcom/laiwang/protocol/android/LWP;->initializeWithoutService(Landroid/content/Context;Lcom/laiwang/protocol/android/Extension;)V

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/wukong/auth/AuthService;
    .locals 2

    .prologue
    .line 60
    const-class v1, Lcom/alibaba/wukong/auth/AuthService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/auth/AuthService;->sInstance:Lcom/alibaba/wukong/auth/AuthService;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/alibaba/wukong/auth/AuthService;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/AuthService;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/auth/AuthService;->sInstance:Lcom/alibaba/wukong/auth/AuthService;

    .line 63
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/auth/AuthService;->sInstance:Lcom/alibaba/wukong/auth/AuthService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initPush()V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/alibaba/wukong/auth/ay;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/ay;-><init>()V

    .line 116
    new-instance v0, Lcom/alibaba/wukong/auth/aw;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/aw;-><init>()V

    .line 119
    new-instance v0, Lcom/alibaba/wukong/auth/at;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/at;-><init>()V

    .line 122
    new-instance v0, Lcom/alibaba/wukong/auth/bc;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/bc;-><init>()V

    .line 125
    new-instance v0, Lcom/alibaba/wukong/auth/ao;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/ao;-><init>()V

    .line 126
    new-instance v0, Lcom/alibaba/wukong/auth/c;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/c;-><init>()V

    .line 127
    new-instance v0, Lcom/alibaba/wukong/auth/k;

    iget-object v1, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    invoke-direct {v0, v1}, Lcom/alibaba/wukong/auth/k;-><init>(Lcom/alibaba/wukong/auth/g;)V

    .line 128
    return-void
.end method

.method private initStatistics()V
    .locals 2

    .prologue
    .line 131
    const-string/jumbo v0, "Login"

    const-string/jumbo v1, "totalTime"

    invoke-static {v0, v1}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method


# virtual methods
.method public final authDevice(Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/AuthService;->checkInitialize()V

    .line 307
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/auth/g;->b(Lcom/alibaba/wukong/Callback;)V

    .line 309
    return-void
.end method

.method public final autoLogin(J)V
    .locals 1
    .param p1, "openId"    # J

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/AuthService;->checkInitialize()V

    .line 226
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/wukong/auth/g;->autoLogin(J)V

    .line 227
    return-void
.end method

.method final getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    .line 206
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/g;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method final getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/g;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string/jumbo v0, "dingding"

    return-object v0
.end method

.method public final getOpenId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    if-nez v0, :cond_0

    .line 185
    const-wide/16 v0, 0x0

    .line 186
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/g;->getOpenId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/wukong/auth/AuthService;->doInit(Landroid/content/Context;ZLcom/laiwang/protocol/android/Extension;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized initWithoutService(Landroid/content/Context;Lcom/laiwang/protocol/android/Extension;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extension"    # Lcom/laiwang/protocol/android/Extension;

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/wukong/auth/AuthService;->doInit(Landroid/content/Context;ZLcom/laiwang/protocol/android/Extension;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLogin()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/g;->isLogin()Z

    move-result v0

    goto :goto_0
.end method

.method public final kickout(ILjava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/AuthService;->checkInitialize()V

    .line 278
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/wukong/auth/g;->a(ILjava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 279
    return-void
.end method

.method public final latestAuthInfo()Lcom/alibaba/wukong/auth/AuthInfo;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/g;->d()Lcom/alibaba/wukong/auth/d;

    move-result-object v0

    goto :goto_0
.end method

.method public final login(Lcom/alibaba/wukong/auth/ALoginParam;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "param"    # Lcom/alibaba/wukong/auth/ALoginParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/auth/ALoginParam;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/auth/AuthInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/auth/AuthInfo;>;"
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/AuthService;->checkInitialize()V

    .line 258
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/ALoginParam;Lcom/alibaba/wukong/Callback;)V

    .line 259
    return-void
.end method

.method public final login(Lcom/alibaba/wukong/auth/AuthParam;Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .param p1, "param"    # Lcom/alibaba/wukong/auth/AuthParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/auth/AuthParam;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/auth/AuthInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 247
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/auth/AuthInfo;>;"
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/AuthService;->checkInitialize()V

    .line 248
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/AuthParam;ZLcom/alibaba/wukong/Callback;)V

    .line 249
    return-void
.end method

.method public final login(Lcom/alibaba/wukong/auth/LoginParam;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "param"    # Lcom/alibaba/wukong/auth/LoginParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/auth/LoginParam;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/auth/AuthInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 151
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/auth/AuthInfo;>;"
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/AuthService;->checkInitialize()V

    .line 152
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/wukong/auth/g;->login(Lcom/alibaba/wukong/auth/LoginParam;Lcom/alibaba/wukong/Callback;)V

    .line 153
    return-void
.end method

.method public final login(Lcom/alibaba/wukong/auth/TokenParam;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "param"    # Lcom/alibaba/wukong/auth/TokenParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/auth/TokenParam;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/auth/AuthInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/auth/AuthInfo;>;"
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/AuthService;->checkInitialize()V

    .line 288
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/TokenParam;Lcom/alibaba/wukong/Callback;)V

    .line 289
    return-void
.end method

.method public final logout()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/AuthService;->checkInitialize()V

    .line 160
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/auth/g;->c(Z)V

    .line 161
    return-void
.end method

.method final refreshToken()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/auth/g;->a(ZLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final register(Lcom/alibaba/wukong/auth/AuthParam;Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .param p1, "param"    # Lcom/alibaba/wukong/auth/AuthParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/auth/AuthParam;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/auth/AuthInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 236
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/auth/AuthInfo;>;"
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/AuthService;->checkInitialize()V

    .line 237
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/AuthParam;ZLcom/alibaba/wukong/Callback;)V

    .line 238
    return-void
.end method

.method public final setNickname(Ljava/lang/String;)V
    .locals 1
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/auth/g;->setNickname(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final subscribe(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthService;->authProvider:Lcom/alibaba/wukong/auth/g;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/auth/g;->subscribe(Ljava/lang/String;)V

    goto :goto_0
.end method
