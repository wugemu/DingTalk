.class Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener$1;
.super Ljava/lang/Object;
.source "RpcServiceManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;->onRead(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isAck:Z

.field final synthetic this$1:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;

.field final synthetic val$channel:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;

.field final synthetic val$inData:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;)V
    .locals 1
    .param p1, "this$1"    # Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener$1;->this$1:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener$1;->val$inData:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;

    iput-object p3, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener$1;->val$channel:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener$1;->isAck:Z

    return-void
.end method


# virtual methods
.method public onResult(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;)V
    .locals 5
    .param p1, "future"    # Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :try_start_1
    iget-boolean v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener$1;->isAck:Z

    if-eqz v2, :cond_0

    .line 229
    monitor-exit p0

    .line 244
    :goto_0
    return-void

    .line 231
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener$1;->isAck:Z

    .line 232
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :try_start_2
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;-><init>()V

    .line 234
    .local v0, "ack":Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener$1;->val$inData:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;

    check-cast v2, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->messageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->messageId(Ljava/lang/String;)V

    .line 235
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener$1;->val$inData:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;

    check-cast v2, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->clz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->clz(Ljava/lang/String;)V

    .line 236
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener$1;->val$inData:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;

    check-cast v2, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->method(Ljava/lang/String;)V

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "invoke finsh "

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener$1;->val$inData:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;

    check-cast v2, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->messageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {p1}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 239
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener$1;->this$1:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;

    iget-object v2, v2, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)Ljaf;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->get()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljaf;->a(Ljava/lang/Object;Z)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->body([B)V

    .line 240
    :cond_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener$1;->val$channel:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;

    invoke-interface {v2, v0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;->write(Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 241
    .end local v0    # "ack":Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 232
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public onTimeout(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;)V
    .locals 0
    .param p1, "future"    # Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    .prologue
    .line 249
    return-void
.end method
