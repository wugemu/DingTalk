.class public Lcom/mybank/android/phone/common/h5container/plugin/rpc/RpcPluginJsonSerializer;
.super Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;
.source "RpcPluginJsonSerializer.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "operationType"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/Object;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getRequestDataJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/RpcPluginJsonSerializer;->mRequestDataJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/RpcPluginJsonSerializer;->mRequestDataJson:Ljava/lang/String;

    .line 48
    :goto_0
    return-object v0

    .line 32
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/RpcPluginJsonSerializer;->mParams:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 33
    const-string/jumbo v0, "[]"

    iput-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/RpcPluginJsonSerializer;->mRequestDataJson:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_1
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/RpcPluginJsonSerializer;->mRequestDataJson:Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/RpcPluginJsonSerializer;->mParams:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/RpcPluginJsonSerializer;->mParams:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/RpcPluginJsonSerializer;->mRequestDataJson:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/RpcPluginJsonSerializer;->mParams:Ljava/lang/Object;

    if-nez v0, :cond_3

    const-string/jumbo v0, "[]"

    .line 39
    :goto_2
    iput-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/RpcPluginJsonSerializer;->mRequestDataJson:Ljava/lang/String;

    goto :goto_1

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/RpcPluginJsonSerializer;->mParams:Ljava/lang/Object;

    .line 39
    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2
.end method
