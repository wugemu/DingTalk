.class public interface abstract Lcom/alibaba/doraemon/request/RequestStatisticsListener;
.super Ljava/lang/Object;
.source "RequestStatisticsListener.java"


# virtual methods
.method public abstract onHitCacheFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onHitCacheSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRequestEnd(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRequestFailed(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRequestStart(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRequestSuccess(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRequestTraffic(JJLjava/lang/String;Ljava/lang/String;)V
.end method
