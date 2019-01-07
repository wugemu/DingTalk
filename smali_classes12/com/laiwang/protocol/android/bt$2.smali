.class Lcom/laiwang/protocol/android/bt$2;
.super Landroid/os/HandlerThread;
.source "HandlerExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/bt;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/bt;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/bt;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/bt;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/laiwang/protocol/android/bt$2;->a:Lcom/laiwang/protocol/android/bt;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 221
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 223
    iget-object v4, p0, Lcom/laiwang/protocol/android/bt$2;->a:Lcom/laiwang/protocol/android/bt;

    monitor-enter v4

    .line 224
    :try_start_0
    iget-object v3, p0, Lcom/laiwang/protocol/android/bt$2;->a:Lcom/laiwang/protocol/android/bt;

    invoke-static {v3}, Lcom/laiwang/protocol/android/bt;->b(Lcom/laiwang/protocol/android/bt;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bt$2;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 226
    monitor-exit v4

    .line 241
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v3, p0, Lcom/laiwang/protocol/android/bt$2;->a:Lcom/laiwang/protocol/android/bt;

    new-instance v5, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bt$2;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, v3, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    .line 232
    iget-object v3, p0, Lcom/laiwang/protocol/android/bt$2;->a:Lcom/laiwang/protocol/android/bt;

    invoke-static {v3}, Lcom/laiwang/protocol/android/bt;->c(Lcom/laiwang/protocol/android/bt;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    .line 233
    monitor-exit v4

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 234
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/laiwang/protocol/android/bt$2;->a:Lcom/laiwang/protocol/android/bt;

    invoke-static {v3}, Lcom/laiwang/protocol/android/bt;->c(Lcom/laiwang/protocol/android/bt;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 235
    .local v2, "task":Ljava/lang/Runnable;
    instance-of v3, v2, Lcom/laiwang/protocol/android/bt$a;

    if-eqz v3, :cond_2

    .line 236
    iget-object v3, p0, Lcom/laiwang/protocol/android/bt$2;->a:Lcom/laiwang/protocol/android/bt;

    iget-object v6, v3, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    move-object v0, v2

    check-cast v0, Lcom/laiwang/protocol/android/bt$a;

    move-object v3, v0

    invoke-static {v3}, Lcom/laiwang/protocol/android/bt$a;->a(Lcom/laiwang/protocol/android/bt$a;)Ljava/lang/Runnable;

    move-result-object v7

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object v0, v2

    check-cast v0, Lcom/laiwang/protocol/android/bt$a;

    move-object v3, v0

    iget-wide v10, v3, Lcom/laiwang/protocol/android/bt$a;->a:J

    add-long/2addr v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 236
    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_1

    .line 239
    :cond_2
    iget-object v3, p0, Lcom/laiwang/protocol/android/bt$2;->a:Lcom/laiwang/protocol/android/bt;

    iget-object v3, v3, Lcom/laiwang/protocol/android/bt;->a:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 241
    .end local v2    # "task":Ljava/lang/Runnable;
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
