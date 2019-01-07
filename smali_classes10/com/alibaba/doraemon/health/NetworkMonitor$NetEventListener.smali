.class public interface abstract Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/health/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetEventListener"
.end annotation


# virtual methods
.method public abstract onRequest(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRequestEnd(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRequestStart(Ljava/lang/String;Ljava/lang/String;)V
.end method
