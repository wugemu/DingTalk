.class public Lcom/ali/user/open/core/context/KernelContext;
.super Ljava/lang/Object;


# static fields
.field public static final SDK_VERSION_MINI:Ljava/lang/String; = "a_1.5.1-mini"

.field public static final SDK_VERSION_STD:Ljava/lang/String; = "a_1.5.1-std"

.field public static final TAG:Ljava/lang/String; = "kernel"

.field public static UUID:Ljava/lang/String;

.field public static volatile applicationContext:Landroid/content/Context;

.field public static authOption:Lcom/ali/user/open/core/config/AuthOption;

.field public static executorService:Lcom/ali/user/open/core/service/MemberExecutorService;

.field public static final initLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public static isMini:Z

.field public static mWebViewProxy:Lcom/ali/user/open/core/WebViewProxy;

.field public static packageName:Ljava/lang/String;

.field public static resources:Landroid/content/res/Resources;

.field public static sOneTimeAuthOption:Lcom/ali/user/open/core/config/AuthOption;

.field public static volatile sdkInitialized:Ljava/lang/Boolean;

.field public static sdkVersion:Ljava/lang/String;

.field public static volatile serviceRegistry:Lcom/ali/user/open/core/registry/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ali/user/open/core/context/KernelContext;->isMini:Z

    const-string/jumbo v0, "a_1.5.1-mini"

    sput-object v0, Lcom/ali/user/open/core/context/KernelContext;->sdkVersion:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/ali/user/open/core/context/KernelContext;->sdkInitialized:Ljava/lang/Boolean;

    sget-object v0, Lcom/ali/user/open/core/config/AuthOption;->NORMAL:Lcom/ali/user/open/core/config/AuthOption;

    sput-object v0, Lcom/ali/user/open/core/context/KernelContext;->authOption:Lcom/ali/user/open/core/config/AuthOption;

    const/4 v0, 0x0

    sput-object v0, Lcom/ali/user/open/core/context/KernelContext;->sOneTimeAuthOption:Lcom/ali/user/open/core/config/AuthOption;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/ali/user/open/core/context/KernelContext;->initLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Lcom/ali/user/open/core/registry/a/a;

    invoke-direct {v0}, Lcom/ali/user/open/core/registry/a/a;-><init>()V

    sput-object v0, Lcom/ali/user/open/core/context/KernelContext;->serviceRegistry:Lcom/ali/user/open/core/registry/a;

    new-instance v0, Lcom/ali/user/open/core/service/a/a;

    invoke-direct {v0}, Lcom/ali/user/open/core/service/a/a;-><init>()V

    sput-object v0, Lcom/ali/user/open/core/context/KernelContext;->executorService:Lcom/ali/user/open/core/service/MemberExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkServiceValid()Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/ali/user/open/core/context/KernelContext;->applicationContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/ali/user/open/core/context/KernelContext;->serviceRegistry:Lcom/ali/user/open/core/registry/a;

    if-eqz v1, :cond_0

    const-class v1, Lcom/ali/user/open/core/service/RpcService;

    invoke-static {v1}, Lcom/ali/user/open/core/context/KernelContext;->getServices(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v1}, Lcom/ali/user/open/core/context/KernelContext;->getServices(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/ali/user/open/core/service/UserTrackerService;

    invoke-static {v1}, Lcom/ali/user/open/core/context/KernelContext;->getServices(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/ali/user/open/core/service/StorageService;

    invoke-static {v1}, Lcom/ali/user/open/core/context/KernelContext;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getApplicationContext()Landroid/content/Context;
    .locals 2

    const-class v1, Lcom/ali/user/open/core/context/KernelContext;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/open/core/context/KernelContext;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/user/open/core/context/KernelContext;->applicationContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ali/user/open/core/util/SystemUtils;->getSystemApp()Landroid/app/Application;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getEnvironment()Lcom/ali/user/open/core/config/Environment;
    .locals 1

    invoke-static {}, Lcom/ali/user/open/core/config/ConfigManager;->getInstance()Lcom/ali/user/open/core/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/open/core/config/ConfigManager;->getEnvironment()Lcom/ali/user/open/core/config/Environment;

    move-result-object v0

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

    sget-object v0, Lcom/ali/user/open/core/context/KernelContext;->serviceRegistry:Lcom/ali/user/open/core/registry/a;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/ali/user/open/core/registry/a;->a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/ali/user/open/core/context/KernelContext;->serviceRegistry:Lcom/ali/user/open/core/registry/a;

    invoke-interface {v0, p0, p1}, Lcom/ali/user/open/core/registry/a;->a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getServices(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    sget-object v0, Lcom/ali/user/open/core/context/KernelContext;->serviceRegistry:Lcom/ali/user/open/core/registry/a;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/ali/user/open/core/registry/a;->b(Ljava/lang/Class;Ljava/util/Map;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/user/open/core/registry/ServiceRegistration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ali/user/open/core/registry/ServiceRegistration;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    sget-object v1, Lcom/ali/user/open/core/context/KernelContext;->serviceRegistry:Lcom/ali/user/open/core/registry/a;

    invoke-interface {v1, p0, p1, v0}, Lcom/ali/user/open/core/registry/a;->a([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/user/open/core/registry/ServiceRegistration;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static wrapServiceRegistry()V
    .locals 2

    sget-object v0, Lcom/ali/user/open/core/context/KernelContext;->serviceRegistry:Lcom/ali/user/open/core/registry/a;

    instance-of v0, v0, Lcom/ali/user/open/core/registry/a/b;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ali/user/open/core/registry/a/b;

    sget-object v1, Lcom/ali/user/open/core/context/KernelContext;->serviceRegistry:Lcom/ali/user/open/core/registry/a;

    invoke-direct {v0, v1}, Lcom/ali/user/open/core/registry/a/b;-><init>(Lcom/ali/user/open/core/registry/a;)V

    sput-object v0, Lcom/ali/user/open/core/context/KernelContext;->serviceRegistry:Lcom/ali/user/open/core/registry/a;

    goto :goto_0
.end method
