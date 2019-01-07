.class public abstract Lcom/alibaba/doraemon/impl/request/DownloaderHandler;
.super Ljava/lang/Object;
.source "DownloaderHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;
    }
.end annotation


# static fields
.field public static final INIT_CAPACITY:I = 0x10000

.field public static final INNER_ITEM_SEPARATOR:C = ':'

.field public static final LOG_ITEM_SEPARATOR:C = ':'

.field public static final MAX_SIZE:I = 0xf000

.field private static final TAG:Ljava/lang/String; = "DownloaderHandler"


# instance fields
.field protected mExceptionHandler:Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;

.field protected mInvalid:Z

.field protected mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

.field protected mStart:J


# direct methods
.method protected constructor <init>(Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;J)V
    .locals 2
    .param p1, "exceptionHandler"    # Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;
    .param p2, "start"    # J

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/DownloaderHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    .line 51
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/DownloaderHandler;->mExceptionHandler:Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;

    .line 52
    iput-wide p2, p0, Lcom/alibaba/doraemon/impl/request/DownloaderHandler;->mStart:J

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/DownloaderHandler;->mInvalid:Z

    .line 54
    return-void
.end method


# virtual methods
.method protected deliveryException(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    const/16 v3, 0x3a

    .line 37
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 38
    .local v0, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "path"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 39
    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "code"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "desc"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 42
    const-string/jumbo v1, "DownloaderHandler"

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public abstract finishSegment(Lcom/alibaba/doraemon/impl/request/ResponseDelivery;Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/lwp/LWPFileSegment;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/ResponseDelivery;",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;",
            "Lcom/alibaba/doraemon/lwp/LWPFileSegment;",
            ")Z"
        }
    .end annotation
.end method

.method protected getCacheClient(Lcom/alibaba/doraemon/impl/request/VolleyRequest;)Lcom/alibaba/doraemon/request/CacheClient;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;)",
            "Lcom/alibaba/doraemon/request/CacheClient;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->shouldCache()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getCacheClient()Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v0

    .line 72
    .local v0, "cacheClient":Lcom/alibaba/doraemon/request/CacheClient;
    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->getInstance()Lcom/alibaba/doraemon/impl/request/CacheClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->getDefaultCacheClient()Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v0

    .line 79
    :cond_0
    :goto_0
    return-object v0

    .line 76
    .end local v0    # "cacheClient":Lcom/alibaba/doraemon/request/CacheClient;
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->getInstance()Lcom/alibaba/doraemon/impl/request/CacheClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->getTmpCacheClient()Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v0

    .restart local v0    # "cacheClient":Lcom/alibaba/doraemon/request/CacheClient;
    goto :goto_0
.end method

.method protected getDownloadThread()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 84
    .local v0, "downloadThread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "DownloaderHandler"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 86
    return-object v0
.end method

.method public abstract isHuge()Z
.end method

.method protected isInvalidFileSegment(Lcom/alibaba/doraemon/lwp/LWPFileSegment;)Z
    .locals 4
    .param p1, "fileSegment"    # Lcom/alibaba/doraemon/lwp/LWPFileSegment;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    invoke-interface {p1}, Lcom/alibaba/doraemon/lwp/LWPFileSegment;->getStart()J

    move-result-wide v0

    .line 91
    .local v0, "fs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/request/DownloaderHandler;->mStart:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract processSegment(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/lwp/LWPFileSegment;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;",
            "Lcom/alibaba/doraemon/lwp/LWPFileSegment;",
            ")Z"
        }
    .end annotation
.end method

.method protected putSegToCache(Ljava/io/InputStream;JJLcom/alibaba/doraemon/impl/request/VolleyRequest;Z)Z
    .locals 8
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "skip"    # J
    .param p4, "totalLength"    # J
    .param p6, "request"    # Lcom/alibaba/doraemon/impl/request/VolleyRequest;
    .param p7, "isEnd"    # Z

    .prologue
    .line 58
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v7, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "content-length"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p0, p6}, Lcom/alibaba/doraemon/impl/request/DownloaderHandler;->getCacheClient(Lcom/alibaba/doraemon/impl/request/VolleyRequest;)Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v0

    .line 63
    .local v0, "cacheClient":Lcom/alibaba/doraemon/request/CacheClient;
    invoke-virtual {p6}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getRequest()Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    .line 64
    invoke-static {v7}, Lcom/alibaba/doraemon/utils/CommonUtils;->map2JSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-wide v2, p2

    move-object v4, p1

    move v5, p7

    .line 63
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/doraemon/request/CacheClient;->onSaveSegmentData(Lcom/alibaba/doraemon/request/Request;JLjava/io/InputStream;Z[B)Z

    move-result v1

    return v1
.end method
