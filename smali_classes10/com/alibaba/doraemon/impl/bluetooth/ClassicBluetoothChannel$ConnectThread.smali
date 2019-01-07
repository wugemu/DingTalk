.class Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;
.super Ljava/lang/Thread;
.source "ClassicBluetoothChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectThread"
.end annotation


# instance fields
.field private final mmDevice:Landroid/bluetooth/BluetoothDevice;

.field private mmSocket:Landroid/bluetooth/BluetoothSocket;

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 474
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    .line 475
    const/4 v1, 0x0

    .line 481
    .local v1, "tmp":Landroid/bluetooth/BluetoothSocket;
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 485
    :goto_0
    iput-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    .line 486
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "BluetoothChannel"

    const-string/jumbo v3, "create() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BluetoothChannel"

    const-string/jumbo v2, "close() of failed socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 490
    const-string/jumbo v2, "ConnectThread"

    invoke-virtual {p0, v2}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->setName(Ljava/lang/String;)V

    .line 492
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$700(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 493
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$700(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 502
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v2, :cond_1

    .line 503
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    monitor-enter v3

    .line 520
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$802(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;)Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;

    .line 521
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    if-nez v2, :cond_2

    .line 524
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$900(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)V

    .line 529
    :goto_1
    return-void

    .line 507
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "BluetoothChannel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "connect Exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :try_start_2
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 515
    :goto_2
    iput-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    goto :goto_0

    .line 512
    :catch_1
    move-exception v1

    .line 513
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 521
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 528
    :cond_2
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->connected(Landroid/bluetooth/BluetoothSocket;Z)V

    goto :goto_1
.end method
