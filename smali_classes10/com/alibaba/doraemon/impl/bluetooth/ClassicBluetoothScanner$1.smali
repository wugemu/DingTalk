.class Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$1;
.super Ljava/lang/Object;
.source "ClassicBluetoothScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->startFind(Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->access$102(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;Z)Z

    .line 66
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 67
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 68
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->access$300(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    if-nez v1, :cond_0

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.device.action.FOUND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    new-instance v2, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$BluetoothReceiver;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-direct {v2, v3}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$BluetoothReceiver;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)V

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->access$302(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 72
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->access$300(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method
