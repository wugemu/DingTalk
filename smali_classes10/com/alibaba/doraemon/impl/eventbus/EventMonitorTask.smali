.class public abstract Lcom/alibaba/doraemon/impl/eventbus/EventMonitorTask;
.super Ljava/lang/Object;
.source "EventMonitorTask.java"


# instance fields
.field private isCancel:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAfterEventExecute(Ljava/lang/Object;)V
.end method

.method public abstract onBeforeEventExecute(Ljava/lang/Object;)V
.end method

.method public abstract onEventClear(Ljava/lang/Object;)V
.end method

.method public abstract onEventStart(Ljava/lang/Object;)V
.end method
