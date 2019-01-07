.class Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$5;
.super Ljava/lang/Object;
.source "BleBluetoothChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 632
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$5;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 635
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$5;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    .line 636
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$5;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    .line 637
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$5;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$2900(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    .line 638
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$5;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$502(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;I)I

    .line 639
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$5;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;I)V

    .line 640
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$5;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$1300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    .line 641
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$5;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    monitor-enter v1

    .line 642
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$5;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$700(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 643
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
