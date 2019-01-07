.class Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread$1;
.super Ljava/lang/Object;
.source "ClassicBluetoothChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->write(Ljava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;

.field final synthetic val$buffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;

    .prologue
    .line 691
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread$1;->this$1:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 695
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread$1;->this$1:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->access$1200(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;)Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 696
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/MemoryPool;->recycleByteBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BluetoothChannel"

    const-string/jumbo v2, "Exception during write"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
