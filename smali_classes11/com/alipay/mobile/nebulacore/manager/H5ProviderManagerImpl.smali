.class public Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;
.super Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
.source "H5ProviderManagerImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ProviderManagerImpl"

.field private static instance:Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;


# instance fields
.field private configInited:Z

.field private h5ConfigService:Lcom/alipay/mobile/h5container/service/H5ConfigService;

.field private providerInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;",
            ">;"
        }
    .end annotation
.end field

.field private providerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->providerMap:Ljava/util/Map;

    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->initProviderConfig()V

    .line 33
    return-void
.end method

.method private getH5ConfigService()Lcom/alipay/mobile/h5container/service/H5ConfigService;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->h5ConfigService:Lcom/alipay/mobile/h5container/service/H5ConfigService;

    if-nez v0, :cond_0

    .line 44
    const-class v0, Lcom/alipay/mobile/h5container/service/H5ConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5ConfigService;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->h5ConfigService:Lcom/alipay/mobile/h5container/service/H5ConfigService;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->h5ConfigService:Lcom/alipay/mobile/h5container/service/H5ConfigService;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->instance:Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->instance:Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    .line 39
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->instance:Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initProvider(Ljava/lang/String;Z)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "useCache"    # Z

    .prologue
    .line 72
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->providerInfoMap:Ljava/util/Map;

    if-nez v10, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 78
    .local v8, "time":J
    if-eqz p2, :cond_2

    .line 79
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->providerMap:Ljava/util/Map;

    invoke-interface {v10, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 84
    :cond_2
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->providerInfoMap:Ljava/util/Map;

    invoke-interface {v10, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 87
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->providerInfoMap:Ljava/util/Map;

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    .line 88
    .local v3, "info":Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;
    iget-object v0, v3, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;->bundleName:Ljava/lang/String;

    .line 89
    .local v0, "bundleName":Ljava/lang/String;
    iget-object v2, v3, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;->className:Ljava/lang/String;

    .line 91
    .local v2, "clazzName":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 92
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 96
    const/4 v6, 0x0

    .line 98
    .local v6, "object":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 99
    if-eqz v6, :cond_0

    .line 102
    const-string/jumbo v10, "H5ProviderManagerImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "initialize ext provider "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v6    # "object":Ljava/lang/Object;
    :goto_1
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->providerMap:Ljava/util/Map;

    invoke-interface {v10, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-boolean v10, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v8

    .line 114
    .local v4, "delta":J
    const-wide/16 v10, 0xa

    cmp-long v10, v4, v10

    if-lez v10, :cond_0

    .line 115
    const-string/jumbo v10, "H5ProviderManagerImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Nebula cost time initProviderConfig delta "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    .end local v4    # "delta":J
    :catch_0
    move-exception v7

    .line 104
    .local v7, "t":Ljava/lang/Throwable;
    const-string/jumbo v10, "H5ProviderManagerImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "failed to initialize provider "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private initProviderConfig()V
    .locals 8

    .prologue
    .line 51
    :try_start_0
    const-string/jumbo v3, "H5ProviderManagerImpl"

    const-string/jumbo v6, "initProviderConfig"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->configInited:Z

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 54
    .local v4, "time":J
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->providerInfoMap:Ljava/util/Map;

    .line 56
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getH5ConfigService()Lcom/alipay/mobile/h5container/service/H5ConfigService;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getH5ConfigService()Lcom/alipay/mobile/h5container/service/H5ConfigService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5ConfigService;->getProviderInfoMap()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getH5ConfigService()Lcom/alipay/mobile/h5container/service/H5ConfigService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5ConfigService;->getProviderInfoMap()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->providerInfoMap:Ljava/util/Map;

    .line 58
    const-string/jumbo v3, "H5ProviderManagerImpl"

    const-string/jumbo v6, "use getH5ConfigService().getProviderInfoMap()"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 64
    .local v0, "delta":J
    const-string/jumbo v3, "H5ProviderManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Nebula cost time initProviderConfig delta "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .end local v0    # "delta":J
    .end local v4    # "time":J
    :goto_1
    return-void

    .line 60
    .restart local v4    # "time":J
    :cond_0
    sget-object v3, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->providerInfoMap:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    .end local v4    # "time":J
    :catch_0
    move-exception v2

    .line 66
    .local v2, "t":Ljava/lang/Throwable;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->configInited:Z

    .line 67
    const-string/jumbo v3, "H5ProviderManagerImpl"

    const-string/jumbo v6, "parse h5 external provider configuration exception."

    invoke-static {v3, v6, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized getProvider(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 133
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProviderUseCache(Ljava/lang/String;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getProviderUseCache(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "useCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->configInited:Z

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->initProviderConfig()V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->providerInfoMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->providerInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->initProvider(Ljava/lang/String;Z)V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->providerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->providerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 150
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized removeProvider(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "H5ProviderManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeProvider:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->providerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setProvider(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :cond_1
    :try_start_1
    const-string/jumbo v0, "H5ProviderManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setProvider:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->providerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
