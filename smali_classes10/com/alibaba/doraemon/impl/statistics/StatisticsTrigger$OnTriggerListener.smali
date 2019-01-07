.class public interface abstract Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;
.super Ljava/lang/Object;
.source "StatisticsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTriggerListener"
.end annotation


# virtual methods
.method public abstract onBackgroundSample()V
.end method

.method public abstract onEnterBackground()V
.end method

.method public abstract onEnterForeground()V
.end method

.method public abstract onForegroundSample()V
.end method
