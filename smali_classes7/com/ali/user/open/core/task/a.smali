.class public Lcom/ali/user/open/core/task/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/ali/user/open/core/callback/InitResultCallback;


# direct methods
.method public constructor <init>(Lcom/ali/user/open/core/callback/InitResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ali/user/open/core/task/a;->a:Lcom/ali/user/open/core/callback/InitResultCallback;

    return-void
.end method

.method static synthetic a(Lcom/ali/user/open/core/task/a;)Lcom/ali/user/open/core/callback/InitResultCallback;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/open/core/task/a;->a:Lcom/ali/user/open/core/callback/InitResultCallback;

    return-object v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ali/user/open/core/util/ReflectionUtils;->newInstance(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    const-string/jumbo v0, "initTask"

    const-string/jumbo v1, "sdk version = 1.5.1"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/open/core/task/a;->d()V

    :try_start_0
    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-direct {p0}, Lcom/ali/user/open/core/task/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/ali/user/open/core/context/KernelContext;->sdkInitialized:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "initTask"

    const-string/jumbo v2, "fail to sync start"

    invoke-static {v1, v2, v0}, Lcom/ali/user/open/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/open/core/task/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 1

    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/open/core/device/DeviceInfo;->init(Landroid/content/Context;)V

    return-void
.end method

.method private e()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->wrapServiceRegistry()V

    invoke-static {}, Lcom/ali/user/open/core/config/ConfigManager;->getInstance()Lcom/ali/user/open/core/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/open/core/config/ConfigManager;->init()V

    invoke-direct {p0}, Lcom/ali/user/open/core/task/a;->h()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/ali/user/open/core/task/a;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/ali/user/open/core/task/a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "com.ali.user.open.module.SessionModule"

    const-string/jumbo v2, "init"

    invoke-static {v1, v2, v3, v3, v3}, Lcom/ali/user/open/core/util/ReflectionUtils;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.ali.user.open.oauth.module.OauthModule"

    const-string/jumbo v2, "init"

    invoke-static {v1, v2, v3, v3, v3}, Lcom/ali/user/open/core/util/ReflectionUtils;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.ali.user.open.ucc.module.UccModule"

    const-string/jumbo v2, "init"

    invoke-static {v1, v2, v3, v3, v3}, Lcom/ali/user/open/core/util/ReflectionUtils;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/ali/user/open/core/service/MemberExecutorService;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-class v2, Ljava/util/concurrent/ExecutorService;

    aput-object v2, v1, v0

    new-instance v0, Lcom/ali/user/open/core/service/a/a;

    invoke-direct {v0}, Lcom/ali/user/open/core/service/a/a;-><init>()V

    invoke-static {v1, v0, v3}, Lcom/ali/user/open/core/context/KernelContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/user/open/core/registry/ServiceRegistration;

    invoke-direct {p0}, Lcom/ali/user/open/core/task/a;->j()Z

    move-result v0

    const-string/jumbo v1, "initTask"

    const-string/jumbo v2, "INIT SUCCESS"

    invoke-static {v1, v2}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    invoke-direct {p0}, Lcom/ali/user/open/core/task/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "initTask"

    const-string/jumbo v1, " INIT FAILURE"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ali/user/open/core/context/KernelContext;->executorService:Lcom/ali/user/open/core/service/MemberExecutorService;

    new-instance v1, Lcom/ali/user/open/core/task/a$1;

    invoke-direct {v1, p0}, Lcom/ali/user/open/core/task/a$1;-><init>(Lcom/ali/user/open/core/task/a;)V

    invoke-interface {v0, v1}, Lcom/ali/user/open/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/ali/user/open/core/context/KernelContext;->executorService:Lcom/ali/user/open/core/service/MemberExecutorService;

    new-instance v1, Lcom/ali/user/open/core/task/a$2;

    invoke-direct {v1, p0}, Lcom/ali/user/open/core/task/a$2;-><init>(Lcom/ali/user/open/core/task/a;)V

    invoke-interface {v0, v1}, Lcom/ali/user/open/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    const-string/jumbo v0, "initTask"

    const-string/jumbo v1, "INIT SUCCESS"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "initTask"

    const-string/jumbo v3, "registerStorage"

    invoke-static {v2, v3}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v2, "com.ali.user.open.securityguard.SecurityGuardWrapper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :try_start_1
    sput-boolean v2, Lcom/ali/user/open/core/context/KernelContext;->isMini:Z

    const-string/jumbo v2, "a_1.5.1-std"

    sput-object v2, Lcom/ali/user/open/core/context/KernelContext;->sdkVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_0

    :try_start_2
    const-string/jumbo v2, "com.ali.user.open.securityguard.SecurityGuardWrapper"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/ali/user/open/core/task/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/ali/user/open/core/service/StorageService;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/ali/user/open/core/context/KernelContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/user/open/core/registry/ServiceRegistration;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    move v2, v0

    goto :goto_0

    :catch_2
    move-exception v2

    move v2, v1

    goto :goto_0
.end method

.method private h()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "initTask"

    const-string/jumbo v3, "registerRpc"

    invoke-static {v2, v3}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v2, "com.ali.user.open.mtop.rpc.impl.MtopRpcServiceImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v1

    :goto_0
    if-eqz v2, :cond_0

    :try_start_1
    const-string/jumbo v2, "com.ali.user.open.mtop.rpc.impl.MtopRpcServiceImpl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/ali/user/open/core/task/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/ali/user/open/core/service/RpcService;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/ali/user/open/core/context/KernelContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/user/open/core/registry/ServiceRegistration;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v2

    move v2, v0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_1
.end method

.method private i()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "initTask"

    const-string/jumbo v3, "registerUserTrack"

    invoke-static {v2, v3}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v3, "com.ali.user.open.ut.UserTrackerImpl"
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_2
    invoke-direct {p0, v3, v2, v4}, Lcom/ali/user/open/core/task/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/ali/user/open/core/service/UserTrackerService;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/ali/user/open/core/context/KernelContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/user/open/core/registry/ServiceRegistration;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return v0

    :catch_0
    move-exception v2

    move v2, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    :cond_0
    move v0, v1

    goto :goto_1
.end method

.method private j()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    const/4 v5, 0x1

    const-string/jumbo v0, "initTask"

    const-string/jumbo v1, "register login service"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v0, "com.ali.user.open.tbauth.TbAuthLifecycleAdapter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "com.ali.user.open.tbauth.TbAuthLifecycleAdapter"

    const-string/jumbo v2, "init"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/ali/user/open/core/util/ReflectionUtils;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v5

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    :try_start_0
    sget-object v0, Lcom/ali/user/open/core/context/KernelContext;->initLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-direct {p0}, Lcom/ali/user/open/core/task/a;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/ali/user/open/core/task/a;->b()V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "initTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/ali/user/open/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/open/core/task/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/ali/user/open/core/task/a;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/ali/user/open/core/task/a;->b()V

    throw v0
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    instance-of v0, p1, Lcom/ali/user/open/core/exception/MemberSDKException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ali/user/open/core/exception/MemberSDKException;

    iget v1, p1, Lcom/ali/user/open/core/exception/MemberSDKException;->code:I

    iget-object v0, p1, Lcom/ali/user/open/core/exception/MemberSDKException;->message:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/ali/user/open/core/task/a;->a:Lcom/ali/user/open/core/callback/InitResultCallback;

    invoke-static {v2, v1, v0}, Lcom/ali/user/open/core/util/CommonUtils;->onFailure(Lcom/ali/user/open/core/callback/FailureCallback;ILjava/lang/String;)V

    return-void

    :cond_0
    const/16 v1, 0x271a

    invoke-static {p1}, Lcom/ali/user/open/core/util/CommonUtils;->toString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    sget-object v0, Lcom/ali/user/open/core/context/KernelContext;->initLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ali/user/open/core/task/a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
