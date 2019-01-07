.class public Lcom/alibaba/doraemon/impl/request/ClearCacheRequest;
.super Lcom/alibaba/doraemon/impl/request/VolleyRequest;
.source "ClearCacheRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCache:Lcom/alibaba/doraemon/impl/request/Cache;

.field private final mCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/request/Cache;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "cache"    # Lcom/alibaba/doraemon/impl/request/Cache;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;-><init>(ILjava/lang/String;Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;)V

    .line 45
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/ClearCacheRequest;->mCache:Lcom/alibaba/doraemon/impl/request/Cache;

    .line 46
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/ClearCacheRequest;->mCallback:Ljava/lang/Runnable;

    .line 47
    return-void
.end method


# virtual methods
.method public deliverResponse(ILjava/lang/Object;JLjava/util/Map;)V
    .locals 0
    .param p1, "StatusCode"    # I
    .param p2, "response"    # Ljava/lang/Object;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public getPriority()Lcom/alibaba/doraemon/Priority;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/ClearCacheRequest;->mCache:Lcom/alibaba/doraemon/impl/request/Cache;

    invoke-interface {v1}, Lcom/alibaba/doraemon/impl/request/Cache;->clear()V

    .line 53
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/ClearCacheRequest;->mCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/ClearCacheRequest;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 57
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public parseNetworkResponse(Lcom/alibaba/doraemon/impl/request/NetworkResponse;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;
    .locals 1
    .param p1, "response"    # Lcom/alibaba/doraemon/impl/request/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/NetworkResponse;",
            ")",
            "Lcom/alibaba/doraemon/impl/request/VolleyResponse",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method
