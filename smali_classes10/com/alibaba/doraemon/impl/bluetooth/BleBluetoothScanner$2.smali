.class Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$2;
.super Landroid/content/BroadcastReceiver;
.source "BleBluetoothScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->registerScreenReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$2;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$2;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    const-wide/16 v2, 0x7d0

    invoke-static {v1, v2, v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;J)V

    .line 170
    :cond_0
    return-void
.end method
