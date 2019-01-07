.class Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$8;
.super Ljava/lang/Object;
.source "BleBluetoothChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->addEventListener(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

.field final synthetic val$listener:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 837
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$8;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$8;->val$listener:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 840
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stick status "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$8;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$900(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$8;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$8;->val$listener:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->access$2800(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Ljava/lang/String;)V

    .line 844
    return-void
.end method
