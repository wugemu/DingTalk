.class public interface abstract Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$Callback;
.super Ljava/lang/Object;
.source "UrlStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;)V
.end method
