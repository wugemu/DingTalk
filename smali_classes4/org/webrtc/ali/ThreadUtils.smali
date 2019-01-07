.class public Lorg/webrtc/ali/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/ThreadUtils$BlockingOperation;,
        Lorg/webrtc/ali/ThreadUtils$ThreadChecker;
    }
.end annotation


# static fields
.field private static sMainHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 151
    new-instance v0, Lorg/webrtc/ali/ThreadUtils$2;

    invoke-direct {v0, p0}, Lorg/webrtc/ali/ThreadUtils$2;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v0}, Lorg/webrtc/ali/ThreadUtils;->executeUninterruptibly(Lorg/webrtc/ali/ThreadUtils$BlockingOperation;)V

    .line 157
    return-void
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;J)Z
    .locals 11
    .param p0, "barrier"    # Ljava/util/concurrent/CountDownLatch;
    .param p1, "timeoutMs"    # J

    .prologue
    .line 160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 161
    .local v4, "startTimeMs":J
    move-wide v6, p1

    .line 162
    .local v6, "timeRemainingMs":J
    const/4 v3, 0x0

    .line 163
    .local v3, "wasInterrupted":Z
    const/4 v2, 0x0

    .line 166
    .local v2, "result":Z
    :cond_0
    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v6, v7, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 177
    :goto_0
    if-eqz v3, :cond_1

    .line 178
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 180
    :cond_1
    return v2

    .line 171
    :catch_0
    move-exception v8

    const/4 v3, 0x1

    .line 172
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v0, v8, v4

    .line 173
    .local v0, "elapsedTimeMs":J
    sub-long v6, p1, v0

    .line 175
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_0

    goto :goto_0
.end method

.method public static checkIsOnMainThread()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not on main thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    return-void
.end method

.method static concatStackTraces([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 4
    .param p0, "inner"    # [Ljava/lang/StackTraceElement;
    .param p1, "outer"    # [Ljava/lang/StackTraceElement;

    .prologue
    const/4 v3, 0x0

    .line 252
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Ljava/lang/StackTraceElement;

    .line 253
    .local v0, "combined":[Ljava/lang/StackTraceElement;
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    return-object v0
.end method

.method public static executeUninterruptibly(Lorg/webrtc/ali/ThreadUtils$BlockingOperation;)V
    .locals 2
    .param p0, "operation"    # Lorg/webrtc/ali/ThreadUtils$BlockingOperation;

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 104
    .local v0, "wasInterrupted":Z
    :goto_0
    :try_start_0
    invoke-interface {p0}, Lorg/webrtc/ali/ThreadUtils$BlockingOperation;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 116
    :cond_0
    return-void

    .line 109
    :catch_0
    move-exception v1

    const/4 v0, 0x1

    .line 110
    goto :goto_0
.end method

.method public static invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 7
    .param p0, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 199
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 234
    :goto_0
    return-object v5

    .line 200
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 211
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v3, Lorg/webrtc/ali/ThreadUtils$1Result;

    invoke-direct {v3}, Lorg/webrtc/ali/ThreadUtils$1Result;-><init>()V

    .line 212
    .local v3, "result":Lorg/webrtc/ali/ThreadUtils$1Result;
    new-instance v1, Lorg/webrtc/ali/ThreadUtils$1CaughtException;

    invoke-direct {v1}, Lorg/webrtc/ali/ThreadUtils$1CaughtException;-><init>()V

    .line 213
    .local v1, "caughtException":Lorg/webrtc/ali/ThreadUtils$1CaughtException;
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 214
    .local v0, "barrier":Ljava/util/concurrent/CountDownLatch;
    new-instance v5, Lorg/webrtc/ali/ThreadUtils$4;

    invoke-direct {v5, v3, p1, v1, v0}, Lorg/webrtc/ali/ThreadUtils$4;-><init>(Lorg/webrtc/ali/ThreadUtils$1Result;Ljava/util/concurrent/Callable;Lorg/webrtc/ali/ThreadUtils$1CaughtException;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    invoke-static {v0}, Lorg/webrtc/ali/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 228
    iget-object v5, v1, Lorg/webrtc/ali/ThreadUtils$1CaughtException;->e:Ljava/lang/Exception;

    if-eqz v5, :cond_1

    .line 229
    new-instance v4, Ljava/lang/RuntimeException;

    iget-object v5, v1, Lorg/webrtc/ali/ThreadUtils$1CaughtException;->e:Ljava/lang/Exception;

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 230
    .local v4, "runtimeException":Ljava/lang/RuntimeException;
    iget-object v5, v1, Lorg/webrtc/ali/ThreadUtils$1CaughtException;->e:Ljava/lang/Exception;

    .line 231
    invoke-virtual {v5}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/webrtc/ali/ThreadUtils;->concatStackTraces([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 230
    invoke-virtual {v4, v5}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 232
    throw v4

    .line 234
    .end local v4    # "runtimeException":Ljava/lang/RuntimeException;
    :cond_1
    iget-object v5, v3, Lorg/webrtc/ali/ThreadUtils$1Result;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public static invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "runner"    # Ljava/lang/Runnable;

    .prologue
    .line 241
    new-instance v0, Lorg/webrtc/ali/ThreadUtils$5;

    invoke-direct {v0, p1}, Lorg/webrtc/ali/ThreadUtils$5;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0, v0}, Lorg/webrtc/ali/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 248
    return-void
.end method

.method public static isOnUiThread()Z
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static joinUninterruptibly(Ljava/lang/Thread;)V
    .locals 1
    .param p0, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 142
    new-instance v0, Lorg/webrtc/ali/ThreadUtils$1;

    invoke-direct {v0, p0}, Lorg/webrtc/ali/ThreadUtils$1;-><init>(Ljava/lang/Thread;)V

    invoke-static {v0}, Lorg/webrtc/ali/ThreadUtils;->executeUninterruptibly(Lorg/webrtc/ali/ThreadUtils$BlockingOperation;)V

    .line 148
    return-void
.end method

.method public static joinUninterruptibly(Ljava/lang/Thread;J)Z
    .locals 11
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "timeoutMs"    # J

    .prologue
    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 120
    .local v2, "startTimeMs":J
    move-wide v4, p1

    .line 121
    .local v4, "timeRemainingMs":J
    const/4 v6, 0x0

    .line 122
    .local v6, "wasInterrupted":Z
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_0

    .line 124
    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    if-eqz v6, :cond_1

    .line 136
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 138
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    return v7

    .line 129
    :catch_0
    move-exception v7

    const/4 v6, 0x1

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v0, v8, v2

    .line 131
    .local v0, "elapsedTimeMs":J
    sub-long v4, p1, v0

    .line 132
    goto :goto_0

    .line 138
    .end local v0    # "elapsedTimeMs":J
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static postOnUiThread(Ljava/lang/Runnable;J)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delayMills"    # J

    .prologue
    .line 50
    const-class v1, Lorg/webrtc/ali/ThreadUtils;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lorg/webrtc/ali/ThreadUtils;->sMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/webrtc/ali/ThreadUtils;->sMainHandler:Landroid/os/Handler;

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    sget-object v0, Lorg/webrtc/ali/ThreadUtils;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    return-void

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 38
    const-class v1, Lorg/webrtc/ali/ThreadUtils;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lorg/webrtc/ali/ThreadUtils;->sMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/webrtc/ali/ThreadUtils;->sMainHandler:Landroid/os/Handler;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    sget-object v0, Lorg/webrtc/ali/ThreadUtils;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    return-void

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static waitUninterruptibly(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 184
    new-instance v0, Lorg/webrtc/ali/ThreadUtils$3;

    invoke-direct {v0, p0}, Lorg/webrtc/ali/ThreadUtils$3;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/webrtc/ali/ThreadUtils;->executeUninterruptibly(Lorg/webrtc/ali/ThreadUtils$BlockingOperation;)V

    .line 190
    return-void
.end method
