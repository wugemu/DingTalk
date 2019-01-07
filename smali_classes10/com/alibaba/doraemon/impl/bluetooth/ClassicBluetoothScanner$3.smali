.class Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$3;
.super Ljava/lang/Object;
.source "ClassicBluetoothScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->addBluetoothScanListener(Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

.field final synthetic val$listener:Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$3;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$3;->val$listener:Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;

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
    .line 155
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$3;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 156
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$3;->val$listener:Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;

    invoke-interface {v2, v0}, Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;->onDeviceFound(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 158
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$3;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->access$100(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$3;->val$listener:Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;

    invoke-interface {v1}, Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;->onDeviceFindFinsh()V

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$3;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$3;->val$listener:Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method
