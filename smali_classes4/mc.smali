.class final Lmc;
.super Ljava/lang/Object;
.source "AVFSCacheImpl.java"

# interfaces
.implements Lanetwork/channel/cache/Cache;


# static fields
.field private static a:Z

.field private static b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lmc;->a:Z

    .line 18
    sput-object v3, Lmc;->b:Ljava/lang/Object;

    .line 21
    :try_start_0
    const-string/jumbo v0, "com.taobao.alivfssdk.cache.AVFSCacheManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    new-instance v0, Lmc$1;

    invoke-direct {v0}, Lmc$1;-><init>()V

    sput-object v0, Lmc;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    sput-boolean v2, Lmc;->a:Z

    .line 29
    const-string/jumbo v0, "anet.AVFSCacheImpl"

    const-string/jumbo v1, "no alivfs sdk!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2}, Lanet/channel/util/ALog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 34
    sget-boolean v2, Lmc;->a:Z

    if-nez v2, :cond_1

    .line 45
    .local v1, "moduleCache":Lcom/taobao/alivfssdk/cache/AVFSCache;
    :cond_0
    :goto_0
    return-void

    .line 38
    .end local v1    # "moduleCache":Lcom/taobao/alivfssdk/cache/AVFSCache;
    :cond_1
    invoke-static {}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->getInstance()Lcom/taobao/alivfssdk/cache/AVFSCacheManager;

    move-result-object v2

    const-string/jumbo v3, "networksdk.httpcache"

    invoke-virtual {v2, v3}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->cacheForModule(Ljava/lang/String;)Lcom/taobao/alivfssdk/cache/AVFSCache;

    move-result-object v1

    .line 39
    .restart local v1    # "moduleCache":Lcom/taobao/alivfssdk/cache/AVFSCache;
    if-eqz v1, :cond_0

    .line 40
    new-instance v0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;

    invoke-direct {v0}, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;-><init>()V

    .line 41
    .local v0, "config":Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;
    const-wide/32 v2, 0x500000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->limitSize:Ljava/lang/Long;

    .line 42
    const-wide/32 v2, 0x100000

    iput-wide v2, v0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->fileMemMaxSize:J

    .line 43
    invoke-virtual {v1, v0}, Lcom/taobao/alivfssdk/cache/AVFSCache;->moduleConfig(Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;)Lcom/taobao/alivfssdk/cache/AVFSCache;

    goto :goto_0
.end method

.method private static b()Lcom/taobao/alivfssdk/cache/IAVFSCache;
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->getInstance()Lcom/taobao/alivfssdk/cache/AVFSCacheManager;

    move-result-object v1

    const-string/jumbo v2, "networksdk.httpcache"

    invoke-virtual {v1, v2}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->cacheForModule(Ljava/lang/String;)Lcom/taobao/alivfssdk/cache/AVFSCache;

    move-result-object v0

    .line 84
    .local v0, "moduleCache":Lcom/taobao/alivfssdk/cache/AVFSCache;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/taobao/alivfssdk/cache/AVFSCache;->getFileCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v1

    .line 87
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lanetwork/channel/cache/Cache$Entry;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 49
    sget-boolean v2, Lmc;->a:Z

    if-nez v2, :cond_0

    move-object v2, v3

    .line 62
    :goto_0
    return-object v2

    .line 54
    :cond_0
    :try_start_0
    invoke-static {}, Lmc;->b()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v0

    .line 55
    .local v0, "avfsCache":Lcom/taobao/alivfssdk/cache/IAVFSCache;
    if-eqz v0, :cond_1

    .line 56
    invoke-static {p1}, Lla;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-interface {v0, p1}, Lcom/taobao/alivfssdk/cache/IAVFSCache;->objectForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanetwork/channel/cache/Cache$Entry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    .end local v0    # "avfsCache":Lcom/taobao/alivfssdk/cache/IAVFSCache;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "anet.AVFSCacheImpl"

    const-string/jumbo v4, "get cache failed"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v3, v1, v5}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v2, v3

    .line 62
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lanetwork/channel/cache/Cache$Entry;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lanetwork/channel/cache/Cache$Entry;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 67
    sget-boolean v2, Lmc;->a:Z

    if-nez v2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    :try_start_0
    invoke-static {}, Lmc;->b()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v0

    .line 73
    .local v0, "avfsCache":Lcom/taobao/alivfssdk/cache/IAVFSCache;
    if-eqz v0, :cond_0

    .line 74
    invoke-static {p1}, Lla;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    sget-object v2, Lmc;->b:Ljava/lang/Object;

    check-cast v2, Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectSetCallback;

    invoke-interface {v0, p1, p2, v2}, Lcom/taobao/alivfssdk/cache/IAVFSCache;->setObjectForKey(Ljava/lang/String;Ljava/lang/Object;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectSetCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    .end local v0    # "avfsCache":Lcom/taobao/alivfssdk/cache/IAVFSCache;
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "anet.AVFSCacheImpl"

    const-string/jumbo v3, "put cache failed"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v1, v5}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
