.class public abstract Lcom/alibaba/doraemon/impl/request/VolleyRequest;
.super Ljava/lang/Object;
.source "VolleyRequest.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PARAMS_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final SLOW_REQUEST_THRESHOLD_MS:J = 0xbb8L


# instance fields
.field private mAuthNotifyUrl:Ljava/lang/String;

.field private mCacheClient:Lcom/alibaba/doraemon/request/CacheClient;

.field private mCacheEntry:Lcom/alibaba/doraemon/impl/request/Cache$Entry;

.field private mCacheKey:Ljava/lang/String;

.field private mCanceled:Z

.field private mDefaultTrafficStatsTag:I

.field private mErrorListener:Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;

.field private final mEventLog:Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;

.field private mIsSurpportRange:Z

.field protected mListener:Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;

.field private mMethod:I

.field private mRedirectUrl:Ljava/lang/String;

.field private mRequest:Lcom/alibaba/doraemon/request/Request;

.field private mRequestBirthTime:J

.field private mResponseDelivered:Z

.field private mRetryPolicy:Lcom/alibaba/doraemon/request/RetryPolicy;

.field private mSequence:Ljava/lang/Integer;

.field private mShouldCache:Z

.field private mStartTime:J

.field private mTag:Ljava/lang/Object;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-boolean v0, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mEventLog:Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mShouldCache:Z

    .line 85
    iput-boolean v4, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mCanceled:Z

    .line 88
    iput-boolean v4, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mResponseDelivered:Z

    .line 91
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mRequestBirthTime:J

    .line 100
    iput-object v1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mCacheKey:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mCacheClient:Lcom/alibaba/doraemon/request/CacheClient;

    .line 110
    iput-object v1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mCacheEntry:Lcom/alibaba/doraemon/impl/request/Cache$Entry;

    .line 116
    iput-boolean v4, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mIsSurpportRange:Z

    .line 125
    return-void

    :cond_0
    move-object v0, v1

    .line 51
    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;)V
    .locals 5
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;

    .prologue
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-boolean v0, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mEventLog:Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mShouldCache:Z

    .line 85
    iput-boolean v4, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mCanceled:Z

    .line 88
    iput-boolean v4, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mResponseDelivered:Z

    .line 91
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mRequestBirthTime:J

    .line 100
    iput-object v1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mCacheKey:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mCacheClient:Lcom/alibaba/doraemon/request/CacheClient;

    .line 110
    iput-object v1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mCacheEntry:Lcom/alibaba/doraemon/impl/request/Cache$Entry;

    .line 116
    iput-boolean v4, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mIsSurpportRange:Z

    .line 146
    iput p1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mMethod:I

    .line 147
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mUrl:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mErrorListener:Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;

    .line 149
    new-instance v0, Lcom/alibaba/doraemon/impl/request/DefaultRetryPolicy;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/request/DefaultRetryPolicy;-><init>()V

    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->setRetryPolicy(Lcom/alibaba/doraemon/request/RetryPolicy;)Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    .line 151
    invoke-static {p2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->findDefaultTrafficStatsTag(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mDefaultTrafficStatsTag:I

    .line 152
    return-void

    :cond_0
    move-object v0, v1

    .line 51
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;-><init>(ILjava/lang/String;Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;)V

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/request/VolleyRequest;)Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mEventLog:Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;

    return-object v0
.end method

.method private encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 6
    .param p2, "paramsEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 553
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
    .local v0, "encodedParams":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 556
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 557
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 559
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 564
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 565
    .local v2, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Encoding not supported: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 563
    .end local v2    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3
.end method

.method private static findDefaultTrafficStatsTag(Ljava/lang/String;)I
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 262
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 267
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addMarker(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 284
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    sget-boolean v0, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mEventLog:Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mRequestBirthTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mRequestBirthTime:J

    goto :goto_0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 411
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mCanceled:Z

    .line 412
    return-void
.end method

.method public compareTo(Lcom/alibaba/doraemon/impl/request/VolleyRequest;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<TT;>;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 699
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    .local p1, "other":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getPriority()Lcom/alibaba/doraemon/Priority;

    move-result-object v0

    .line 700
    .local v0, "left":Lcom/alibaba/doraemon/Priority;
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getPriority()Lcom/alibaba/doraemon/Priority;

    move-result-object v1

    .line 704
    .local v1, "right":Lcom/alibaba/doraemon/Priority;
    invoke-virtual {v0}, Lcom/alibaba/doraemon/Priority;->ordinal()I

    move-result v2

    invoke-virtual {v1}, Lcom/alibaba/doraemon/Priority;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mSequence:Ljava/lang/Integer;

    .line 705
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p1, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    .line 706
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/doraemon/Priority;->ordinal()I

    move-result v2

    invoke-virtual {v0}, Lcom/alibaba/doraemon/Priority;->ordinal()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    check-cast p1, Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->compareTo(Lcom/alibaba/doraemon/impl/request/VolleyRequest;)I

    move-result v0

    return v0
.end method

.method protected deliverError(Lcom/alibaba/doraemon/impl/request/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/alibaba/doraemon/impl/request/VolleyError;

    .prologue
    .line 663
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mErrorListener:Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mErrorListener:Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;->onErrorResponse(Lcom/alibaba/doraemon/impl/request/VolleyError;)V

    .line 666
    :cond_0
    return-void
.end method

.method protected deliverProgress(JJ)V
    .locals 1
    .param p1, "maxSize"    # J
    .param p3, "downloadSize"    # J

    .prologue
    .line 676
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mListener:Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mListener:Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;->onProgressChange(JJ)V

    .line 679
    :cond_0
    return-void
.end method

.method protected abstract deliverResponse(ILjava/lang/Object;JLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public finish(Ljava/lang/String;)V
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 298
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    sget-boolean v1, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v1, :cond_2

    .line 299
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    .line 300
    .local v4, "threadId":J
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-eq v1, v6, :cond_1

    .line 303
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 304
    .local v0, "mainThread":Landroid/os/Handler;
    new-instance v1, Lcom/alibaba/doraemon/impl/request/VolleyRequest$1;

    invoke-direct {v1, p0, p1, v4, v5}, Lcom/alibaba/doraemon/impl/request/VolleyRequest$1;-><init>(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    .end local v0    # "mainThread":Landroid/os/Handler;
    .end local v4    # "threadId":J
    :cond_0
    :goto_0
    return-void

    .line 314
    .restart local v4    # "threadId":J
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mEventLog:Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;

    invoke-virtual {v1, p1, v4, v5}, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    .line 315
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mEventLog:Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    .end local v4    # "threadId":J
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mRequestBirthTime:J

    sub-long v2, v6, v8

    .line 318
    .local v2, "requestTime":J
    const-wide/16 v6, 0xbb8

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    .line 319
    const-string/jumbo v1, "%d ms: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v6}, Lcom/alibaba/doraemon/impl/request/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getAuthNotifyUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mAuthNotifyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/doraemon/impl/request/AuthFailureError;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 542
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 543
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v1

    .line 546
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 523
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v2

    .line 524
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 525
    const-string/jumbo v3, "Content-Type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 526
    .local v1, "contentType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lcom/alibaba/doraemon/impl/request/AuthFailureError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 533
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "authFailureError":Lcom/alibaba/doraemon/impl/request/AuthFailureError;
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/AuthFailureError;->printStackTrace()V

    .line 533
    .end local v0    # "authFailureError":Lcom/alibaba/doraemon/impl/request/AuthFailureError;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "application/x-www-form-urlencoded; charset="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCacheClient()Lcom/alibaba/doraemon/request/CacheClient;
    .locals 1

    .prologue
    .line 689
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mCacheClient:Lcom/alibaba/doraemon/request/CacheClient;

    return-object v0
.end method

.method public getCacheEntry()Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    .locals 1

    .prologue
    .line 404
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mCacheEntry:Lcom/alibaba/doraemon/impl/request/Cache$Entry;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mCacheKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mCacheKey:Ljava/lang/String;

    .line 376
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/doraemon/impl/request/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 230
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iget v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mMethod:I

    return v0
.end method

.method public getOriginUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParamsEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    const-string/jumbo v0, "UTF-8"

    return-object v0
.end method

.method public getPostBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/doraemon/impl/request/AuthFailureError;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 486
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getPostParams()Ljava/util/Map;

    move-result-object v0

    .line 487
    .local v0, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getPostParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v1

    .line 490
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 471
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/doraemon/impl/request/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 444
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParamsEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 463
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/alibaba/doraemon/Priority;
    .locals 1

    .prologue
    .line 590
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    sget-object v0, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    return-object v0
.end method

.method public getRequest()Lcom/alibaba/doraemon/request/Request;
    .locals 1

    .prologue
    .line 216
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mRequest:Lcom/alibaba/doraemon/request/Request;

    return-object v0
.end method

.method public getRetryPolicy()Lcom/alibaba/doraemon/request/RetryPolicy;
    .locals 1

    .prologue
    .line 606
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mRetryPolicy:Lcom/alibaba/doraemon/request/RetryPolicy;

    return-object v0
.end method

.method public final getSequence()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 340
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mSequence:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getSequence called before setSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getStartTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 197
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mStartTime:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 246
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTimeoutMs()I
    .locals 1

    .prologue
    .line 599
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mRetryPolicy:Lcom/alibaba/doraemon/request/RetryPolicy;

    invoke-interface {v0}, Lcom/alibaba/doraemon/request/RetryPolicy;->getCurrentTimeout()I

    move-result v0

    return v0
.end method

.method public getTrafficStatsTag()I
    .locals 1

    .prologue
    .line 253
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iget v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mDefaultTrafficStatsTag:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mRedirectUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mRedirectUrl:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasHadResponseDelivered()Z
    .locals 1

    .prologue
    .line 622
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mResponseDelivered:Z

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 418
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mCanceled:Z

    return v0
.end method

.method public isSurpportRange()Z
    .locals 1

    .prologue
    .line 155
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mIsSurpportRange:Z

    return v0
.end method

.method public markDelivered()V
    .locals 1

    .prologue
    .line 614
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mResponseDelivered:Z

    .line 615
    return-void
.end method

.method protected parseNetworkError(Lcom/alibaba/doraemon/impl/request/VolleyError;)Lcom/alibaba/doraemon/impl/request/VolleyError;
    .locals 0
    .param p1, "volleyError"    # Lcom/alibaba/doraemon/impl/request/VolleyError;

    .prologue
    .line 644
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    return-object p1
.end method

.method protected abstract parseNetworkResponse(Lcom/alibaba/doraemon/impl/request/NetworkResponse;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/NetworkResponse;",
            ")",
            "Lcom/alibaba/doraemon/impl/request/VolleyResponse",
            "<TT;>;"
        }
    .end annotation
.end method

.method public setAuthNotifyUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "authNotifyUrl"    # Ljava/lang/String;

    .prologue
    .line 174
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mAuthNotifyUrl:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setCacheClient(Lcom/alibaba/doraemon/request/CacheClient;)Lcom/alibaba/doraemon/impl/request/VolleyRequest;
    .locals 0
    .param p1, "client"    # Lcom/alibaba/doraemon/request/CacheClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/request/CacheClient;",
            ")",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 683
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mCacheClient:Lcom/alibaba/doraemon/request/CacheClient;

    .line 684
    return-object p0
.end method

.method public setCacheEntry(Lcom/alibaba/doraemon/impl/request/Cache$Entry;)Lcom/alibaba/doraemon/impl/request/VolleyRequest;
    .locals 0
    .param p1, "entry"    # Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/Cache$Entry;",
            ")",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mCacheEntry:Lcom/alibaba/doraemon/impl/request/Cache$Entry;

    .line 397
    return-object p0
.end method

.method public setCacheKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 385
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mCacheKey:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public setErrorListener(Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;

    .prologue
    .line 185
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mErrorListener:Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;

    .line 186
    return-void
.end method

.method public setListener(Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener",
            "<",
            "Lcom/alibaba/doraemon/request/RequestInputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    .local p1, "listener":Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener<Lcom/alibaba/doraemon/request/RequestInputStream;>;"
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mListener:Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;

    .line 193
    return-void
.end method

.method public setMethod(I)V
    .locals 0
    .param p1, "method"    # I

    .prologue
    .line 223
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iput p1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mMethod:I

    .line 224
    return-void
.end method

.method public setRedirectUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirectUrl"    # Ljava/lang/String;

    .prologue
    .line 365
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mRedirectUrl:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setRequest(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 209
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mRequest:Lcom/alibaba/doraemon/request/Request;

    .line 210
    return-void
.end method

.method public setRetryPolicy(Lcom/alibaba/doraemon/request/RetryPolicy;)Lcom/alibaba/doraemon/impl/request/VolleyRequest;
    .locals 0
    .param p1, "retryPolicy"    # Lcom/alibaba/doraemon/request/RetryPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/request/RetryPolicy;",
            ")",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mRetryPolicy:Lcom/alibaba/doraemon/request/RetryPolicy;

    .line 277
    return-object p0
.end method

.method public final setSequence(I)Lcom/alibaba/doraemon/impl/request/VolleyRequest;
    .locals 1
    .param p1, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mSequence:Ljava/lang/Integer;

    .line 332
    return-object p0
.end method

.method public final setShouldCache(Z)Lcom/alibaba/doraemon/impl/request/VolleyRequest;
    .locals 0
    .param p1, "shouldCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 575
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iput-boolean p1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mShouldCache:Z

    .line 576
    return-object p0
.end method

.method public setStartTime(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 202
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iput-wide p1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mStartTime:J

    .line 203
    return-void
.end method

.method public setSurpportRange(Z)V
    .locals 0
    .param p1, "isSurpportRange"    # Z

    .prologue
    .line 159
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iput-boolean p1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mIsSurpportRange:Z

    .line 160
    return-void
.end method

.method public setTag(Ljava/lang/Object;)Lcom/alibaba/doraemon/impl/request/VolleyRequest;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mTag:Ljava/lang/Object;

    .line 238
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 166
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mUrl:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public final shouldCache()Z
    .locals 1

    .prologue
    .line 583
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mShouldCache:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 711
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getTrafficStatsTag()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, "trafficStatsTag":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mCanceled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "[X] "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 713
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getPriority()Lcom/alibaba/doraemon/Priority;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 712
    :cond_0
    const-string/jumbo v1, "[ ] "

    goto :goto_0
.end method
