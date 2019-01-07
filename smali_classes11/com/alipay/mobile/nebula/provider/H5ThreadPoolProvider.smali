.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;
.super Ljava/lang/Object;
.source "H5ThreadPoolProvider.java"


# virtual methods
.method public abstract getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
.end method

.method public abstract getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.end method

.method public abstract submitOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V
.end method
