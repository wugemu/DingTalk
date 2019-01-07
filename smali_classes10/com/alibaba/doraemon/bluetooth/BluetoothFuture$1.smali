.class Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$1;
.super Ljava/lang/Object;
.source "BluetoothFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->setFutureListener(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

.field final synthetic val$listener:Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    .prologue
    .line 28
    .local p0, "this":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$1;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$1;"
    iput-object p1, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$1;->this$0:Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    iput-object p2, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$1;->val$listener:Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;

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
    .line 31
    .local p0, "this":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$1;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$1;"
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$1;->val$listener:Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$1;->this$0:Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    invoke-static {v0}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->access$000(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$1;->val$listener:Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;

    iget-object v1, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$1;->this$0:Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;->onResult(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$1;->this$0:Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    invoke-static {v0}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->access$100(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$1;->val$listener:Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;

    iget-object v1, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$1;->this$0:Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;->onTimeout(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;)V

    .line 38
    :cond_1
    return-void
.end method
