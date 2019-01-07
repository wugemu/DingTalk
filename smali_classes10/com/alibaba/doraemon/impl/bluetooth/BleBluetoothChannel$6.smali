.class Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$6;
.super Ljava/lang/Object;
.source "BleBluetoothChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->write(Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

.field final synthetic val$packet:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$6;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$6;->val$packet:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 663
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$6;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$3000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$6;->val$packet:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;->encode(Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 666
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 668
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_0
    const/16 v5, 0x14

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 669
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v4, v5, [B

    .line 670
    .local v4, "remainByte":[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v0, v4, v3, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 671
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 673
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "write to pool len "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 683
    .end local v4    # "remainByte":[B
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-gtz v5, :cond_0

    .line 684
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/MemoryPool;->recycleByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 686
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$6;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 698
    :goto_1
    return-void

    .line 676
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    .line 679
    invoke-static {}, Lcom/alibaba/doraemon/impl/nfcprotocol/MemoryPool;->obtainFixedLenByteArray()[B

    move-result-object v2

    .line 680
    .local v2, "mtu_bytes":[B
    array-length v5, v2

    invoke-virtual {v0, v2, v3, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 681
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 690
    .end local v2    # "mtu_bytes":[B
    :cond_3
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$6;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    monitor-enter v6

    .line 691
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$6;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$700(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    if-nez v5, :cond_4

    const/4 v3, 0x1

    .line 692
    .local v3, "need2trigger":Z
    :cond_4
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$6;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$700(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 695
    if-eqz v3, :cond_5

    .line 696
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$6;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$2400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    .line 698
    :cond_5
    monitor-exit v6

    goto :goto_1

    .end local v3    # "need2trigger":Z
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
