.class Lcom/taobao/weex/devtools/debug/CustomerWSClient$1;
.super Ljava/lang/Object;
.source "CustomerWSClient.java"

# interfaces
.implements Lcom/taobao/weex/devtools/debug/IWebSocketClient$WSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/debug/CustomerWSClient;->connect(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/debug/CustomerWSClient;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/debug/CustomerWSClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/debug/CustomerWSClient;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/taobao/weex/devtools/debug/CustomerWSClient$1;->this$0:Lcom/taobao/weex/devtools/debug/CustomerWSClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/CustomerWSClient$1;->this$0:Lcom/taobao/weex/devtools/debug/CustomerWSClient;

    iget-object v0, v0, Lcom/taobao/weex/devtools/debug/CustomerWSClient;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/CustomerWSClient$1;->this$0:Lcom/taobao/weex/devtools/debug/CustomerWSClient;

    iget-object v0, v0, Lcom/taobao/weex/devtools/debug/CustomerWSClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/CustomerWSClient$1;->this$0:Lcom/taobao/weex/devtools/debug/CustomerWSClient;

    iget-object v0, v0, Lcom/taobao/weex/devtools/debug/CustomerWSClient;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 45
    :cond_0
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/CustomerWSClient$1;->this$0:Lcom/taobao/weex/devtools/debug/CustomerWSClient;

    iget-object v0, v0, Lcom/taobao/weex/devtools/debug/CustomerWSClient;->mConnectCallback:Lcom/taobao/weex/devtools/debug/SocketClient$Callback;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/CustomerWSClient$1;->this$0:Lcom/taobao/weex/devtools/debug/CustomerWSClient;

    iget-object v0, v0, Lcom/taobao/weex/devtools/debug/CustomerWSClient;->mConnectCallback:Lcom/taobao/weex/devtools/debug/SocketClient$Callback;

    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/debug/SocketClient$Callback;->onFailure(Ljava/lang/Throwable;)V

    .line 51
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/CustomerWSClient$1;->this$0:Lcom/taobao/weex/devtools/debug/CustomerWSClient;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/taobao/weex/devtools/debug/CustomerWSClient;->mConnectCallback:Lcom/taobao/weex/devtools/debug/SocketClient$Callback;

    .line 53
    :cond_0
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/devtools/debug/CustomerWSClient$1;->this$0:Lcom/taobao/weex/devtools/debug/CustomerWSClient;

    iget-object v1, v1, Lcom/taobao/weex/devtools/debug/CustomerWSClient;->mProxy:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    invoke-virtual {v1, p1}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->handleMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onOpen()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 26
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/CustomerWSClient$1;->this$0:Lcom/taobao/weex/devtools/debug/CustomerWSClient;

    iget-object v0, v0, Lcom/taobao/weex/devtools/debug/CustomerWSClient;->mConnectCallback:Lcom/taobao/weex/devtools/debug/SocketClient$Callback;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/CustomerWSClient$1;->this$0:Lcom/taobao/weex/devtools/debug/CustomerWSClient;

    iget-object v0, v0, Lcom/taobao/weex/devtools/debug/CustomerWSClient;->mConnectCallback:Lcom/taobao/weex/devtools/debug/SocketClient$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/taobao/weex/devtools/debug/SocketClient$Callback;->onSuccess(Ljava/lang/String;)V

    .line 29
    :cond_0
    return-void
.end method
