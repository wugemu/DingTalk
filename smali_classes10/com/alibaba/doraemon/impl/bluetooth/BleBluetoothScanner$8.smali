.class Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$8;
.super Ljava/lang/Object;
.source "BleBluetoothScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;
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
    .line 425
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$8;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

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
    .line 428
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$8;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$1102(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;Z)Z

    .line 429
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    const-string/jumbo v0, "BleBluetoothScanner"

    const-string/jumbo v1, "stop high frequency scan mode"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$8;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$500(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)V

    .line 433
    return-void
.end method
