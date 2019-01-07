.class Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$2;
.super Ljava/lang/Object;
.source "ClassicBluetoothScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->stopScan(Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;)V
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
    .line 82
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$2;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$2;->val$listener:Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;

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
    .line 85
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$2;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$2;->val$listener:Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$2;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$2;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->access$500(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)V

    .line 90
    :cond_0
    return-void
.end method
