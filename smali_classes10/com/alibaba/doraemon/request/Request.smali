.class public interface abstract Lcom/alibaba/doraemon/request/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/request/Request$Method;
    }
.end annotation


# static fields
.field public static final PROTOCAL_ASSERT:Ljava/lang/String; = "assert"

.field public static final PROTOCAL_CACHE:Ljava/lang/String; = "cache"

.field public static final PROTOCAL_DATAURI:Ljava/lang/String; = "data"

.field public static final PROTOCAL_FILE:Ljava/lang/String; = "file"

.field public static final PROTOCAL_HTTP:Ljava/lang/String; = "http"

.field public static final PROTOCAL_LWP:Ljava/lang/String; = "lwp"

.field public static final PROTOCAL_SPDY:Ljava/lang/String; = "spdy"

.field public static final REQUEST_ARTIFACT:Ljava/lang/String; = "REQUEST"

.field public static final REQUEST_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final REQUEST_TRAFFIC_EVENT:Ljava/lang/String; = "TRAFFIC_EVENT"

.field public static final REQUEST_TRAFFIC_RX:Ljava/lang/String; = "TRAFFIC_RX"

.field public static final REQUEST_TRAFFIC_TX:Ljava/lang/String; = "TRAFFIC_TX"

.field public static final REQUEST_URL:Ljava/lang/String; = "TRAFFIC_URL"


# virtual methods
.method public abstract addReqest2Group(Ljava/lang/String;)V
.end method

.method public abstract cancel(Z)Z
.end method

.method public abstract cancelGroupRequest(Z)V
.end method

.method public abstract clearProtocolRequest(Ljava/lang/String;)V
.end method

.method public abstract getCacheKey()Ljava/lang/String;
.end method

.method public abstract getNotifyAuthUrl()Ljava/lang/String;
.end method

.method public abstract getPriority()Lcom/alibaba/doraemon/Priority;
.end method

.method public abstract getRequestUrl()Ljava/lang/String;
.end method

.method public abstract getTag(I)Ljava/lang/Object;
.end method

.method public abstract isCacheable()Z
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isDead()Z
.end method

.method public abstract isHugeDownload()Z
.end method

.method public abstract isReadCacheOnly()Z
.end method

.method public abstract markHugeDownload()Lcom/alibaba/doraemon/request/Request;
.end method

.method public abstract pauseGroupRequset()V
.end method

.method public abstract pauseRequset()V
.end method

.method public abstract registerStatisticsListener(Lcom/alibaba/doraemon/request/RequestStatisticsListener;)V
.end method

.method public abstract removeReqFromGroup(Ljava/lang/String;)V
.end method

.method public abstract resumeGroupRequest()V
.end method

.method public abstract resumeRequest()V
.end method

.method public abstract setCacheClient(Lcom/alibaba/doraemon/request/CacheClient;)Lcom/alibaba/doraemon/request/Request;
.end method

.method public abstract setCacheKey(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;
.end method

.method public abstract setCacheable(Z)Lcom/alibaba/doraemon/request/Request;
.end method

.method public abstract setMethod(I)V
.end method

.method public abstract setNotifyAuthUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;
.end method

.method public abstract setPerfTag(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;
.end method

.method public abstract setPriority(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/request/Request;
.end method

.method public abstract setReadCacheOnly(Z)Lcom/alibaba/doraemon/request/Request;
.end method

.method public abstract setRequestBody([B)Lcom/alibaba/doraemon/request/Request;
.end method

.method public abstract setRequestHeaders(Ljava/util/Map;)Lcom/alibaba/doraemon/request/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/doraemon/request/Request;"
        }
    .end annotation
.end method

.method public abstract setRequestParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;
.end method

.method public abstract setRequestParams(Ljava/util/Map;)Lcom/alibaba/doraemon/request/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/doraemon/request/Request;"
        }
    .end annotation
.end method

.method public abstract setRequestPolicy(Lcom/alibaba/doraemon/request/RetryPolicy;)Lcom/alibaba/doraemon/request/Request;
.end method

.method public abstract setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;
.end method

.method public abstract setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;
.end method

.method public abstract setTag(ILjava/lang/Object;)Lcom/alibaba/doraemon/request/Request;
.end method

.method public abstract setUrlRewriter(Lcom/alibaba/doraemon/request/UrlRewriter;)V
.end method

.method public abstract start()V
.end method

.method public abstract unregisterStatisticsListener(Lcom/alibaba/doraemon/request/RequestStatisticsListener;)V
.end method
