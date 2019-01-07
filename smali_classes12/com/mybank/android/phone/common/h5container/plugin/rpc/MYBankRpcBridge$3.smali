.class Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$3;
.super Ljava/lang/Object;
.source "MYBankRpcBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->sendAutoAlipay(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;

.field final synthetic val$context:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$3;->this$0:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;

    iput-object p2, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$3;->val$context:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;

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
    .line 298
    iget-object v1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$3;->this$0:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;

    iget-object v2, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$3;->val$context:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;

    invoke-static {}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->getAlipayUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->requestAutoAlipay(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;Ljava/lang/String;)Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;

    move-result-object v0

    .line 299
    .local v0, "rpcResult":Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;
    iget-object v1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$3;->this$0:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;

    invoke-static {v1, v0}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->access$100(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;)V

    .line 300
    return-void
.end method
