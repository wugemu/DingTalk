.class public Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper;
.super Ljava/lang/Object;
.source "CoordinatorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    .local p0, "this":Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper;, "Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper<TParams;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private executeWithSki(Ljava/lang/Runnable;)Z
    .locals 8
    .param p1, "runnable"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p0, "this":Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper;, "Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper<TParams;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 32
    :try_start_0
    const-string/jumbo v4, "com.taobao.android.task.Coordinator"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 33
    .local v0, "coordinatorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "execute"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Runnable;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 34
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v0    # "coordinatorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    :catch_0
    move-exception v2

    :goto_1
    move v2, v3

    goto :goto_0

    .line 40
    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public varargs execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "asyncTask"    # Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask;",
            "[TParams;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 45
    .local p0, "this":Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper;, "Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper<TParams;>;"
    .local p2, "params":[Ljava/lang/Object;, "[TParams;"
    if-eqz p1, :cond_0

    .line 46
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->useSeparateThreadPool()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    sget-object v1, Lcom/ali/user/enterprise/base/coordinator/Coordinator;->sThreadPoolExecutor:Lcom/ali/user/enterprise/base/coordinator/Coordinator$CoordThreadPoolExecutor;

    invoke-virtual {p1, v1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper;, "Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper<TParams;>;"
    if-eqz p1, :cond_1

    .line 20
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->useSeparateThreadPool()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-static {p1}, Lcom/ali/user/enterprise/base/coordinator/Coordinator;->execute(Ljava/lang/Runnable;)V

    .line 24
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper;->executeWithSki(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    invoke-static {p1}, Lcom/ali/user/enterprise/base/coordinator/Coordinator;->execute(Ljava/lang/Runnable;)V

    .line 28
    :cond_1
    return-void

    .line 22
    :cond_2
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getThreadService()Lcom/ali/user/enterprise/base/coordinator/ThreadService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getThreadService()Lcom/ali/user/enterprise/base/coordinator/ThreadService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ali/user/enterprise/base/coordinator/ThreadService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
