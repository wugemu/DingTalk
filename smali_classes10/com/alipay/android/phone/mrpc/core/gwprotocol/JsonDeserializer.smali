.class public Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonDeserializer;
.super Lcom/alipay/android/phone/mrpc/core/gwprotocol/AbstractDeserializer;
.source "JsonDeserializer.java"


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;[B)V
    .locals 0
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "data"    # [B

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/AbstractDeserializer;-><init>(Ljava/lang/reflect/Type;[B)V

    .line 23
    return-void
.end method

.method private logResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "resData"    # Ljava/lang/String;

    .prologue
    .line 70
    return-void
.end method


# virtual methods
.method public parser()Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    :try_start_0
    new-instance v4, Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonDeserializer;->mData:[B

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([B)V

    .line 30
    .local v4, "res":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonDeserializer;->logResult(Ljava/lang/String;)V

    .line 31
    invoke-static {v4}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 33
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "resultStatus"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    .line 34
    .local v5, "resultStatus":I
    const-string/jumbo v8, "tips"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "memo":Ljava/lang/String;
    const/16 v8, 0x3e8

    if-eq v5, v8, :cond_1

    .line 37
    new-instance v6, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v8, v3}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 38
    .local v6, "rpcException":Lcom/alipay/mobile/common/rpc/RpcException;
    const/16 v8, 0x3ea

    if-ne v5, v8, :cond_0

    .line 39
    const-string/jumbo v8, "control"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 40
    .local v0, "control":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/alipay/mobile/common/rpc/RpcException;->setControl(Ljava/lang/String;)V

    .line 44
    .end local v0    # "control":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    throw v6
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "memo":Ljava/lang/String;
    .end local v4    # "res":Ljava/lang/String;
    .end local v5    # "resultStatus":I
    .end local v6    # "rpcException":Lcom/alipay/mobile/common/rpc/RpcException;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Lcom/alibaba/fastjson/JSONException;
    new-instance v9, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "response  ="

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/String;

    iget-object v12, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonDeserializer;->mData:[B

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ":"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    const-string/jumbo v8, ""

    :goto_0
    invoke-direct {v9, v10, v8}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v9

    .line 49
    .end local v1    # "e":Lcom/alibaba/fastjson/JSONException;
    .restart local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v3    # "memo":Ljava/lang/String;
    .restart local v4    # "res":Ljava/lang/String;
    .restart local v5    # "resultStatus":I
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonDeserializer;->mType:Ljava/lang/reflect/Type;

    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_2

    .line 51
    const-string/jumbo v8, "result"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 57
    :goto_1
    return-object v7

    .line 54
    :cond_2
    const-string/jumbo v8, "result"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonDeserializer;->mType:Ljava/lang/reflect/Type;

    const/4 v10, 0x0

    new-array v10, v10, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v8, v9, v10}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .local v7, "value":Ljava/lang/Object;
    goto :goto_1

    .line 60
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "memo":Ljava/lang/String;
    .end local v4    # "res":Ljava/lang/String;
    .end local v5    # "resultStatus":I
    .end local v7    # "value":Ljava/lang/Object;
    .restart local v1    # "e":Lcom/alibaba/fastjson/JSONException;
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method
