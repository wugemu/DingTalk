.class public Lcom/taobao/taobaoavsdk/cache/library/InterruptedProxyCacheException;
.super Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;
.source "InterruptedProxyCacheException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;-><init>(Ljava/lang/Throwable;)V

    .line 20
    return-void
.end method
