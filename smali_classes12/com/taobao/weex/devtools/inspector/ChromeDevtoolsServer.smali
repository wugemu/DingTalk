.class public Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;
.super Ljava/lang/Object;
.source "ChromeDevtoolsServer.java"

# interfaces
.implements Lcom/taobao/weex/devtools/websocket/SimpleEndpoint;


# static fields
.field public static final PATH:Ljava/lang/String; = "/inspector"

.field private static final TAG:Ljava/lang/String; = "ChromeDevtoolsServer"


# instance fields
.field private final mMethodDispatcher:Lcom/taobao/weex/devtools/inspector/MethodDispatcher;

.field private final mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

.field private final mPeers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/taobao/weex/devtools/websocket/SimpleSession;",
            "Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "domainModules":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->mPeers:Ljava/util/Map;

    .line 53
    new-instance v0, Lcom/taobao/weex/devtools/json/ObjectMapper;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/json/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    .line 54
    new-instance v0, Lcom/taobao/weex/devtools/inspector/MethodDispatcher;

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    invoke-direct {v0, v1, p1}, Lcom/taobao/weex/devtools/inspector/MethodDispatcher;-><init>(Lcom/taobao/weex/devtools/json/ObjectMapper;Ljava/lang/Iterable;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->mMethodDispatcher:Lcom/taobao/weex/devtools/inspector/MethodDispatcher;

    .line 55
    return-void
.end method

.method private closeSafely(Lcom/taobao/weex/devtools/websocket/SimpleSession;ILjava/lang/String;)V
    .locals 0
    .param p1, "session"    # Lcom/taobao/weex/devtools/websocket/SimpleSession;
    .param p2, "code"    # I
    .param p3, "reasonPhrase"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-interface {p1, p2, p3}, Lcom/taobao/weex/devtools/websocket/SimpleSession;->close(ILjava/lang/String;)V

    .line 104
    return-void
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
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "handleRemoteMessage : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "messageNode":Lorg/json/JSONObject;
    const-string/jumbo v1, "method"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->handleRemoteRequest(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->handleRemoteResponse(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 116
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
    .line 123
    iget-object v7, p0, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v8, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcRequest;

    invoke-virtual {v7, p2, v8}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcRequest;

    .line 127
    .local v3, "request":Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcRequest;
    const/4 v6, 0x0

    .line 128
    .local v6, "result":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 130
    .local v1, "error":Lorg/json/JSONObject;
    :try_start_0
    iget-object v7, p0, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->mMethodDispatcher:Lcom/taobao/weex/devtools/inspector/MethodDispatcher;

    iget-object v8, v3, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcRequest;->method:Ljava/lang/String;

    iget-object v9, v3, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcRequest;->params:Lorg/json/JSONObject;

    invoke-virtual {v7, p1, v8, v9}, Lcom/taobao/weex/devtools/inspector/MethodDispatcher;->dispatch(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 137
    :goto_0
    iget-object v7, v3, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcRequest;->id:Ljava/lang/Long;

    if-eqz v7, :cond_0

    .line 138
    new-instance v4, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;

    invoke-direct {v4}, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;-><init>()V

    .line 139
    .local v4, "response":Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;
    iget-object v7, v3, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcRequest;->id:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;->id:J

    .line 140
    iput-object v6, v4, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;->result:Lorg/json/JSONObject;

    .line 141
    iput-object v1, v4, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;->error:Lorg/json/JSONObject;

    .line 142
    iget-object v7, p0, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v8, Lorg/json/JSONObject;

    invoke-virtual {v7, v4, v8}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 145
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 153
    .local v5, "responseString":Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "handleRemoteRequest : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p1}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;->getWebSocket()Lcom/taobao/weex/devtools/websocket/SimpleSession;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/taobao/weex/devtools/websocket/SimpleSession;->sendText(Ljava/lang/String;)V

    .line 156
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "response":Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;
    .end local v5    # "responseString":Ljava/lang/String;
    :cond_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;
    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->logDispatchException(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;)V

    .line 135
    iget-object v7, p0, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;->getErrorMessage()Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;

    move-result-object v8

    const-class v9, Lorg/json/JSONObject;

    invoke-virtual {v7, v8, v9}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "error":Lorg/json/JSONObject;
    check-cast v1, Lorg/json/JSONObject;

    .restart local v1    # "error":Lorg/json/JSONObject;
    goto :goto_0

    .line 146
    .end local v0    # "e":Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "response":Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;
    :catch_1
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const/4 v7, 0x0

    iput-object v7, v4, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;->result:Lorg/json/JSONObject;

    .line 149
    iget-object v7, p0, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lorg/json/JSONObject;

    invoke-virtual {v7, v8, v9}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    iput-object v7, v4, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;->error:Lorg/json/JSONObject;

    .line 150
    iget-object v7, p0, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v8, Lorg/json/JSONObject;

    invoke-virtual {v7, v4, v8}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    check-cast v2, Lorg/json/JSONObject;

    .line 151
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
    .line 172
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v3, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;

    invoke-virtual {v2, p2, v3}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;

    .line 175
    .local v1, "response":Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;
    iget-wide v2, v1, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;->id:J

    invoke-virtual {p1, v2, v3}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;->getAndRemovePendingRequest(J)Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequest;

    move-result-object v0

    .line 176
    .local v0, "pendingRequest":Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequest;
    if-nez v0, :cond_0

    .line 177
    new-instance v2, Lcom/taobao/weex/devtools/inspector/MismatchedResponseException;

    iget-wide v4, v1, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;->id:J

    invoke-direct {v2, v4, v5}, Lcom/taobao/weex/devtools/inspector/MismatchedResponseException;-><init>(J)V

    throw v2

    .line 179
    :cond_0
    iget-object v2, v0, Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequest;->callback:Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequestCallback;

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, v0, Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequest;->callback:Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequestCallback;

    invoke-interface {v2, p1, v1}, Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequestCallback;->onResponse(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcResponse;)V

    .line 182
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleRemoteResponse : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    return-void
.end method

.method private static logDispatchException(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;)V
    .locals 4
    .param p0, "e"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;->getErrorMessage()Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;

    move-result-object v0

    .line 160
    .local v0, "errorMessage":Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;
    sget-object v1, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer$1;->$SwitchMap$com$taobao$weex$devtools$inspector$jsonrpc$protocol$JsonRpcError$ErrorCode:[I

    iget-object v2, v0, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;->code:Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;

    invoke-virtual {v2}, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 165
    const-string/jumbo v1, "ChromeDevtoolsServer"

    const-string/jumbo v2, "Error processing remote message"

    invoke-static {v1, v2, p0}, Lcom/taobao/weex/devtools/common/LogRedirector;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    :goto_0
    return-void

    .line 162
    :pswitch_0
    const-string/jumbo v1, "ChromeDevtoolsServer"

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

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onClose(Lcom/taobao/weex/devtools/websocket/SimpleSession;ILjava/lang/String;)V
    .locals 4
    .param p1, "session"    # Lcom/taobao/weex/devtools/websocket/SimpleSession;
    .param p2, "code"    # I
    .param p3, "reasonPhrase"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    const-string/jumbo v1, "ChromeDevtoolsServer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onClose: reason="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/devtools/common/LogRedirector;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->mPeers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    .line 68
    .local v0, "peer":Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;->invokeDisconnectReceivers()V

    .line 71
    :cond_0
    return-void
.end method

.method public onError(Lcom/taobao/weex/devtools/websocket/SimpleSession;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "session"    # Lcom/taobao/weex/devtools/websocket/SimpleSession;
    .param p2, "ex"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    const-string/jumbo v0, "ChromeDevtoolsServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onError: ex="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/devtools/common/LogRedirector;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public onMessage(Lcom/taobao/weex/devtools/websocket/SimpleSession;Ljava/lang/String;)V
    .locals 7
    .param p1, "session"    # Lcom/taobao/weex/devtools/websocket/SimpleSession;
    .param p2, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0x3f3

    .line 80
    const-string/jumbo v2, "ChromeDevtoolsServer"

    invoke-static {v2, v6}, Lcom/taobao/weex/devtools/common/LogRedirector;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const-string/jumbo v2, "ChromeDevtoolsServer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onMessage: message="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/devtools/common/LogRedirector;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->mPeers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    .line 85
    .local v1, "peer":Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    invoke-static {v1}, Lcom/taobao/weex/devtools/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-direct {p0, v1, p2}, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->handleRemoteMessage(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/taobao/weex/devtools/inspector/MessageHandlingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 100
    .end local v1    # "peer":Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ChromeDevtoolsServer"

    invoke-static {v2, v6}, Lcom/taobao/weex/devtools/common/LogRedirector;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    const-string/jumbo v2, "ChromeDevtoolsServer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unexpected I/O exception processing message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/devtools/common/LogRedirector;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v5, v2}, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->closeSafely(Lcom/taobao/weex/devtools/websocket/SimpleSession;ILjava/lang/String;)V

    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 94
    .local v0, "e":Lcom/taobao/weex/devtools/inspector/MessageHandlingException;
    const-string/jumbo v2, "ChromeDevtoolsServer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Message could not be processed by implementation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/devtools/common/LogRedirector;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v5, v2}, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->closeSafely(Lcom/taobao/weex/devtools/websocket/SimpleSession;ILjava/lang/String;)V

    goto :goto_0

    .line 96
    .end local v0    # "e":Lcom/taobao/weex/devtools/inspector/MessageHandlingException;
    :catch_2
    move-exception v0

    .line 97
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "ChromeDevtoolsServer"

    const-string/jumbo v3, "Unexpected JSON exception processing message"

    invoke-static {v2, v3, v0}, Lcom/taobao/weex/devtools/common/LogRedirector;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v5, v2}, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->closeSafely(Lcom/taobao/weex/devtools/websocket/SimpleSession;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onMessage(Lcom/taobao/weex/devtools/websocket/SimpleSession;[BI)V
    .locals 3
    .param p1, "session"    # Lcom/taobao/weex/devtools/websocket/SimpleSession;
    .param p2, "message"    # [B
    .param p3, "messageLen"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    const-string/jumbo v0, "ChromeDevtoolsServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Ignoring binary message of length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/devtools/common/LogRedirector;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onOpen(Lcom/taobao/weex/devtools/websocket/SimpleSession;)V
    .locals 3
    .param p1, "session"    # Lcom/taobao/weex/devtools/websocket/SimpleSession;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    const-string/jumbo v0, "ChromeDevtoolsServer"

    const-string/jumbo v1, "onOpen"

    invoke-static {v0, v1}, Lcom/taobao/weex/devtools/common/LogRedirector;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->mPeers:Ljava/util/Map;

    new-instance v1, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/ChromeDevtoolsServer;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    invoke-direct {v1, v2, p1}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;-><init>(Lcom/taobao/weex/devtools/json/ObjectMapper;Lcom/taobao/weex/devtools/websocket/SimpleSession;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method
