.class public Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;
.super Ljava/lang/Object;
.source "MYBankRpcResult.java"


# instance fields
.field private bridgeContext:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;

.field private dataString:Ljava/lang/String;

.field private result:Lorg/json/JSONObject;

.field private success:Z


# direct methods
.method public constructor <init>(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;)V
    .locals 2
    .param p1, "context"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->success:Z

    .line 12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->result:Lorg/json/JSONObject;

    .line 13
    iput-object v1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->dataString:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->bridgeContext:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;

    .line 17
    iput-object p1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->bridgeContext:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;

    .line 18
    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 34
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->result:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addData(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONArray;

    .prologue
    .line 43
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->result:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getBridgeContext()Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->bridgeContext:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;

    return-object v0
.end method

.method public getResult()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->result:Lorg/json/JSONObject;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->success:Z

    return v0
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 30
    iput-object p1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->result:Lorg/json/JSONObject;

    .line 31
    :cond_0
    return-void
.end method

.method public setDataString(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->dataString:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->success:Z

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->dataString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->dataString:Ljava/lang/String;

    .line 67
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->result:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
