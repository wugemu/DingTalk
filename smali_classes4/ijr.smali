.class public final Lijr;
.super Ljava/lang/Thread;
.source "LogContextImpl.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/common/logging/LogContextImpl;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lijr;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x5

    .line 106
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 107
    if-ge v1, v0, :cond_4

    .line 110
    :goto_0
    invoke-virtual {p0, v0}, Lijr;->setPriority(I)V

    .line 114
    :goto_1
    :try_start_0
    iget-object v0, p0, Lijr;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    iget-boolean v0, v0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lijr;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    iget-object v1, p0, Lijr;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/Queue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/util/Queue;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    :try_start_1
    const-string/jumbo v1, "LogContext"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "AppendWorker take: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    iget-object v0, p0, Lijr;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lijr;)V

    .line 122
    iget-object v0, p0, Lijr;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    .line 123
    iget-object v2, p0, Lijr;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 124
    iget-object v2, p0, Lijr;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 127
    :catch_1
    move-exception v0

    .line 128
    const-string/jumbo v1, "LogContext"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "AppendWorker finally: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_3
    return-void

    .line 121
    :cond_0
    :try_start_3
    iget-object v0, p0, Lijr;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lijr;)V

    .line 122
    iget-object v0, p0, Lijr;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    .line 123
    iget-object v2, p0, Lijr;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 124
    iget-object v2, p0, Lijr;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 127
    :catch_2
    move-exception v0

    .line 128
    const-string/jumbo v1, "LogContext"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "AppendWorker finally: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 126
    :cond_1
    :try_start_4
    iget-object v0, p0, Lijr;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/util/Queue;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :cond_2
    :try_start_5
    iget-object v0, p0, Lijr;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/util/Queue;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 120
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 121
    :try_start_6
    iget-object v0, p0, Lijr;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lijr;)V

    .line 122
    iget-object v0, p0, Lijr;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    .line 123
    iget-object v3, p0, Lijr;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 124
    iget-object v3, p0, Lijr;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 127
    :catch_3
    move-exception v0

    .line 128
    const-string/jumbo v2, "LogContext"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "AppendWorker finally: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_6
    throw v1

    .line 126
    :cond_3
    :try_start_7
    iget-object v0, p0, Lijr;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/util/Queue;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method
