.class public abstract Lcom/taobao/weex/devtools/debug/SocketClient;
.super Ljava/lang/Object;
.source "SocketClient.java"

# interfaces
.implements Lcom/taobao/weex/devtools/websocket/SimpleSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/debug/SocketClient$MessageHandler;,
        Lcom/taobao/weex/devtools/debug/SocketClient$Callback;
    }
.end annotation


# static fields
.field protected static final CLOSE_WEB_SOCKET:I = 0x3

.field protected static final CONNECT_TO_WEB_SOCKET:I = 0x1

.field protected static final DISCONNECT_LOOPER:I = 0x4

.field private static final KEY_MESSAGE:Ljava/lang/String; = "web_socket_message"

.field protected static final SEND_MESSAGE:I = 0x2


# instance fields
.field protected mConnectCallback:Lcom/taobao/weex/devtools/debug/SocketClient$Callback;

.field protected mHandler:Landroid/os/Handler;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field protected mInvocationHandler:Ljava/lang/reflect/InvocationHandler;

.field protected mProxy:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

.field protected mSocketClient:Ljava/lang/Object;

.field protected mWebSocket:Ljava/lang/Object;

.field protected mWebSocketListener:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/debug/SocketClient;->init(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected abstract close()V
.end method

.method public close(ILjava/lang/String;)V
    .locals 2
    .param p1, "closeReason"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/SocketClient;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/SocketClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/SocketClient;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 75
    :cond_0
    return-void
.end method

.method protected abstract connect(Ljava/lang/String;)V
.end method

.method public connect(Ljava/lang/String;Lcom/taobao/weex/devtools/debug/SocketClient$Callback;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/taobao/weex/devtools/debug/SocketClient$Callback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    iput-object p2, p0, Lcom/taobao/weex/devtools/debug/SocketClient;->mConnectCallback:Lcom/taobao/weex/devtools/debug/SocketClient$Callback;

    .line 37
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 38
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "web_socket_message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 42
    iget-object v2, p0, Lcom/taobao/weex/devtools/debug/SocketClient;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/taobao/weex/devtools/debug/SocketClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/taobao/weex/devtools/debug/SocketClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 45
    :cond_0
    return-void
.end method

.method protected init(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)V
    .locals 2
    .param p1, "proxy"    # Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/taobao/weex/devtools/debug/SocketClient;->mProxy:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    .line 49
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DebugServerProxy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/SocketClient;->mHandlerThread:Landroid/os/HandlerThread;

    .line 50
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/SocketClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 51
    new-instance v0, Lcom/taobao/weex/devtools/debug/SocketClient$MessageHandler;

    iget-object v1, p0, Lcom/taobao/weex/devtools/debug/SocketClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/devtools/debug/SocketClient$MessageHandler;-><init>(Lcom/taobao/weex/devtools/debug/SocketClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/SocketClient;->mHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/SocketClient;->mWebSocket:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/SocketClient;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/SocketClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    :cond_0
    return-void
.end method

.method public sendBinary([B)V
    .locals 0
    .param p1, "payload"    # [B

    .prologue
    .line 68
    return-void
.end method

.method protected abstract sendProtocolMessage(ILjava/lang/String;)V
.end method

.method public sendText(Ljava/lang/String;)V
    .locals 3
    .param p1, "payload"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 57
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "web_socket_message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 61
    iget-object v2, p0, Lcom/taobao/weex/devtools/debug/SocketClient;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/taobao/weex/devtools/debug/SocketClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/taobao/weex/devtools/debug/SocketClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    :cond_0
    return-void
.end method
