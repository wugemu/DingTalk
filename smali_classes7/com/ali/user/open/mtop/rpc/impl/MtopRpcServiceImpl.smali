.class public Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;
.super Ljava/lang/Object;
.source "MtopRpcServiceImpl.java"

# interfaces
.implements Lcom/ali/user/open/core/service/RpcService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;
    }
.end annotation


# instance fields
.field public final ERROR_TIME_OUT:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string/jumbo v0, "408"

    iput-object v0, p0, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;->ERROR_TIME_OUT:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;Ljava/lang/String;Ljava/lang/Class;)Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;
    .locals 1
    .param p0, "x0"    # Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Class;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;->getRpcResponse(Ljava/lang/String;Ljava/lang/Class;)Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;

    move-result-object v0

    return-object v0
.end method

.method private buildMtopOverLwpRequest(Lcom/ali/user/open/core/model/RpcRequest;)Lcom/alibaba/android/dingtalkbase/rpcoverlwp/MTopReqObject;
    .locals 15
    .param p1, "rpcRequest"    # Lcom/ali/user/open/core/model/RpcRequest;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v14, 0x0

    .line 139
    new-instance v10, Lcom/alibaba/android/dingtalkbase/rpcoverlwp/MTopReqObject;

    invoke-direct {v10}, Lcom/alibaba/android/dingtalkbase/rpcoverlwp/MTopReqObject;-><init>()V

    .line 140
    .local v10, "reqObject":Lcom/alibaba/android/dingtalkbase/rpcoverlwp/MTopReqObject;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/ali/user/open/core/model/RpcRequest;->target:Ljava/lang/String;

    iput-object v11, v10, Lcom/alibaba/android/dingtalkbase/rpcoverlwp/MTopReqObject;->api:Ljava/lang/String;

    .line 141
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/ali/user/open/core/model/RpcRequest;->version:Ljava/lang/String;

    iput-object v11, v10, Lcom/alibaba/android/dingtalkbase/rpcoverlwp/MTopReqObject;->v:Ljava/lang/String;

    .line 143
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/ali/user/open/core/model/RpcRequest;->paramNames:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/ali/user/open/core/model/RpcRequest;->paramNames:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/ali/user/open/core/model/RpcRequest;->paramValues:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/ali/user/open/core/model/RpcRequest;->paramValues:Ljava/util/ArrayList;

    .line 144
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/ali/user/open/core/model/RpcRequest;->paramNames:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/ali/user/open/core/model/RpcRequest;->paramValues:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v11, v12, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-object v10

    .line 149
    :cond_1
    new-instance v7, Lcom/google/gson/JsonParser;

    invoke-direct {v7}, Lcom/google/gson/JsonParser;-><init>()V

    .line 151
    .local v7, "jsonParser":Lcom/google/gson/JsonParser;
    const/4 v5, 0x0

    .line 152
    .local v5, "header":Lcom/google/gson/JsonObject;
    const/4 v8, 0x0

    .line 153
    .local v8, "params":Lcom/google/gson/JsonObject;
    const-string/jumbo v3, ""

    .line 156
    .local v3, "domain":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    move-object v9, v8

    .end local v8    # "params":Lcom/google/gson/JsonObject;
    .local v9, "params":Lcom/google/gson/JsonObject;
    :goto_1
    :try_start_0
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/ali/user/open/core/model/RpcRequest;->paramNames:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_4

    .line 157
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/ali/user/open/core/model/RpcRequest;->paramNames:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 158
    .local v1, "currentParamName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/ali/user/open/core/model/RpcRequest;->paramValues:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 159
    .local v2, "currentParamValue":Ljava/lang/Object;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 163
    const-string/jumbo v11, "header"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 164
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/google/gson/JsonObject;

    move-object v5, v0

    move-object v8, v9

    .line 156
    .end local v9    # "params":Lcom/google/gson/JsonObject;
    .restart local v8    # "params":Lcom/google/gson/JsonObject;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object v9, v8

    .end local v8    # "params":Lcom/google/gson/JsonObject;
    .restart local v9    # "params":Lcom/google/gson/JsonObject;
    goto :goto_1

    .line 166
    :cond_2
    const-string/jumbo v11, "mtopDomain"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 167
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v8, v9

    .end local v9    # "params":Lcom/google/gson/JsonObject;
    .restart local v8    # "params":Lcom/google/gson/JsonObject;
    goto :goto_2

    .line 170
    .end local v8    # "params":Lcom/google/gson/JsonObject;
    .restart local v9    # "params":Lcom/google/gson/JsonObject;
    :cond_3
    if-nez v9, :cond_5

    .line 171
    new-instance v8, Lcom/google/gson/JsonObject;

    invoke-direct {v8}, Lcom/google/gson/JsonObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    .end local v9    # "params":Lcom/google/gson/JsonObject;
    .restart local v8    # "params":Lcom/google/gson/JsonObject;
    :goto_3
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v1, v11}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 176
    :catch_0
    move-exception v4

    .line 177
    .end local v1    # "currentParamName":Ljava/lang/String;
    .end local v2    # "currentParamValue":Ljava/lang/Object;
    .local v4, "e":Ljava/lang/Exception;
    :goto_4
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "buildMtopOverLwpRequest exception = "

    aput-object v12, v11, v14

    const/4 v12, 0x1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lfxo;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_5
    iput-object v5, v10, Lcom/alibaba/android/dingtalkbase/rpcoverlwp/MTopReqObject;->headers:Lcom/google/gson/JsonObject;

    .line 181
    iput-object v8, v10, Lcom/alibaba/android/dingtalkbase/rpcoverlwp/MTopReqObject;->param:Lcom/google/gson/JsonObject;

    .line 182
    iput-object v3, v10, Lcom/alibaba/android/dingtalkbase/rpcoverlwp/MTopReqObject;->mtopDomain:Ljava/lang/String;

    .line 183
    const-string/jumbo v11, "GET"

    iput-object v11, v10, Lcom/alibaba/android/dingtalkbase/rpcoverlwp/MTopReqObject;->type:Ljava/lang/String;

    goto/16 :goto_0

    .end local v8    # "params":Lcom/google/gson/JsonObject;
    .restart local v9    # "params":Lcom/google/gson/JsonObject;
    :cond_4
    move-object v8, v9

    .line 178
    .end local v9    # "params":Lcom/google/gson/JsonObject;
    .restart local v8    # "params":Lcom/google/gson/JsonObject;
    goto :goto_5

    .line 176
    .end local v8    # "params":Lcom/google/gson/JsonObject;
    .restart local v9    # "params":Lcom/google/gson/JsonObject;
    :catch_1
    move-exception v4

    move-object v8, v9

    .end local v9    # "params":Lcom/google/gson/JsonObject;
    .restart local v8    # "params":Lcom/google/gson/JsonObject;
    goto :goto_4

    .end local v8    # "params":Lcom/google/gson/JsonObject;
    .restart local v1    # "currentParamName":Ljava/lang/String;
    .restart local v2    # "currentParamValue":Ljava/lang/Object;
    .restart local v9    # "params":Lcom/google/gson/JsonObject;
    :cond_5
    move-object v8, v9

    .end local v9    # "params":Lcom/google/gson/JsonObject;
    .restart local v8    # "params":Lcom/google/gson/JsonObject;
    goto :goto_3

    .end local v8    # "params":Lcom/google/gson/JsonObject;
    .restart local v9    # "params":Lcom/google/gson/JsonObject;
    :cond_6
    move-object v8, v9

    .end local v9    # "params":Lcom/google/gson/JsonObject;
    .restart local v8    # "params":Lcom/google/gson/JsonObject;
    goto :goto_2
.end method

.method private getRpcResponse(Ljava/lang/String;Ljava/lang/Class;)Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;
    .locals 11
    .param p1, "response"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt",
            "<TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p2, "v":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 193
    new-instance v6, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;-><init>(Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$1;)V

    .line 194
    .local v6, "rpcResponse":Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;, "Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt<TV;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-object v6

    .line 199
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 200
    .local v4, "responeJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "data"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 202
    .local v0, "dataJsonObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    .line 203
    const-string/jumbo v7, "code"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;->code:I

    .line 204
    const-string/jumbo v7, "codeGroup"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;->codeGroup:Ljava/lang/String;

    .line 205
    const-string/jumbo v7, "message"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;->message:Ljava/lang/String;

    .line 206
    const-string/jumbo v7, "actionType"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;->actionType:Ljava/lang/String;

    .line 207
    const-string/jumbo v7, "success"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;->success:Z

    .line 208
    const-string/jumbo v7, "returnValue"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 209
    const-string/jumbo v7, "returnValue"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p2}, Lcom/ali/user/open/core/util/JSONUtils;->parseStringValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v6, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;->returnValue:Ljava/lang/Object;

    .line 213
    :cond_2
    const-string/jumbo v7, "ret"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 215
    .local v5, "retJsonArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    .line 216
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 217
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 218
    .local v3, "o":Ljava/lang/Object;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "success"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 219
    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;->mtopSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    .end local v0    # "dataJsonObject":Lorg/json/JSONObject;
    .end local v2    # "i":I
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "responeJsonObject":Lorg/json/JSONObject;
    .end local v5    # "retJsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "getRpcResponse Exception = "

    aput-object v8, v7, v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lfxo;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 216
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dataJsonObject":Lorg/json/JSONObject;
    .restart local v2    # "i":I
    .restart local v3    # "o":Ljava/lang/Object;
    .restart local v4    # "responeJsonObject":Lorg/json/JSONObject;
    .restart local v5    # "retJsonArray":Lorg/json/JSONArray;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/ali/user/open/core/device/DeviceInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public logout()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 121
    return-void
.end method

.method public remoteBusiness(Lcom/ali/user/open/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V
    .locals 7
    .param p1, "rpcRequest"    # Lcom/ali/user/open/core/model/RpcRequest;
    .param p3, "rpcRequestCallbackWithCode"    # Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ali/user/open/core/model/RpcRequest;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p2, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v3, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$1;

    invoke-direct {v3, p0, p3}, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$1;-><init>(Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 115
    :goto_0
    return-void

    .line 59
    :cond_0
    const-class v3, Lcom/alibaba/android/dingtalkbase/rpcoverlwp/TunnelIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/rpcoverlwp/TunnelIService;

    .line 61
    .local v2, "tunnelIService":Lcom/alibaba/android/dingtalkbase/rpcoverlwp/TunnelIService;
    if-nez v2, :cond_1

    .line 62
    new-instance v3, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$2;

    invoke-direct {v3, p0, p3}, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$2;-><init>(Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 77
    :cond_1
    new-instance v0, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$3;

    invoke-direct {v0, p0, p3, p2}, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$3;-><init>(Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;Ljava/lang/Class;)V

    .line 111
    .local v0, "callback":Liyv;, "Liyv<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;->buildMtopOverLwpRequest(Lcom/ali/user/open/core/model/RpcRequest;)Lcom/alibaba/android/dingtalkbase/rpcoverlwp/MTopReqObject;

    move-result-object v1

    .line 113
    .local v1, "reqObject":Lcom/alibaba/android/dingtalkbase/rpcoverlwp/MTopReqObject;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "mtop remoteBusiness"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, v1, Lcom/alibaba/android/dingtalkbase/rpcoverlwp/MTopReqObject;->api:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lfxo;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;->buildMtopOverLwpRequest(Lcom/ali/user/open/core/model/RpcRequest;)Lcom/alibaba/android/dingtalkbase/rpcoverlwp/MTopReqObject;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/rpcoverlwp/MTopReqObject;->toJson(Lcom/alibaba/android/dingtalkbase/rpcoverlwp/MTopReqObject;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/alibaba/android/dingtalkbase/rpcoverlwp/TunnelIService;->mtop(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method
