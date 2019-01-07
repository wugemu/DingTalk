.class Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;
.super Ljava/lang/Thread;
.source "ClassicBluetoothChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedThread"
.end annotation


# instance fields
.field private mInBuffer:Ljava/nio/ByteBuffer;

.field private mIsServer:Z

.field private final mmInStream:Ljava/io/InputStream;

.field private final mmOutStream:Ljava/io/OutputStream;

.field private final mmSocket:Landroid/bluetooth/BluetoothSocket;

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;Landroid/bluetooth/BluetoothSocket;Z)V
    .locals 5
    .param p2, "socket"    # Landroid/bluetooth/BluetoothSocket;
    .param p3, "isServer"    # Z

    .prologue
    .line 594
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 596
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    .line 597
    const/4 v1, 0x0

    .line 598
    .local v1, "tmpIn":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 599
    .local v2, "tmpOut":Ljava/io/OutputStream;
    iput-boolean p3, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->mIsServer:Z

    .line 602
    :try_start_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 603
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 608
    :goto_0
    iput-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    .line 609
    iput-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    .line 610
    const/16 v3, 0x2800

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->mInBuffer:Ljava/nio/ByteBuffer;

    .line 611
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "BluetoothChannel"

    const-string/jumbo v4, "temp sockets not created"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$1200(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 707
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :goto_0
    return-void

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BluetoothChannel"

    const-string/jumbo v2, "close() of connect socket failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 614
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "BEGIN mConnectedThread mState "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v7}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$600(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 615
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 618
    .local v0, "buffer":[B
    :goto_0
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v6}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$600(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 621
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 622
    .local v1, "bytes":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "get data "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "thread id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 623
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->mInBuffer:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 624
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->mInBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 627
    :cond_0
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v6}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$1000(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->mInBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;->decode(Ljava/nio/ByteBuffer;)Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;

    move-result-object v4

    .line 628
    .local v4, "inData":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    if-eqz v4, :cond_6

    .line 631
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v6}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    .line 632
    .local v5, "listener":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    if-eqz v5, :cond_1

    .line 633
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-interface {v5, v7, v4}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;->onRead(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 643
    .end local v1    # "bytes":I
    .end local v4    # "inData":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    .end local v5    # "listener":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    :catch_0
    move-exception v2

    .line 644
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "BluetoothChannel"

    const-string/jumbo v7, "disconnected ex "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 645
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$1100(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;I)V

    .line 646
    iget-boolean v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->mIsServer:Z

    if-nez v6, :cond_2

    .line 647
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v6}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$900(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)V

    .line 655
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v6, "BluetoothChannel"

    const-string/jumbo v7, "disconnected"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    if-eqz v6, :cond_3

    .line 658
    :try_start_1
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 663
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    if-eqz v6, :cond_4

    .line 665
    :try_start_2
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 670
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v6, :cond_5

    .line 672
    :try_start_3
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 678
    :cond_5
    :goto_4
    return-void

    .line 639
    .restart local v1    # "bytes":I
    .restart local v4    # "inData":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    :cond_6
    :try_start_4
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->mInBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 659
    .end local v1    # "bytes":I
    .end local v4    # "inData":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    :catch_1
    move-exception v2

    .line 660
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 666
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 667
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 673
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 674
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 687
    const-string/jumbo v1, "THREAD"

    .line 688
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 689
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 690
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 691
    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread$1;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;Ljava/nio/ByteBuffer;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 703
    return-void
.end method
