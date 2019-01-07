.class public Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;
.super Ljava/lang/Object;
.source "H5MemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$H5LruCache;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "H5MemoryCache"

.field private static instance:Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;


# instance fields
.field private final mAppCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCanUseCache:Z


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v3, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$H5LruCache;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$H5LruCache;-><init>(I)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->mAppCache:Ljava/util/Map;

    .line 31
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->mCanUseCache:Z

    .line 41
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 42
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 43
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_1

    .line 44
    const-string/jumbo v3, "h5_use_appCache"

    new-instance v4, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$1;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$1;-><init>(Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;)V

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v3, "no"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->mCanUseCache:Z

    .line 53
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->mCanUseCache:Z

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;
    .locals 2

    .prologue
    .line 34
    const-class v1, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->instance:Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->instance:Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    .line 37
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->instance:Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearMemory()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->mAppCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "H5MemoryCache"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deleteAppInfoFromMemory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->mAppCache:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->mAppCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 113
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_0
    monitor-exit v3

    .line 120
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    :goto_0
    return-void

    .line 116
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5MemoryCache"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAppInfoFromMemory(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 79
    :try_start_0
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->mCanUseCache:Z

    if-nez v2, :cond_0

    .line 80
    const-string/jumbo v2, "H5MemoryCache"

    const-string/jumbo v4, " can not use cache config is close"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 104
    :goto_0
    return-object v2

    .line 84
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v3

    .line 85
    goto :goto_0

    .line 87
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->mAppCache:Ljava/util/Map;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->mAppCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 89
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->mAppCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 90
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    :cond_2
    monitor-exit v4

    move-object v2, v3

    goto :goto_0

    .line 94
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "*"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 95
    const-string/jumbo v2, "H5MemoryCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " getNebulaAppInfo from H5MemoryCache "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    monitor-exit v4

    goto :goto_0

    .line 99
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5MemoryCache"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    move-object v2, v3

    .line 104
    goto :goto_0

    .line 99
    :cond_4
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public saveAppInfoToMemory(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 5
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 61
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->mAppCache:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->mAppCache:Ljava/util/Map;

    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->mAppCache:Ljava/util/Map;

    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 64
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :goto_1
    monitor-exit v3

    goto :goto_0

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5MemoryCache"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 67
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->mAppCache:Ljava/util/Map;

    iget-object v4, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
