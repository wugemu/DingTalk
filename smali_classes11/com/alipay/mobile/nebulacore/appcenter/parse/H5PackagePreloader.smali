.class public Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;
.super Ljava/lang/Object;
.source "H5PackagePreloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "H5PackagePreloader"

.field private static sPreloadingThreads:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParsedPackageContent(Landroid/os/Bundle;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 9
    .param p0, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 70
    :try_start_0
    sget-object v5, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;->sPreloadingThreads:Ljava/util/LinkedList;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;->sPreloadingThreads:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-object v4

    .line 73
    :cond_1
    const-string/jumbo v5, "appId"

    invoke-static {p0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "appId":Ljava/lang/String;
    const-string/jumbo v5, "appVersion"

    invoke-static {p0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "version":Ljava/lang/String;
    sget-object v5, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;->sPreloadingThreads:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;

    .line 76
    .local v2, "thread":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;
    iget-object v6, v2, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->appId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v2, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->appVersion:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 77
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 79
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;->logPackagePreloadResult(ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v0    # "appId":Ljava/lang/String;
    .end local v2    # "thread":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;
    .end local v3    # "version":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 92
    .local v1, "thr":Ljava/lang/Throwable;
    const-string/jumbo v5, "H5PackagePreloader"

    const-string/jumbo v6, "getParsedPackageContent error!"

    invoke-static {v5, v6, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    invoke-static {v7, v8}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;->logPackagePreloadResult(ZZ)V

    goto :goto_0

    .line 82
    .end local v1    # "thr":Ljava/lang/Throwable;
    .restart local v0    # "appId":Ljava/lang/String;
    .restart local v2    # "thread":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;
    .restart local v3    # "version":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-boolean v6, v2, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->isSuccess:Z

    if-eqz v6, :cond_2

    .line 83
    const/4 v5, 0x0

    sput-object v5, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;->sPreloadingThreads:Ljava/util/LinkedList;

    .line 84
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;->logPackagePreloadResult(ZZ)V

    .line 85
    iget-object v4, v2, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->parsedPackageContent:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    .line 89
    .end local v2    # "thread":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;
    :cond_4
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;->logPackagePreloadResult(ZZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static logPackagePreloadResult(ZZ)V
    .locals 6
    .param p0, "isPreloadCompleted"    # Z
    .param p1, "isPreloadOnTarget"    # Z

    .prologue
    .line 178
    :try_start_0
    const-string/jumbo v2, "com.alipay.mobile.liteprocess.perf.PerformanceLogger"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 179
    .local v1, "loggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v2, "onPackagePrelodResult"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 180
    .local v0, "logMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 181
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v0    # "logMethod":Ljava/lang/reflect/Method;
    .end local v1    # "loggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static preloadPackage()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
