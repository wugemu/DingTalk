.class public Liaq;
.super Ljava/lang/Object;
.source "IMContext.java"


# static fields
.field private static c:Liaq;

.field private static m:Landroid/os/Handler;


# instance fields
.field protected a:Landroid/content/Context;

.field public b:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/util/concurrent/Executor;

.field private volatile f:Ljava/util/concurrent/Executor;

.field private volatile g:Ljava/util/concurrent/Executor;

.field private volatile h:Ljava/util/concurrent/Executor;

.field private volatile i:Ljava/util/concurrent/Executor;

.field private volatile j:Ljava/util/concurrent/Executor;

.field private volatile k:Ljava/util/concurrent/Executor;

.field private volatile l:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Liaq;->m:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Liaq;->b:Z

    .line 63
    iput-object v1, p0, Liaq;->e:Ljava/util/concurrent/Executor;

    .line 64
    iput-object v1, p0, Liaq;->f:Ljava/util/concurrent/Executor;

    .line 65
    iput-object v1, p0, Liaq;->g:Ljava/util/concurrent/Executor;

    .line 66
    iput-object v1, p0, Liaq;->h:Ljava/util/concurrent/Executor;

    .line 67
    iput-object v1, p0, Liaq;->i:Ljava/util/concurrent/Executor;

    .line 68
    iput-object v1, p0, Liaq;->j:Ljava/util/concurrent/Executor;

    .line 69
    iput-object v1, p0, Liaq;->k:Ljava/util/concurrent/Executor;

    .line 70
    iput-object v1, p0, Liaq;->l:Ljava/util/concurrent/Executor;

    .line 74
    return-void
.end method

.method public static declared-synchronized a()Liaq;
    .locals 2

    .prologue
    .line 77
    const-class v1, Liaq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Liaq;->c:Liaq;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Liaq;

    invoke-direct {v0}, Liaq;-><init>()V

    sput-object v0, Liaq;->c:Liaq;

    .line 80
    :cond_0
    sget-object v0, Liaq;->c:Liaq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Liaq;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Liaq;

    .prologue
    .line 44
    iget-object v0, p0, Liaq;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Liaq;Z)Z
    .locals 1
    .param p0, "x0"    # Liaq;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Liaq;->b:Z

    return v0
.end method

.method public static b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Liaq;->m:Landroid/os/Handler;

    return-object v0
.end method

.method public static c()Lcom/alibaba/wukong/WKExecutor;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getWKExecutor()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static n()J
    .locals 2

    .prologue
    .line 284
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/auth/AuthService;->latestAuthInfo()Lcom/alibaba/wukong/auth/AuthInfo;

    move-result-object v0

    .line 289
    .local v0, "authInfo":Lcom/alibaba/wukong/auth/AuthInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/alibaba/wukong/auth/AuthInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static p()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 309
    invoke-static {}, Lifo;->a()Lifo;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->VIP_USER:Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    .line 310
    invoke-virtual {v4}, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->getModule()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->VIP_USER:Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    invoke-virtual {v5}, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 309
    invoke-virtual {v3, v4, v5}, Lifo;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 311
    .local v0, "setting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-nez v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v2

    .line 313
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1}, Lieb;->f(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 84
    iput-object p1, p0, Liaq;->a:Landroid/content/Context;

    .line 86
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/wukong/im/context/IMModule;->init(Landroid/content/Context;)V

    .line 87
    invoke-static {}, Liby;->a()Liby;

    move-result-object v1

    .line 1049
    new-instance v2, Liby$1;

    invoke-direct {v2, v1}, Liby$1;-><init>(Liby;)V

    .line 1050
    new-array v3, v7, [Ljava/lang/reflect/Type;

    .line 2065
    iget-object v2, v2, Ljag;->c:Ljava/lang/reflect/Type;

    .line 1050
    aput-object v2, v3, v6

    .line 1051
    const-class v2, Lcom/alibaba/wukong/idl/im/client/IDLMessageStatusService;

    const-string/jumbo v4, "updateToRead"

    new-instance v5, Liby$2;

    invoke-direct {v5, v1, v3}, Liby$2;-><init>(Liby;[Ljava/lang/reflect/Type;)V

    invoke-static {v2, v4, v5}, Lcom/alibaba/wukong/sync/SyncEngine;->addSyncListener(Ljava/lang/Class;Ljava/lang/String;Lcom/alibaba/wukong/sync/SyncListener;)V

    .line 88
    invoke-static {}, Licb;->a()Licb;

    move-result-object v1

    .line 3045
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    const-class v3, Ljava/lang/Long;

    aput-object v3, v2, v7

    .line 3046
    const-class v3, Lcom/alibaba/wukong/idl/im/client/IDLMessageStatusService;

    const-string/jumbo v4, "updateToView"

    new-instance v5, Licb$1;

    invoke-direct {v5, v1, v2}, Licb$1;-><init>(Licb;[Ljava/lang/reflect/Type;)V

    invoke-static {v3, v4, v5}, Lcom/alibaba/wukong/sync/SyncEngine;->addSyncListener(Ljava/lang/Class;Ljava/lang/String;Lcom/alibaba/wukong/sync/SyncListener;)V

    .line 89
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/wukong/sync/SyncEngine;->setThreadPool(Ljava/util/concurrent/Executor;)V

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Liaq;->a:Landroid/content/Context;

    new-instance v2, Liaq$1;

    invoke-direct {v2, p0}, Liaq$1;-><init>(Liaq;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    new-instance v1, Liaq$2;

    const-string/jumbo v2, "CMD_DELETE_DATABASE"

    invoke-direct {v1, p0, v2}, Liaq$2;-><init>(Liaq;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/wukong/WKManager;->registerListener(Lcom/alibaba/wukong/WKListener;)V

    .line 121
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v1

    new-instance v2, Liaq$3;

    invoke-direct {v2, p0}, Liaq$3;-><init>(Liaq;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/bee/DBManager;->registerStatusListener(Lcom/alibaba/bee/DBStatusListener;)V

    .line 127
    return-void
.end method

.method public final d()Ljava/util/concurrent/Executor;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 143
    iget-object v0, p0, Liaq;->l:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 144
    const-class v1, Liaq;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Liaq;->l:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Liab;

    const-string/jumbo v2, "wk_unread_thread_group"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Liab;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Liaq;->l:Ljava/util/concurrent/Executor;

    .line 148
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_1
    iget-object v0, p0, Liaq;->l:Ljava/util/concurrent/Executor;

    return-object v0

    .line 148
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized e()Ljava/util/concurrent/Executor;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Liaq;->e:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Liab;

    const-string/jumbo v1, "wk_single_thread_group"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Liab;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Liaq;->e:Ljava/util/concurrent/Executor;

    .line 158
    :cond_0
    iget-object v0, p0, Liaq;->e:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Ljava/util/concurrent/Executor;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Liaq;->f:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 167
    const-class v1, Liaq;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Liaq;->f:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Liab;

    const-string/jumbo v2, "category_thread_group"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Liab;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Liaq;->f:Ljava/util/concurrent/Executor;

    .line 171
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_1
    iget-object v0, p0, Liaq;->f:Ljava/util/concurrent/Executor;

    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final g()Ljava/util/concurrent/Executor;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 181
    iget-object v0, p0, Liaq;->g:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 182
    const-class v1, Liaq;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v0, p0, Liaq;->g:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Liab;

    const-string/jumbo v2, "conversation_sync_thread_group"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3}, Liab;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Liaq;->g:Ljava/util/concurrent/Executor;

    .line 186
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_1
    iget-object v0, p0, Liaq;->g:Ljava/util/concurrent/Executor;

    return-object v0

    .line 186
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final h()Ljava/util/concurrent/Executor;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 196
    iget-object v0, p0, Liaq;->h:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 197
    const-class v1, Liaq;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-object v0, p0, Liaq;->h:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Liab;

    const-string/jumbo v2, "conversation_rpc_thread_group"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3}, Liab;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Liaq;->h:Ljava/util/concurrent/Executor;

    .line 201
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_1
    iget-object v0, p0, Liaq;->h:Ljava/util/concurrent/Executor;

    return-object v0

    .line 201
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final i()Ljava/util/concurrent/Executor;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 211
    iget-object v0, p0, Liaq;->i:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 212
    const-class v1, Liaq;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-object v0, p0, Liaq;->i:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Liab;

    const-string/jumbo v2, "message_sync_thread_group"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3}, Liab;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Liaq;->i:Ljava/util/concurrent/Executor;

    .line 216
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_1
    iget-object v0, p0, Liaq;->i:Ljava/util/concurrent/Executor;

    return-object v0

    .line 216
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final j()Ljava/util/concurrent/Executor;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 226
    iget-object v0, p0, Liaq;->j:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 227
    const-class v1, Liaq;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-object v0, p0, Liaq;->j:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Liab;

    const-string/jumbo v2, "message_rpc_thread_group"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3}, Liab;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Liaq;->j:Ljava/util/concurrent/Executor;

    .line 231
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_1
    iget-object v0, p0, Liaq;->j:Ljava/util/concurrent/Executor;

    return-object v0

    .line 231
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final k()Ljava/util/concurrent/Executor;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 241
    iget-object v0, p0, Liaq;->k:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 242
    const-class v1, Liaq;

    monitor-enter v1

    .line 243
    :try_start_0
    iget-object v0, p0, Liaq;->k:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Liab;

    const-string/jumbo v2, "user_thread_group"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3}, Liab;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Liaq;->k:Ljava/util/concurrent/Executor;

    .line 246
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :cond_1
    iget-object v0, p0, Liaq;->k:Ljava/util/concurrent/Executor;

    return-object v0

    .line 246
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Liaq;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Liaq;->d:Ljava/lang/String;

    .line 259
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Liaq;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final declared-synchronized m()Ljava/lang/String;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 263
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v2

    .line 264
    .local v2, "openId":J
    cmp-long v4, v2, v6

    if-eqz v4, :cond_1

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/auth/AuthService;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Lieb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "dbName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Liaq;->d:Ljava/lang/String;

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[DB] reset db "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string/jumbo v4, "[TAG] Base"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[DB] reset db "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "base"

    invoke-static {v4, v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {v1}, Lcom/alibaba/wukong/sync/SyncEngine;->start(Ljava/lang/String;)V

    .line 279
    .end local v0    # "dbName":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lido;->a()Lido;

    move-result-object v4

    iget-object v5, p0, Liaq;->a:Landroid/content/Context;

    .line 3076
    iput-object v5, v4, Lido;->a:Landroid/content/Context;

    .line 3077
    iget-object v6, v4, Lido;->b:Lcom/alibaba/doraemon/log/FileLogger;

    if-eqz v6, :cond_0

    .line 3078
    iget-object v6, v4, Lido;->b:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v6}, Lcom/alibaba/doraemon/log/FileLogger;->close()V

    .line 3080
    :cond_0
    new-instance v6, Lcom/alibaba/doraemon/log/FileLogger;

    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getWKExecutor()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 3081
    invoke-static {}, Liaq;->a()Liaq;

    .line 3284
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v10

    .line 3081
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/syncdata"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v5}, Lcom/alibaba/doraemon/log/FileLogger;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v6, v4, Lido;->b:Lcom/alibaba/doraemon/log/FileLogger;

    .line 3082
    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lido;->c:J

    .line 280
    iget-object v4, p0, Liaq;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 272
    :cond_1
    :try_start_1
    iget-object v4, p0, Liaq;->d:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 273
    const/4 v4, 0x0

    iput-object v4, p0, Liaq;->d:Ljava/lang/String;

    .line 275
    const-string/jumbo v4, "[TAG] Base"

    const-string/jumbo v5, "[DB] reset db null"

    const-string/jumbo v6, "base"

    invoke-static {v4, v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_2
    invoke-static {}, Lcom/alibaba/wukong/sync/SyncEngine;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 263
    .end local v2    # "openId":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
