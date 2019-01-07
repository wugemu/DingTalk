.class public Lcom/alibaba/doraemon/impl/request/CacheClientManager;
.super Ljava/lang/Object;
.source "CacheClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/request/CacheClientManager$ResponseImpl;
    }
.end annotation


# static fields
.field public static final DEFAULT_ARTIFACT:Ljava/lang/String; = "REQDEFCACHE"

.field public static final TMP_ARTIFACT:Ljava/lang/String; = "REQTTMPCACHE"

.field private static sInstance:Lcom/alibaba/doraemon/impl/request/CacheClientManager;


# instance fields
.field private final mDefaultCacheClient:Lcom/alibaba/doraemon/request/CacheClient;

.field private final mTmpCacheClient:Lcom/alibaba/doraemon/request/CacheClient;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string/jumbo v1, "REQDEFCACHE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 68
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    const-string/jumbo v1, "REQDEFCACHE"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/cache/Cache;->setCacheDir(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v1, "REQTTMPCACHE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cache":Lcom/alibaba/doraemon/cache/Cache;
    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 71
    .restart local v0    # "cache":Lcom/alibaba/doraemon/cache/Cache;
    const-string/jumbo v1, "REQTTMPCACHE"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/cache/Cache;->setCacheDir(Ljava/lang/String;)V

    .line 73
    new-instance v1, Lcom/alibaba/doraemon/impl/request/CacheClientManager$1;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/request/CacheClientManager$1;-><init>(Lcom/alibaba/doraemon/impl/request/CacheClientManager;)V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->mDefaultCacheClient:Lcom/alibaba/doraemon/request/CacheClient;

    .line 134
    new-instance v1, Lcom/alibaba/doraemon/impl/request/CacheClientManager$2;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/request/CacheClientManager$2;-><init>(Lcom/alibaba/doraemon/impl/request/CacheClientManager;)V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->mTmpCacheClient:Lcom/alibaba/doraemon/request/CacheClient;

    .line 178
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/doraemon/impl/request/CacheClientManager;
    .locals 2

    .prologue
    .line 51
    const-class v1, Lcom/alibaba/doraemon/impl/request/CacheClientManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->sInstance:Lcom/alibaba/doraemon/impl/request/CacheClientManager;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/alibaba/doraemon/impl/request/CacheClientManager;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/request/CacheClientManager;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->sInstance:Lcom/alibaba/doraemon/impl/request/CacheClientManager;

    .line 55
    :cond_0
    sget-object v0, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->sInstance:Lcom/alibaba/doraemon/impl/request/CacheClientManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getDefaultCacheClient()Lcom/alibaba/doraemon/request/CacheClient;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->mDefaultCacheClient:Lcom/alibaba/doraemon/request/CacheClient;

    return-object v0
.end method

.method public getTmpCacheClient()Lcom/alibaba/doraemon/request/CacheClient;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->mTmpCacheClient:Lcom/alibaba/doraemon/request/CacheClient;

    return-object v0
.end method
