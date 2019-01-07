.class public interface abstract Lcom/alibaba/doraemon/trace/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# static fields
.field public static final LEVEL_ERROR:I = 0x1

.field public static final LEVEL_INFO:I = 0x0

.field public static final TRACE_ARTIFACT:Ljava/lang/String; = "TRACE"

.field public static final TRACE_ARTIFACT2:Ljava/lang/String; = "TRACE2"


# virtual methods
.method public abstract bridge(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract bridgeFrom(Ljava/lang/String;)V
.end method

.method public abstract bridgeTo(Ljava/lang/String;)V
.end method

.method public abstract endTrace()V
.end method

.method public varargs abstract error([Ljava/lang/String;)V
.end method

.method public abstract fill2OutputStream(Ljava/io/OutputStream;Ljava/lang/String;ILjava/util/Date;Ljava/util/Date;)V
.end method

.method public abstract fillAll2OutputStream(Ljava/lang/String;Ljava/io/OutputStream;ILjava/util/Date;Ljava/util/Date;)V
.end method

.method public varargs abstract info([Ljava/lang/String;)V
.end method

.method public abstract obtainMessage(Ljava/lang/Runnable;)Landroid/os/Message;
.end method

.method public varargs abstract startTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract wrapCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;)",
            "Ljava/util/concurrent/Callable",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract wrapRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end method
