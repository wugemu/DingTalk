.class Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$1;
.super Ljava/lang/Object;
.source "ClassicBluetoothChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->setState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    iput p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$1;->val$state:I

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
    .line 259
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$400(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    .line 260
    .local v0, "listener":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "status "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$1;->val$state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-static {v2, v0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->access$500(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V

    goto :goto_0

    .line 263
    .end local v0    # "listener":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    :cond_0
    return-void
.end method
