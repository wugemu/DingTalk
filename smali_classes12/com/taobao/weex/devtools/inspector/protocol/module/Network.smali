.class public Lcom/taobao/weex/devtools/inspector/protocol/module/Network;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameErrorParams;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrame;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameSentParams;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameReceivedParams;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketResponse;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketHandshakeResponseReceivedParams;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketRequest;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketWillSendHandshakeRequestParams;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketClosedParams;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketCreatedParams;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResourceTiming;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Response;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Network$InitiatorType;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Initiator;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Request;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Network$DataReceivedParams;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Network$LoadingFailedParams;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Network$LoadingFinishedParams;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResponseReceivedParams;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Network$RequestWillBeSentParams;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Network$GetResponseBodyResponse;
    }
.end annotation


# instance fields
.field private final mNetworkPeerManager:Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

.field private final mResponseBodyFileManager:Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->getOrCreateInstance(Landroid/content/Context;)Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network;->mNetworkPeerManager:Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    .line 41
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network;->mNetworkPeerManager:Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->getResponseBodyFileManager()Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network;->mResponseBodyFileManager:Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;

    .line 42
    return-void
.end method

.method private readResponseBody(Ljava/lang/String;)Lcom/taobao/weex/devtools/inspector/protocol/module/Network$GetResponseBodyResponse;
    .locals 8
    .param p1, "requestId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 78
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$GetResponseBodyResponse;

    invoke-direct {v2, v7}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$GetResponseBodyResponse;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Network$1;)V

    .line 81
    .local v2, "response":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$GetResponseBodyResponse;
    :try_start_0
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network;->mResponseBodyFileManager:Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;

    invoke-virtual {v3, p1}, Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;->readFile(Ljava/lang/String;)Lcom/taobao/weex/devtools/inspector/network/ResponseBodyData;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    .local v0, "bodyData":Lcom/taobao/weex/devtools/inspector/network/ResponseBodyData;
    iget-object v3, v0, Lcom/taobao/weex/devtools/inspector/network/ResponseBodyData;->data:Ljava/lang/String;

    iput-object v3, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$GetResponseBodyResponse;->body:Ljava/lang/String;

    .line 88
    iget-boolean v3, v0, Lcom/taobao/weex/devtools/inspector/network/ResponseBodyData;->base64Encoded:Z

    iput-boolean v3, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$GetResponseBodyResponse;->base64Encoded:Z

    .line 89
    return-object v2

    .line 82
    .end local v0    # "bodyData":Lcom/taobao/weex/devtools/inspector/network/ResponseBodyData;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    new-instance v3, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;

    new-instance v4, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;

    sget-object v5, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;->INTERNAL_ERROR:Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;

    .line 84
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v7}, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;-><init>(Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {v3, v4}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;-><init>(Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;)V

    throw v3
.end method


# virtual methods
.method public disable(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network;->mNetworkPeerManager:Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->removePeer(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)V

    .line 52
    return-void
.end method

.method public enable(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network;->mNetworkPeerManager:Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->addPeer(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)Z

    .line 47
    return-void
.end method

.method public getResponseBody(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;
    .locals 7
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 63
    :try_start_0
    const-string/jumbo v2, "requestId"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "requestId":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network;->readResponseBody(Ljava/lang/String;)Lcom/taobao/weex/devtools/inspector/protocol/module/Network$GetResponseBodyResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 65
    .end local v1    # "requestId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;

    new-instance v3, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;

    sget-object v4, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;->INTERNAL_ERROR:Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;

    .line 67
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;-><init>(Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;-><init>(Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;)V

    throw v2

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 70
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;

    new-instance v3, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;

    sget-object v4, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;->INTERNAL_ERROR:Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;

    .line 71
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;-><init>(Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;-><init>(Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;)V

    throw v2
.end method

.method public setPrettyPrinterInitializer(Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterInitializer;)V
    .locals 1
    .param p1, "initializer"    # Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterInitializer;

    .prologue
    .line 100
    invoke-static {p1}, Lcom/taobao/weex/devtools/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network;->mNetworkPeerManager:Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->setPrettyPrinterInitializer(Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterInitializer;)V

    .line 102
    return-void
.end method

.method public setUserAgentOverride(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 57
    return-void
.end method
