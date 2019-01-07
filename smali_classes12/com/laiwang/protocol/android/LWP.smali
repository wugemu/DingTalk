.class public Lcom/laiwang/protocol/android/LWP;
.super Ljava/lang/Object;
.source "LWP.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/LWP$Action;
    }
.end annotation


# static fields
.field private static BINDER_NOTIFIER:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/laiwang/protocol/android/NotifyReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private static CONTEXT:Landroid/content/Context; = null

.field public static final REMOTE_AGENT:Ljava/lang/String; = "lwp.remote.agent"

.field public static final REMOTE_BINDER:Ljava/lang/String; = "lwp.remote.binder"

.field public static final REMOTE_CACHEHEADERS:Ljava/lang/String; = "lwp.remote.cacheheaders"

.field private static REMOTE_SERVICE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/laiwang/protocol/android/ReceiveService;",
            ">;"
        }
    .end annotation
.end field

.field private static agent:Lcom/laiwang/protocol/android/a;

.field public static volatile binder:Z

.field private static binderNotifier:Lcom/laiwang/protocol/c;

.field private static buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/core/Request;",
            ">;"
        }
    .end annotation
.end field

.field static listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/NetworkListener;",
            ">;"
        }
    .end annotation
.end field

.field private static notifyReceiver:Lcom/laiwang/protocol/android/NotifyReceiver;

.field public static volatile remote:Z

.field private static final requestLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public static stickyCacheHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    sput-boolean v1, Lcom/laiwang/protocol/android/LWP;->remote:Z

    .line 43
    sput-boolean v1, Lcom/laiwang/protocol/android/LWP;->binder:Z

    .line 45
    sput-object v0, Lcom/laiwang/protocol/android/LWP;->CONTEXT:Landroid/content/Context;

    .line 46
    sput-object v0, Lcom/laiwang/protocol/android/LWP;->REMOTE_SERVICE:Ljava/lang/Class;

    .line 47
    sput-object v0, Lcom/laiwang/protocol/android/LWP;->BINDER_NOTIFIER:Ljava/lang/Class;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/LWP;->buffer:Ljava/util/List;

    .line 204
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/LWP;->requestLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 243
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/LWP;->listeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    return-void
.end method

.method public static addConfigListener(Lcom/laiwang/protocol/android/ConfigListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/laiwang/protocol/android/ConfigListener;

    .prologue
    .line 432
    invoke-static {}, Lcom/laiwang/protocol/android/ar;->a()Lcom/laiwang/protocol/android/ar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/laiwang/protocol/android/ar;->a(Lcom/laiwang/protocol/android/ConfigListener;)V

    .line 433
    return-void
.end method

.method public static addIdleObserver(Lcom/laiwang/protocol/android/IdleObserver;)V
    .locals 1
    .param p0, "observer"    # Lcom/laiwang/protocol/android/IdleObserver;

    .prologue
    .line 411
    invoke-static {}, Lcom/laiwang/protocol/android/IdleService;->getInstance()Lcom/laiwang/protocol/android/IdleService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/laiwang/protocol/android/IdleService;->addIdleObserver(Lcom/laiwang/protocol/android/IdleObserver;)V

    .line 412
    return-void
.end method

.method public static addLogoutListener(Lcom/laiwang/protocol/ResetListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/laiwang/protocol/ResetListener;

    .prologue
    .line 267
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 270
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    invoke-interface {v0, p0}, Lcom/laiwang/protocol/android/a;->a(Lcom/laiwang/protocol/ResetListener;)V

    goto :goto_0
.end method

.method public static addNetworkListener(Lcom/laiwang/protocol/android/NetworkListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/laiwang/protocol/android/NetworkListener;

    .prologue
    .line 246
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    if-nez v0, :cond_0

    .line 247
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    invoke-interface {v0, p0}, Lcom/laiwang/protocol/android/a;->a(Lcom/laiwang/protocol/android/NetworkListener;)V

    goto :goto_0
.end method

.method public static ask(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/Reply;)V
    .locals 2
    .param p0, "request"    # Lcom/laiwang/protocol/core/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laiwang/protocol/core/Request;",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    sget-object v0, Lcom/laiwang/protocol/attribute/Attributes;->RETRY:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/core/Request;->setReply(Lcom/laiwang/protocol/android/Reply;)V

    .line 176
    invoke-static {p0}, Lcom/laiwang/protocol/android/LWP;->doAsk(Lcom/laiwang/protocol/core/Request;)V

    .line 177
    return-void
.end method

.method public static askOnce(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/Reply;)V
    .locals 2
    .param p0, "request"    # Lcom/laiwang/protocol/core/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laiwang/protocol/core/Request;",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    sget-object v0, Lcom/laiwang/protocol/attribute/Attributes;->RETRY:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/core/Request;->setReply(Lcom/laiwang/protocol/android/Reply;)V

    .line 189
    invoke-static {p0}, Lcom/laiwang/protocol/android/LWP;->doAsk(Lcom/laiwang/protocol/core/Request;)V

    .line 190
    return-void
.end method

.method public static currentServerTime()J
    .locals 2

    .prologue
    .line 372
    invoke-static {}, Lcom/laiwang/protocol/android/s;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static deleteLogs()V
    .locals 1

    .prologue
    .line 315
    invoke-static {}, Lcom/laiwang/protocol/a;->a()Lcom/laiwang/protocol/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/a;->d()V

    .line 316
    return-void
.end method

.method public static declared-synchronized destroy()V
    .locals 2

    .prologue
    .line 155
    const-class v1, Lcom/laiwang/protocol/android/LWP;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 160
    :goto_0
    monitor-exit v1

    return-void

    .line 158
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/laiwang/protocol/push/PushDispatch;->clear()V

    .line 159
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    invoke-interface {v0}, Lcom/laiwang/protocol/android/a;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized destroyForever()V
    .locals 2

    .prologue
    .line 163
    const-class v1, Lcom/laiwang/protocol/android/LWP;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/laiwang/protocol/Config;->b:Z

    .line 164
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit v1

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static detect(Lcom/laiwang/protocol/android/NetworkListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/laiwang/protocol/android/NetworkListener;

    .prologue
    .line 398
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    if-nez v0, :cond_1

    .line 399
    if-eqz p0, :cond_0

    .line 400
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "LWP is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/laiwang/protocol/android/NetworkListener;->onConnectFailed(Ljava/lang/Exception;)V

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    invoke-interface {v0, p0}, Lcom/laiwang/protocol/android/a;->c(Lcom/laiwang/protocol/android/NetworkListener;)V

    goto :goto_0
.end method

.method public static deviceTokenChanged(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    .locals 1
    .param p0, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    invoke-interface {v0, p0, p1}, Lcom/laiwang/protocol/android/a;->b(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V

    goto :goto_0
.end method

.method public static disConnect()V
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 277
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    invoke-interface {v0}, Lcom/laiwang/protocol/android/a;->c()V

    goto :goto_0
.end method

.method private static doAsk(Lcom/laiwang/protocol/core/Request;)V
    .locals 2
    .param p0, "request"    # Lcom/laiwang/protocol/core/Request;

    .prologue
    .line 207
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    if-nez v0, :cond_1

    .line 209
    :try_start_0
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->requestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 210
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    if-nez v0, :cond_0

    .line 211
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->buffer:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->requestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 219
    :goto_0
    return-void

    .line 214
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/laiwang/protocol/android/LWP;->requestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 218
    :cond_1
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    invoke-interface {v0, p0}, Lcom/laiwang/protocol/android/a;->a(Lcom/laiwang/protocol/core/Request;)V

    goto :goto_0
.end method

.method private static doInitialize(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/laiwang/protocol/android/LWPService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "lwpServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/laiwang/protocol/android/LWPService;>;"
    const/4 v2, 0x0

    .line 71
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v3

    .line 74
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    const-string/jumbo v5, "LWP initialize err "

    invoke-static {v5, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 76
    .local v1, "appCtx":Landroid/content/Context;
    instance-of v5, v1, Landroid/app/Application;

    if-eqz v5, :cond_0

    check-cast v1, Landroid/app/Application;

    .end local v1    # "appCtx":Landroid/content/Context;
    move-object v2, v1

    .line 77
    .local v2, "application":Landroid/app/Application;
    :cond_0
    invoke-static {}, Lcom/laiwang/protocol/a;->a()Lcom/laiwang/protocol/a;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, p0, v6}, Lcom/laiwang/protocol/a;->a(Landroid/app/Application;Landroid/content/Context;Lcom/laiwang/protocol/android/Extension;)V

    .line 78
    new-instance v0, Lcom/laiwang/protocol/android/b;

    invoke-static {}, Lcom/laiwang/protocol/a;->a()Lcom/laiwang/protocol/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/laiwang/protocol/a;->e()Lcom/laiwang/protocol/android/w;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/laiwang/protocol/android/b;-><init>(Lcom/laiwang/protocol/android/w;)V

    .line 79
    .local v0, "agent":Lcom/laiwang/protocol/android/a;
    invoke-static {v0}, Lcom/laiwang/protocol/android/LWP;->setAgent(Lcom/laiwang/protocol/android/a;)V

    .line 80
    invoke-static {}, Lcom/laiwang/protocol/a;->a()Lcom/laiwang/protocol/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/laiwang/protocol/a;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 81
    .end local v0    # "agent":Lcom/laiwang/protocol/android/a;
    .end local v2    # "application":Landroid/app/Application;
    :catch_1
    move-exception v4

    .line 82
    .local v4, "ignore":Ljava/lang/Throwable;
    const-string/jumbo v5, "LWP initialize err"

    invoke-static {v5, v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getNetworkState(Landroid/content/Context;)Lcom/laiwang/protocol/android/NetworkListener$NetworkState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 387
    new-instance v0, Lcom/laiwang/protocol/android/NetworkListener$NetworkState;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/NetworkListener$NetworkState;-><init>()V

    .line 388
    .local v0, "state":Lcom/laiwang/protocol/android/NetworkListener$NetworkState;
    invoke-static {p0}, Lcom/laiwang/protocol/android/cg;->b(Landroid/content/Context;)Lcom/laiwang/protocol/network/Network$State;

    move-result-object v1

    iput-object v1, v0, Lcom/laiwang/protocol/android/NetworkListener$NetworkState;->networkState:Lcom/laiwang/protocol/network/Network$State;

    .line 389
    sget-object v1, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    invoke-interface {v1}, Lcom/laiwang/protocol/android/a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/laiwang/protocol/android/NetworkListener$NetworkState;->lwpConnectState:I

    .line 390
    return-object v0

    .line 389
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    if-nez v0, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 425
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    invoke-interface {v0}, Lcom/laiwang/protocol/android/a;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUnitName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    const-string/jumbo v0, "unit_name"

    invoke-static {v0}, Lcom/laiwang/protocol/android/cg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const-class v1, Lcom/laiwang/protocol/android/LWP;

    monitor-enter v1

    :try_start_0
    const-class v0, Lcom/laiwang/protocol/android/LWPService;

    invoke-static {p0, v0}, Lcom/laiwang/protocol/android/LWP;->doInitialize(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit v1

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/laiwang/protocol/android/LWPService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "lwpServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/laiwang/protocol/android/LWPService;>;"
    const-class v0, Lcom/laiwang/protocol/android/LWP;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/laiwang/protocol/android/LWP;->doInitialize(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit v0

    return-void

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initializeProcessor(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/laiwang/protocol/android/ReceiveService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "receiveClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/laiwang/protocol/android/ReceiveService;>;"
    const-class v3, Lcom/laiwang/protocol/android/LWP;

    monitor-enter v3

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/laiwang/protocol/android/LWPService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v2, "lwp.remote.agent"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v0, "receiverIntent":Landroid/content/Intent;
    const-string/jumbo v2, "lwp.remote.agent"

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 110
    sput-object p1, Lcom/laiwang/protocol/android/LWP;->REMOTE_SERVICE:Ljava/lang/Class;

    .line 111
    sput-object p0, Lcom/laiwang/protocol/android/LWP;->CONTEXT:Landroid/content/Context;

    .line 112
    const/4 v2, 0x1

    sput-boolean v2, Lcom/laiwang/protocol/android/LWP;->remote:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit v3

    return-void

    .line 104
    .end local v0    # "receiverIntent":Landroid/content/Intent;
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized initializeProcessorWithBinder(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/laiwang/protocol/android/NotifyReceiver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "notifyClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/laiwang/protocol/android/NotifyReceiver;>;"
    const-class v0, Lcom/laiwang/protocol/android/LWP;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1, p1}, Lcom/laiwang/protocol/android/LWP;->initializeProcessorWithCacheHeaderAndBinder(Landroid/content/Context;Ljava/util/Map;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit v0

    return-void

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initializeProcessorWithCacheHeaderAndBinder(Landroid/content/Context;Ljava/util/Map;Ljava/lang/Class;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/laiwang/protocol/android/NotifyReceiver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "cacheHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "notifyClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/laiwang/protocol/android/NotifyReceiver;>;"
    const-class v4, Lcom/laiwang/protocol/android/LWP;

    monitor-enter v4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/laiwang/protocol/android/LWPService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v3, "lwp.remote.agent"

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    const-string/jumbo v3, "lwp.remote.binder"

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    if-eqz p1, :cond_0

    .line 134
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 135
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "lwp.remote.cacheheaders"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 141
    sput-object p0, Lcom/laiwang/protocol/android/LWP;->CONTEXT:Landroid/content/Context;

    .line 142
    sput-object p2, Lcom/laiwang/protocol/android/LWP;->BINDER_NOTIFIER:Ljava/lang/Class;

    .line 143
    const/4 v3, 0x1

    sput-boolean v3, Lcom/laiwang/protocol/android/LWP;->remote:Z

    .line 144
    const/4 v3, 0x1

    sput-boolean v3, Lcom/laiwang/protocol/android/LWP;->binder:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    if-eqz p2, :cond_1

    .line 147
    const/4 v3, 0x1

    :try_start_3
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v3, v5

    invoke-virtual {p2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/laiwang/protocol/android/NotifyReceiver;

    sput-object v3, Lcom/laiwang/protocol/android/LWP;->notifyReceiver:Lcom/laiwang/protocol/android/NotifyReceiver;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    :cond_1
    :goto_1
    monitor-exit v4

    return-void

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 129
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "serviceIntent":Landroid/content/Intent;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static declared-synchronized initializeWithoutService(Landroid/content/Context;Lcom/laiwang/protocol/android/Extension;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extension"    # Lcom/laiwang/protocol/android/Extension;

    .prologue
    .line 93
    const-class v2, Lcom/laiwang/protocol/android/LWP;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/laiwang/protocol/a;->a()Lcom/laiwang/protocol/a;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p0, p1}, Lcom/laiwang/protocol/a;->a(Landroid/app/Application;Landroid/content/Context;Lcom/laiwang/protocol/android/Extension;)V

    .line 94
    new-instance v0, Lcom/laiwang/protocol/android/b;

    invoke-static {}, Lcom/laiwang/protocol/a;->a()Lcom/laiwang/protocol/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laiwang/protocol/a;->e()Lcom/laiwang/protocol/android/w;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/laiwang/protocol/android/b;-><init>(Lcom/laiwang/protocol/android/w;)V

    .line 95
    .local v0, "agent":Lcom/laiwang/protocol/android/a;
    invoke-static {v0}, Lcom/laiwang/protocol/android/LWP;->setAgent(Lcom/laiwang/protocol/android/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit v2

    return-void

    .line 93
    .end local v0    # "agent":Lcom/laiwang/protocol/android/a;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static isFromChina()Z
    .locals 1

    .prologue
    .line 440
    invoke-static {}, Lcom/laiwang/protocol/android/s;->c()Z

    move-result v0

    return v0
.end method

.method public static isSupportHuaweiHB()Z
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public static logout()V
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    if-nez v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    invoke-interface {v0}, Lcom/laiwang/protocol/android/a;->a()V

    goto :goto_0
.end method

.method public static onRemoteMessage(Lcom/laiwang/protocol/android/bd;)V
    .locals 4
    .param p0, "message"    # Lcom/laiwang/protocol/android/bd;

    .prologue
    .line 319
    invoke-static {p0}, Lcom/laiwang/protocol/android/be;->b(Lcom/laiwang/protocol/android/bd;)Ljava/util/List;

    move-result-object v1

    .line 320
    .local v1, "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 321
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v3, Lcom/laiwang/protocol/android/LWP$Action;->MESSAGE:Lcom/laiwang/protocol/android/LWP$Action;

    invoke-static {v3, v0}, Lcom/laiwang/protocol/android/LWP;->send(Lcom/laiwang/protocol/android/LWP$Action;Landroid/os/Bundle;)V

    goto :goto_0

    .line 323
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public static refreshAladdinCaches()V
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 291
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    invoke-interface {v0}, Lcom/laiwang/protocol/android/a;->e()V

    goto :goto_0
.end method

.method public static refreshCacheHeaders()V
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 284
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    invoke-interface {v0}, Lcom/laiwang/protocol/android/a;->b()V

    goto :goto_0
.end method

.method public static removeConfigListener(Lcom/laiwang/protocol/android/ConfigListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/laiwang/protocol/android/ConfigListener;

    .prologue
    .line 436
    invoke-static {}, Lcom/laiwang/protocol/android/ar;->a()Lcom/laiwang/protocol/android/ar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/laiwang/protocol/android/ar;->b(Lcom/laiwang/protocol/android/ConfigListener;)V

    .line 437
    return-void
.end method

.method public static removeIdleObserver(Lcom/laiwang/protocol/android/IdleObserver;)V
    .locals 1
    .param p0, "observer"    # Lcom/laiwang/protocol/android/IdleObserver;

    .prologue
    .line 418
    invoke-static {}, Lcom/laiwang/protocol/android/IdleService;->getInstance()Lcom/laiwang/protocol/android/IdleService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/laiwang/protocol/android/IdleService;->removeIdleObserver(Lcom/laiwang/protocol/android/IdleObserver;)V

    .line 419
    return-void
.end method

.method public static removeNetworkListener(Lcom/laiwang/protocol/android/NetworkListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/laiwang/protocol/android/NetworkListener;

    .prologue
    .line 254
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    invoke-interface {v0, p0}, Lcom/laiwang/protocol/android/a;->b(Lcom/laiwang/protocol/android/NetworkListener;)V

    .line 257
    :cond_0
    return-void
.end method

.method public static send(Lcom/laiwang/protocol/android/LWP$Action;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "action"    # Lcom/laiwang/protocol/android/LWP$Action;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 326
    sget-boolean v2, Lcom/laiwang/protocol/android/LWP;->remote:Z

    if-nez v2, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    sget-boolean v2, Lcom/laiwang/protocol/android/LWP;->binder:Z

    if-nez v2, :cond_3

    .line 330
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/laiwang/protocol/android/LWP;->CONTEXT:Landroid/content/Context;

    sget-object v3, Lcom/laiwang/protocol/android/LWP;->REMOTE_SERVICE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/LWP$Action;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    if-eqz p1, :cond_2

    .line 333
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 335
    :cond_2
    sget-object v2, Lcom/laiwang/protocol/android/LWP;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 337
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    sget-object v2, Lcom/laiwang/protocol/android/LWP;->binderNotifier:Lcom/laiwang/protocol/c;

    if-eqz v2, :cond_0

    .line 339
    :try_start_0
    sget-object v2, Lcom/laiwang/protocol/android/LWP;->binderNotifier:Lcom/laiwang/protocol/c;

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/LWP$Action;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/laiwang/protocol/c;->onReceive(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static setAgent(Lcom/laiwang/protocol/android/a;)V
    .locals 4
    .param p0, "agent"    # Lcom/laiwang/protocol/android/a;

    .prologue
    .line 296
    :try_start_0
    sget-object v2, Lcom/laiwang/protocol/android/LWP;->requestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 297
    sput-object p0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    .line 298
    sget-object v2, Lcom/laiwang/protocol/android/LWP;->buffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 299
    sget-object v2, Lcom/laiwang/protocol/android/LWP;->buffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/core/Request;

    .line 300
    .local v1, "request":Lcom/laiwang/protocol/core/Request;
    invoke-interface {p0, v1}, Lcom/laiwang/protocol/android/a;->a(Lcom/laiwang/protocol/core/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 310
    .end local v1    # "request":Lcom/laiwang/protocol/core/Request;
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/laiwang/protocol/android/LWP;->requestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 302
    :cond_0
    :try_start_1
    sget-object v2, Lcom/laiwang/protocol/android/LWP;->buffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 304
    :cond_1
    sget-object v2, Lcom/laiwang/protocol/android/LWP;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 305
    sget-object v2, Lcom/laiwang/protocol/android/LWP;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/NetworkListener;

    .line 306
    .local v0, "listener":Lcom/laiwang/protocol/android/NetworkListener;
    invoke-interface {p0, v0}, Lcom/laiwang/protocol/android/a;->a(Lcom/laiwang/protocol/android/NetworkListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 310
    .end local v0    # "listener":Lcom/laiwang/protocol/android/NetworkListener;
    :cond_2
    sget-object v2, Lcom/laiwang/protocol/android/LWP;->requestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 311
    return-void
.end method

.method public static setBinderNotifier(Lcom/laiwang/protocol/c;)V
    .locals 0
    .param p0, "notifier"    # Lcom/laiwang/protocol/c;

    .prologue
    .line 348
    sput-object p0, Lcom/laiwang/protocol/android/LWP;->binderNotifier:Lcom/laiwang/protocol/c;

    .line 349
    return-void
.end method

.method public static subscribe(Ljava/lang/String;Lcom/laiwang/protocol/android/Receive;)V
    .locals 0
    .param p0, "topicPattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/android/Receive",
            "<",
            "Lcom/laiwang/protocol/core/Request;",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "receive":Lcom/laiwang/protocol/android/Receive;, "Lcom/laiwang/protocol/android/Receive<Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Response;>;"
    invoke-static {p0, p1}, Lcom/laiwang/protocol/push/PushDispatch;->register(Ljava/lang/String;Lcom/laiwang/protocol/android/Receive;)V

    .line 237
    return-void
.end method

.method public static tokenChanged(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    .locals 1
    .param p0, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 225
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/android/LWP;->agent:Lcom/laiwang/protocol/android/a;

    invoke-interface {v0, p0, p1}, Lcom/laiwang/protocol/android/a;->a(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V

    goto :goto_0
.end method

.method public static unSubscribe(Ljava/lang/String;)V
    .locals 0
    .param p0, "topicPattern"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-static {p0}, Lcom/laiwang/protocol/push/PushDispatch;->unRegister(Ljava/lang/String;)V

    .line 241
    return-void
.end method
