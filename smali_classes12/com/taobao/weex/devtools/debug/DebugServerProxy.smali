.class public Lcom/taobao/weex/devtools/debug/DebugServerProxy;
.super Ljava/lang/Object;
.source "DebugServerProxy.java"

# interfaces
.implements Lcom/taobao/weex/common/IWXDebugProxy;


# static fields
.field private static final DEVTOOL_VERSION:Ljava/lang/String; = "0.12.0"

.field private static final TAG:Ljava/lang/String; = "DebugServerProxy"


# instance fields
.field private mBridge:Lcom/taobao/weex/devtools/debug/DebugBridge;

.field private mContext:Landroid/content/Context;

.field private mDomainModules:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;",
            ">;"
        }
    .end annotation
.end field

.field private mJsManager:Lcom/taobao/weex/bridge/WXBridgeManager;

.field private mMethodDispatcher:Lcom/taobao/weex/devtools/inspector/MethodDispatcher;

.field private mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

.field private mPeer:Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

.field private mRemoteUrl:Ljava/lang/String;

.field private mWebSocketClient:Lcom/taobao/weex/devtools/debug/SocketClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/taobao/weex/bridge/WXBridgeManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jsManager"    # Lcom/taobao/weex/bridge/WXBridgeManager;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/taobao/weex/devtools/json/ObjectMapper;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/json/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    .line 53
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugProxyUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mRemoteUrl:Ljava/lang/String;

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context of DebugServerProxy should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {p0}, Lcom/taobao/weex/devtools/debug/SocketClientFactory;->create(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)Lcom/taobao/weex/devtools/debug/SocketClient;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mWebSocketClient:Lcom/taobao/weex/devtools/debug/SocketClient;

    .line 64
    iput-object p2, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mJsManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    .line 65
    new-instance v0, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    iget-object v1, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    iget-object v2, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mWebSocketClient:Lcom/taobao/weex/devtools/debug/SocketClient;

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;-><init>(Lcom/taobao/weex/devtools/json/ObjectMapper;Lcom/taobao/weex/devtools/websocket/SimpleSession;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mPeer:Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/weex/devtools/debug/DebugServerProxy;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/debug/DebugServerProxy;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)Lcom/taobao/weex/devtools/debug/SocketClient;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mWebSocketClient:Lcom/taobao/weex/devtools/debug/SocketClient;

    return-object v0
.end method

.method static synthetic access$300(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)Lcom/taobao/weex/devtools/debug/DebugBridge;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mBridge:Lcom/taobao/weex/devtools/debug/DebugBridge;

    return-object v0
.end method

.method static synthetic access$400(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)Ljava/lang/Iterable;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mDomainModules:Ljava/lang/Iterable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/taobao/weex/devtools/debug/DebugServerProxy;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/debug/DebugServerProxy;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mDomainModules:Ljava/lang/Iterable;

    return-object p1
.end method

.method static synthetic access$502(Lcom/taobao/weex/devtools/debug/DebugServerProxy;Lcom/taobao/weex/devtools/inspector/MethodDispatcher;)Lcom/taobao/weex/devtools/inspector/MethodDispatcher;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/debug/DebugServerProxy;
    .param p1, "x1"    # Lcom/taobao/weex/devtools/inspector/MethodDispatcher;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mMethodDispatcher:Lcom/taobao/weex/devtools/inspector/MethodDispatcher;

    return-object p1
.end method

.method static synthetic access$600(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)Lcom/taobao/weex/devtools/json/ObjectMapper;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)Lcom/taobao/weex/bridge/WXBridgeManager;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mJsManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    return-object v0
.end method

.method private getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "deviceId":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 84
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 86
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_1
    return-object v0
.end method

.method private handleRemoteMessage(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Ljava/lang/String;)V
    .locals 4
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/taobao/weex/devtools/inspector/MessageHandlingException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "messageNode":Lorg/json/JSONObject;
    const-string/jumbo v1, "method"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->handleRemoteRequest(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->handleRemoteResponse(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 224
    :cond_1
    new-instance v1, Lcom/taobao/weex/devtools/inspector/MessageHandlingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Improper JSON-RPC message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/weex/devtools/inspector/MessageHandlingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private handleRemoteRequest(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "requestNode"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/devtools/inspector/MessageHandlingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 231
    iget-object v7, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v8, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcRequest;

    invoke-virtual {v7, p2, v8}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcRequest;

    .line 235
    .local v3, "request":Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcRequest;
    const/4 v6, 0x0

    .line 236
    .local v6, "result":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 238
    .local v1, "error":Lorg/json/JSONObject;
    :try_start_0
    iget-object v7, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mMethodDispatcher:Lcom/taobao/weex/devtools/inspector/MethodDispatcher;

    iget-object v8, v3, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcRequest;->method:Ljava/lang/String;

    iget-object v9, v3, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcRequest;->params:Lorg/json/JSONObject;

    invoke-virtual {v7, p1, v8, v9}, Lcom/taobao/weex/devtools/inspector/MethodDispatcher;->dispatch(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 245
    :goto_0
    iget-object v7, v3, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcRequest;->id:Ljava/lang/Long;

    if-eqz v7, :cond_0

    .line 246
    new-instance v4, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;

    invoke-direct {v4}, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;-><init>()V

    .line 247
    .local v4, "response":Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;
    iget-object v7, v3, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcRequest;->id:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;->id:J

    .line 248
    iput-object v6, v4, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;->result:Lorg/json/JSONObject;

    .line 249
    iput-object v1, v4, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;->error:Lorg/json/JSONObject;

    .line 250
    iget-object v7, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v8, Lorg/json/JSONObject;

    invoke-virtual {v7, v4, v8}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 253
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 261
    .local v5, "responseString":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;->getWebSocket()Lcom/taobao/weex/devtools/websocket/SimpleSession;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/taobao/weex/devtools/websocket/SimpleSession;->sendText(Ljava/lang/String;)V

    .line 263
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "response":Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;
    .end local v5    # "responseString":Ljava/lang/String;
    :cond_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;
    invoke-static {v0}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->logDispatchException(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;)V

    .line 243
    iget-object v7, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;->getErrorMessage()Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;

    move-result-object v8

    const-class v9, Lorg/json/JSONObject;

    invoke-virtual {v7, v8, v9}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "error":Lorg/json/JSONObject;
    check-cast v1, Lorg/json/JSONObject;

    .restart local v1    # "error":Lorg/json/JSONObject;
    goto :goto_0

    .line 254
    .end local v0    # "e":Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "response":Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;
    :catch_1
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const/4 v7, 0x0

    iput-object v7, v4, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;->result:Lorg/json/JSONObject;

    .line 257
    iget-object v7, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lorg/json/JSONObject;

    invoke-virtual {v7, v8, v9}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    iput-object v7, v4, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;->error:Lorg/json/JSONObject;

    .line 258
    iget-object v7, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v8, Lorg/json/JSONObject;

    invoke-virtual {v7, v4, v8}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    check-cast v2, Lorg/json/JSONObject;

    .line 259
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "responseString":Ljava/lang/String;
    goto :goto_1
.end method

.method private handleRemoteResponse(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "responseNode"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/devtools/inspector/MismatchedResponseException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 267
    iget-object v2, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v3, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;

    invoke-virtual {v2, p2, v3}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;

    .line 270
    .local v1, "response":Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;
    iget-wide v2, v1, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;->id:J

    invoke-virtual {p1, v2, v3}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;->getAndRemovePendingRequest(J)Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequest;

    move-result-object v0

    .line 271
    .local v0, "pendingRequest":Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequest;
    if-nez v0, :cond_0

    .line 272
    new-instance v2, Lcom/taobao/weex/devtools/inspector/MismatchedResponseException;

    iget-wide v4, v1, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;->id:J

    invoke-direct {v2, v4, v5}, Lcom/taobao/weex/devtools/inspector/MismatchedResponseException;-><init>(J)V

    throw v2

    .line 274
    :cond_0
    iget-object v2, v0, Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequest;->callback:Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequestCallback;

    if-eqz v2, :cond_1

    .line 275
    iget-object v2, v0, Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequest;->callback:Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequestCallback;

    invoke-interface {v2, p1, v1}, Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequestCallback;->onResponse(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;)V

    .line 277
    :cond_1
    return-void
.end method

.method private static logDispatchException(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;)V
    .locals 4
    .param p0, "e"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;->getErrorMessage()Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;

    move-result-object v0

    .line 70
    .local v0, "errorMessage":Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;
    sget-object v1, Lcom/taobao/weex/devtools/debug/DebugServerProxy$2;->$SwitchMap$com$taobao$weex$devtools$inspector$jsonrpc$protocol$JsonRpcError$ErrorCode:[I

    iget-object v2, v0, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;->code:Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;

    invoke-virtual {v2}, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 75
    const-string/jumbo v1, "DebugServerProxy"

    const-string/jumbo v2, "Error processing remote message"

    invoke-static {v1, v2, p0}, Lcom/taobao/weex/devtools/common/LogRedirector;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    :goto_0
    return-void

    .line 72
    :pswitch_0
    const-string/jumbo v1, "DebugServerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Method not implemented: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/devtools/common/LogRedirector;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private switchLocalRuntime()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 189
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->reload(Landroid/content/Context;Z)V

    .line 190
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "DEBUG_INSTANCE_REFRESH"

    .line 191
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "params"

    const-string/jumbo v3, ""

    .line 192
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    return-void
.end method


# virtual methods
.method public getWXBridge()Lcom/taobao/weex/common/IWXBridge;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 198
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mBridge:Lcom/taobao/weex/devtools/debug/DebugBridge;

    if-nez v0, :cond_0

    .line 199
    const-string/jumbo v0, "DebugServerProxy"

    const-string/jumbo v1, "DebugBridge is null!"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mBridge:Lcom/taobao/weex/devtools/debug/DebugBridge;

    return-object v0
.end method

.method public handleMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mPeer:Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    invoke-static {v1}, Lcom/taobao/weex/devtools/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v1, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mPeer:Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    invoke-direct {p0, v1, p1}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->handleRemoteMessage(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DebugServerProxy"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/taobao/weex/devtools/common/LogRedirector;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const-string/jumbo v1, "DebugServerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected I/O exception processing message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/devtools/common/LogRedirector;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start(Lcom/taobao/weex/common/IWXJsFunctions;)V
    .locals 4
    .param p1, "jsFunctions"    # Lcom/taobao/weex/common/IWXJsFunctions;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    const-class v1, Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Context is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 97
    monitor-exit v1

    .line 169
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sDebugServerConnectable:Z

    .line 100
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/weex/devtools/WeexInspector;->initializeWithDefaults(Landroid/content/Context;)V

    .line 101
    invoke-static {}, Lcom/taobao/weex/devtools/debug/DebugBridge;->getInstance()Lcom/taobao/weex/devtools/debug/DebugBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mBridge:Lcom/taobao/weex/devtools/debug/DebugBridge;

    .line 102
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mBridge:Lcom/taobao/weex/devtools/debug/DebugBridge;

    iget-object v2, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mWebSocketClient:Lcom/taobao/weex/devtools/debug/SocketClient;

    invoke-virtual {v0, v2}, Lcom/taobao/weex/devtools/debug/DebugBridge;->setSession(Lcom/taobao/weex/devtools/websocket/SimpleSession;)V

    .line 103
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mBridge:Lcom/taobao/weex/devtools/debug/DebugBridge;

    iget-object v2, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mJsManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0, v2}, Lcom/taobao/weex/devtools/debug/DebugBridge;->setBridgeManager(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    .line 104
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mBridge:Lcom/taobao/weex/devtools/debug/DebugBridge;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/debug/DebugBridge;->setJsFunctions(Lcom/taobao/weex/common/IWXJsFunctions;)V

    .line 105
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mWebSocketClient:Lcom/taobao/weex/devtools/debug/SocketClient;

    iget-object v2, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mRemoteUrl:Ljava/lang/String;

    new-instance v3, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;

    invoke-direct {v3, p0}, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;-><init>(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)V

    invoke-virtual {v0, v2, v3}, Lcom/taobao/weex/devtools/debug/SocketClient;->connect(Ljava/lang/String;Lcom/taobao/weex/devtools/debug/SocketClient$Callback;)V

    .line 169
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop(Z)V
    .locals 4
    .param p1, "reload"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 174
    const-class v1, Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mWebSocketClient:Lcom/taobao/weex/devtools/debug/SocketClient;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mWebSocketClient:Lcom/taobao/weex/devtools/debug/SocketClient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/taobao/weex/devtools/debug/SocketClient;->close(ILjava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mWebSocketClient:Lcom/taobao/weex/devtools/debug/SocketClient;

    .line 179
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->mBridge:Lcom/taobao/weex/devtools/debug/DebugBridge;

    .line 180
    if-eqz p1, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->switchLocalRuntime()V

    .line 183
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
