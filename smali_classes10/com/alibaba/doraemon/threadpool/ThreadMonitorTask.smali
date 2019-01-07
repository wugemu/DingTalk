.class public abstract Lcom/alibaba/doraemon/threadpool/ThreadMonitorTask;
.super Ljava/lang/Object;
.source "ThreadMonitorTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private isCancel:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/threadpool/ThreadMonitorTask;->isCancel:Z

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/threadpool/ThreadMonitorTask;->isCancel:Z

    .line 46
    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/alibaba/doraemon/threadpool/ThreadMonitorTask;->isCancel:Z

    return v0
.end method

.method public abstract onAfterThreadExecute(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract onBeforeThreadExecute(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract onThreadCanceled(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract onThreadStart(Ljava/lang/Object;Ljava/lang/String;)V
.end method
