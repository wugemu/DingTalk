.class Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$1;
.super Ljava/lang/Object;
.source "RpcProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

.field final synthetic val$msgId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$1;->val$msgId:Ljava/lang/String;

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
    .line 141
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$1;->val$msgId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    .line 142
    .local v0, "future":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->timeout()V

    .line 144
    :cond_0
    return-void
.end method
