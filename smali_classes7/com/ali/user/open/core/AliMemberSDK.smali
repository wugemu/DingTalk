.class public Lcom/ali/user/open/core/AliMemberSDK;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field public static ttid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMasterSite()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ali/user/open/core/AliMemberSDK;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/ali/user/open/core/context/KernelContext;->serviceRegistry:Lcom/ali/user/open/core/registry/a;

    invoke-interface {v1, p0, v0}, Lcom/ali/user/open/core/registry/a;->a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/ali/user/open/core/callback/InitResultCallback;)V
    .locals 4

    const-class v1, Lcom/ali/user/open/core/AliMemberSDK;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/open/core/context/KernelContext;->sdkInitialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ali/user/open/core/callback/InitResultCallback;->onSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v0, "context"

    invoke-static {p0, v0}, Lcom/ali/user/open/core/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ali/user/open/core/context/KernelContext;->applicationContext:Landroid/content/Context;

    new-instance v0, Lcom/ali/user/open/core/task/a;

    invoke-direct {v0, p1}, Lcom/ali/user/open/core/task/a;-><init>(Lcom/ali/user/open/core/callback/InitResultCallback;)V

    sget-object v2, Lcom/ali/user/open/core/context/KernelContext;->executorService:Lcom/ali/user/open/core/service/MemberExecutorService;

    new-instance v3, Ljava/util/concurrent/FutureTask;

    invoke-direct {v3, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-interface {v2, v3}, Lcom/ali/user/open/core/service/MemberExecutorService;->postHandlerTask(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Lcom/ali/user/open/core/callback/InitResultCallback;)V
    .locals 2

    const-class v1, Lcom/ali/user/open/core/AliMemberSDK;

    monitor-enter v1

    :try_start_0
    sput-object p1, Lcom/ali/user/open/core/AliMemberSDK;->a:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/ali/user/open/core/AliMemberSDK;->init(Landroid/content/Context;Lcom/ali/user/open/core/callback/InitResultCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setAuthOption(Lcom/ali/user/open/core/config/AuthOption;)V
    .locals 0

    sput-object p0, Lcom/ali/user/open/core/context/KernelContext;->authOption:Lcom/ali/user/open/core/config/AuthOption;

    return-void
.end method

.method public static setEnvironment(Lcom/ali/user/open/core/config/Environment;)V
    .locals 1

    invoke-static {}, Lcom/ali/user/open/core/config/ConfigManager;->getInstance()Lcom/ali/user/open/core/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ali/user/open/core/config/ConfigManager;->setEnvironment(Lcom/ali/user/open/core/config/Environment;)V

    return-void
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/ali/user/open/core/context/KernelContext;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static setResources(Landroid/content/res/Resources;)V
    .locals 0

    sput-object p0, Lcom/ali/user/open/core/context/KernelContext;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method public static setTtid(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/ali/user/open/core/AliMemberSDK;->ttid:Ljava/lang/String;

    return-void
.end method

.method public static setUUID(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/ali/user/open/core/context/KernelContext;->UUID:Ljava/lang/String;

    return-void
.end method

.method public static turnOnDebug()V
    .locals 2

    const-string/jumbo v0, "AliMemberSDK"

    const-string/jumbo v1, "************************************\nDebug is enabled, make sure to turn it off in the production environment\n************************************"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ali/user/open/core/config/ConfigManager;->DEBUG:Z

    return-void
.end method
