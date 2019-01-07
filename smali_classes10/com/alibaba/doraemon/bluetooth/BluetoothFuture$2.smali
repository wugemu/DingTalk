.class Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$2;
.super Ljava/lang/Object;
.source "BluetoothFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->setResult(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    .prologue
    .line 68
    .local p0, "this":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$2;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$2;"
    iput-object p1, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$2;->this$0:Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

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
    .line 71
    .local p0, "this":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$2;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$2;"
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$2;->this$0:Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    invoke-static {v0}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->access$200(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;)Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$2;->this$0:Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    invoke-static {v0}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->access$200(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;)Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$2;->this$0:Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;->onResult(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;)V

    .line 73
    :cond_0
    return-void
.end method
