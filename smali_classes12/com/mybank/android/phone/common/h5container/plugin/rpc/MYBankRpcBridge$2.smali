.class Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$2;
.super Ljava/lang/Object;
.source "MYBankRpcBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->sendRequest(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;

.field final synthetic val$context:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;

.field final synthetic val$params:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;Ljava/lang/String;Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$2;->this$0:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;

    iput-object p2, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$2;->val$params:Ljava/lang/String;

    iput-object p3, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$2;->val$context:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 247
    iget-object v5, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$2;->this$0:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;

    iget-object v6, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$2;->val$params:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->access$000(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;Ljava/lang/String;)Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;

    move-result-object v1

    .line 248
    .local v1, "mybankParam":Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;
    new-instance v4, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;

    iget-object v5, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$2;->val$context:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;

    invoke-direct {v4, v5}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;-><init>(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;)V

    .line 250
    .local v4, "rpcResult":Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;
    :try_start_0
    iget-object v5, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$2;->this$0:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;

    invoke-virtual {v5, v1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->requestData(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "result":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 252
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->setSuccess(Z)V

    .line 258
    :goto_0
    iget-object v5, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$2;->this$0:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;

    invoke-static {v5, v4}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->access$100(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;)V

    .line 275
    .end local v2    # "result":Ljava/lang/String;
    :goto_1
    return-void

    .line 254
    .restart local v2    # "result":Ljava/lang/String;
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 255
    .local v3, "resultJson":Lorg/json/JSONObject;
    invoke-virtual {v4, v3}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->setData(Lorg/json/JSONObject;)V

    .line 256
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->setSuccess(Z)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 260
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "resultJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Lcom/alipay/mobile/common/rpc/RpcException;
    invoke-virtual {v4, v7}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->setSuccess(Z)V

    .line 263
    const-string/jumbo v5, "error"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string/jumbo v5, "errorMessage"

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string/jumbo v5, "operationType"

    invoke-virtual {v1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->getOperationType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "MYBankRpcBridge fail:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->getOperationType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-object v5, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$2;->this$0:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;

    invoke-static {v5, v4}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->access$100(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;)V

    goto :goto_1

    .line 270
    .end local v0    # "e":Lcom/alipay/mobile/common/rpc/RpcException;
    :catch_1
    move-exception v5

    invoke-virtual {v4, v7}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->setSuccess(Z)V

    .line 271
    iget-object v5, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$2;->this$0:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;

    invoke-static {v5, v4}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->access$100(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;)V

    goto :goto_1
.end method
