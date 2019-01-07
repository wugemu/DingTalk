.class public Lcom/taobao/weex/devtools/debug/CustomerWSClient;
.super Lcom/taobao/weex/devtools/debug/SocketClient;
.source "CustomerWSClient.java"


# instance fields
.field private webSocketClient:Lcom/taobao/weex/devtools/debug/IWebSocketClient;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)V
    .locals 1
    .param p1, "proxy"    # Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/debug/SocketClient;-><init>(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)V

    .line 17
    invoke-static {}, Lcom/taobao/weex/devtools/WeexInspector;->getCustomerWSClient()Lcom/taobao/weex/devtools/debug/IWebSocketClient;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/CustomerWSClient;->webSocketClient:Lcom/taobao/weex/devtools/debug/IWebSocketClient;

    .line 18
    return-void
.end method


# virtual methods
.method protected close()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/CustomerWSClient;->webSocketClient:Lcom/taobao/weex/devtools/debug/IWebSocketClient;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/CustomerWSClient;->webSocketClient:Lcom/taobao/weex/devtools/debug/IWebSocketClient;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/debug/IWebSocketClient;->close()V

    .line 63
    :cond_0
    return-void
.end method

.method protected connect(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 22
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/CustomerWSClient;->webSocketClient:Lcom/taobao/weex/devtools/debug/IWebSocketClient;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/CustomerWSClient;->webSocketClient:Lcom/taobao/weex/devtools/debug/IWebSocketClient;

    new-instance v1, Lcom/taobao/weex/devtools/debug/CustomerWSClient$1;

    invoke-direct {v1, p0}, Lcom/taobao/weex/devtools/debug/CustomerWSClient$1;-><init>(Lcom/taobao/weex/devtools/debug/CustomerWSClient;)V

    invoke-interface {v0, p1, v1}, Lcom/taobao/weex/devtools/debug/IWebSocketClient;->connect(Ljava/lang/String;Lcom/taobao/weex/devtools/debug/IWebSocketClient$WSListener;)V

    .line 56
    :cond_0
    return-void
.end method

.method public isAvailed()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/CustomerWSClient;->webSocketClient:Lcom/taobao/weex/devtools/debug/IWebSocketClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/CustomerWSClient;->webSocketClient:Lcom/taobao/weex/devtools/debug/IWebSocketClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/CustomerWSClient;->webSocketClient:Lcom/taobao/weex/devtools/debug/IWebSocketClient;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/debug/IWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sendProtocolMessage(ILjava/lang/String;)V
    .locals 1
    .param p1, "requestID"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/CustomerWSClient;->webSocketClient:Lcom/taobao/weex/devtools/debug/IWebSocketClient;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/CustomerWSClient;->webSocketClient:Lcom/taobao/weex/devtools/debug/IWebSocketClient;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/devtools/debug/IWebSocketClient;->sendMessage(ILjava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method
