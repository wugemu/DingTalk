.class public final Ljwe;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xiaomi/metoknlp/b/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/metoknlp/b/c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Ljwe;->a:Lcom/xiaomi/metoknlp/b/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "ConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown message type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Ljwe;->a:Lcom/xiaomi/metoknlp/b/c;

    .line 1000
    iget-object v1, v0, Lcom/xiaomi/metoknlp/b/c;->c:Ljava/util/List;

    .line 0
    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljwe;->a:Lcom/xiaomi/metoknlp/b/c;

    .line 2000
    iget-object v0, v0, Lcom/xiaomi/metoknlp/b/c;->c:Ljava/util/List;

    .line 0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwd;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0}, Ljwd;->a()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Ljwe;->a:Lcom/xiaomi/metoknlp/b/c;

    .line 3000
    iget-object v1, v0, Lcom/xiaomi/metoknlp/b/c;->c:Ljava/util/List;

    .line 0
    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Ljwe;->a:Lcom/xiaomi/metoknlp/b/c;

    .line 4000
    iget-object v0, v0, Lcom/xiaomi/metoknlp/b/c;->c:Ljava/util/List;

    .line 0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_2

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
