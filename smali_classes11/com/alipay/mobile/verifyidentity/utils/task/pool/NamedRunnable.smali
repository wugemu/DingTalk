.class public Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;
.super Ljava/lang/Object;
.source "NamedRunnable.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool$Poolable;
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;
    }
.end annotation


# static fields
.field public static final a:Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/Runnable;

.field d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;-><init>()V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->a:Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->d:I

    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->c:Ljava/lang/Runnable;

    .line 94
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    .line 95
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->d:I

    .line 96
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static b()Z
    .locals 5

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 156
    :try_start_0
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.common.ExportBeacon"

    const-string/jumbo v2, "gotThis"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_0

    .line 160
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 165
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->c:Ljava/lang/Runnable;

    .line 145
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->d:I

    .line 147
    return-void
.end method

.method public run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AsyncTaskExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NamedRunable.run(set ThreadName to:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 118
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->c:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 130
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v1

    const-string/jumbo v6, "AsyncTaskExecutor"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] cost "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v2, v4, v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AsyncTaskExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NamedRunable.run(set ThreadName back to:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 136
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->a:Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->a(Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;)V

    .line 137
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AsyncTaskExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NamedRunnable.run()->finish(TASK_POOL.free(this)): pool.size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->a:Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;

    iget-object v3, v3, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->c:Ljava/util/ArrayDeque;

    .line 138
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v1

    .line 122
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v4

    const-string/jumbo v5, "AsyncTaskExecutor"

    iget-object v6, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v1}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b()Z

    move-result v4

    if-nez v4, :cond_3

    .line 124
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 130
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v6

    const-string/jumbo v7, "AsyncTaskExecutor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] cost "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v2, v4, v2

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 132
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AsyncTaskExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "NamedRunable.run(set ThreadName back to:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 136
    :cond_2
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->a:Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->a(Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;)V

    .line 137
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AsyncTaskExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NamedRunnable.run()->finish(TASK_POOL.free(this)): pool.size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->a:Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;

    iget-object v4, v4, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->c:Ljava/util/ArrayDeque;

    .line 138
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    throw v1

    .line 129
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 130
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v1

    const-string/jumbo v6, "AsyncTaskExecutor"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] cost "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v2, v4, v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 132
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AsyncTaskExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NamedRunable.run(set ThreadName back to:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 136
    :cond_4
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->a:Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->a(Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;)V

    .line 137
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AsyncTaskExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NamedRunnable.run()->finish(TASK_POOL.free(this)): pool.size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->a:Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;

    iget-object v3, v3, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->c:Ljava/util/ArrayDeque;

    .line 138
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    :catch_1
    move-exception v1

    .line 127
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v4

    const-string/jumbo v5, "AsyncTaskExecutor"

    iget-object v6, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v1}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 130
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v1

    const-string/jumbo v6, "AsyncTaskExecutor"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] cost "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v2, v4, v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 132
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AsyncTaskExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NamedRunable.run(set ThreadName back to:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 136
    :cond_5
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->a:Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->a(Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;)V

    .line 137
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AsyncTaskExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NamedRunnable.run()->finish(TASK_POOL.free(this)): pool.size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable;->a:Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;

    iget-object v3, v3, Lcom/alipay/mobile/verifyidentity/utils/task/pool/NamedRunnable$NamedRunnablePool;->c:Ljava/util/ArrayDeque;

    .line 138
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
