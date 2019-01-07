.class public interface abstract Lcom/alibaba/doraemon/threadpool/Thread;
.super Ljava/lang/Object;
.source "Thread.java"


# static fields
.field public static final THREAD_ARTIFACT:Ljava/lang/String; = "THREAD"


# virtual methods
.method public abstract addThread2Group(Ljava/lang/String;)V
.end method

.method public abstract cancel(Z)V
.end method

.method public abstract cancelGroupThread(Z)V
.end method

.method public abstract dumpThreadStatus()Ljava/lang/String;
.end method

.method public abstract getGroupName()Ljava/lang/String;
.end method

.method public abstract getPriority()Lcom/alibaba/doraemon/Priority;
.end method

.method public abstract groupWaitingSize(Ljava/lang/String;)I
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract pauseGroupThread()V
.end method

.method public abstract removeThreadFromGroup(Ljava/lang/String;)V
.end method

.method public abstract resumeGroupThread()V
.end method

.method public abstract setGroupConcurrents(I)V
.end method

.method public abstract setPriority(Lcom/alibaba/doraemon/Priority;)V
.end method

.method public abstract start(Lcom/alibaba/doraemon/threadpool/ProgressCallable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/threadpool/ProgressCallable",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract start(Ljava/lang/Runnable;)V
.end method

.method public abstract start(Ljava/lang/String;Ljava/lang/Runnable;)V
.end method

.method public abstract start(Ljava/lang/String;Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable",
            "<*>;",
            "Landroid/os/Handler$Callback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract start(Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;",
            "Landroid/os/Handler$Callback;",
            ")V"
        }
    .end annotation
.end method
