.class Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient$WebSocketInvocationHandler;
.super Ljava/lang/Object;
.source "OkHttp3SocketClient.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebSocketInvocationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 208
    const-string/jumbo v7, "onOpen"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 209
    iget-object v7, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;

    iget-object v8, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;

    invoke-static {v8}, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->access$000(Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;)Ljava/lang/Class;

    move-result-object v8

    aget-object v9, p3, v11

    invoke-virtual {v8, v9}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v7, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mWebSocket:Ljava/lang/Object;

    .line 210
    iget-object v7, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;

    iget-object v7, v7, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mConnectCallback:Lcom/taobao/weex/devtools/debug/SocketClient$Callback;

    if-eqz v7, :cond_0

    .line 211
    iget-object v7, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;

    iget-object v7, v7, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mConnectCallback:Lcom/taobao/weex/devtools/debug/SocketClient$Callback;

    invoke-interface {v7, v10}, Lcom/taobao/weex/devtools/debug/SocketClient$Callback;->onSuccess(Ljava/lang/String;)V

    .line 238
    :cond_0
    :goto_0
    return-object v10

    .line 213
    :cond_1
    const-string/jumbo v7, "onFailure"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 214
    iget-object v8, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;

    const-string/jumbo v9, "Websocket onFailure"

    aget-object v7, p3, v11

    check-cast v7, Ljava/io/IOException;

    invoke-static {v8, v9, v7}, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->access$100(Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 215
    :cond_2
    const-string/jumbo v7, "onMessage"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 216
    iget-object v7, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;

    invoke-static {v7}, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->access$200(Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;)Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "source"

    new-array v9, v11, [Ljava/lang/Class;

    invoke-static {v7, v8, v9}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 217
    .local v6, "source":Ljava/lang/reflect/Method;
    iget-object v7, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;

    invoke-static {v7}, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->access$200(Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;)Ljava/lang/Class;

    move-result-object v7

    aget-object v8, p3, v11

    invoke-virtual {v7, v8}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 218
    .local v4, "payload":Ljava/lang/Object;
    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 220
    .local v0, "bufferSource":Ljava/lang/Object;
    :try_start_0
    iget-object v7, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;

    invoke-static {v7}, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->access$300(Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;)Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "readUtf8"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-static {v7, v8, v9}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 221
    .local v5, "readUtf8":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v5, v7}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 222
    .local v3, "message":Ljava/lang/String;
    iget-object v7, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;

    iget-object v7, v7, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mProxy:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    invoke-virtual {v7, v3}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->handleMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    iget-object v7, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;

    invoke-static {v7}, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->access$300(Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;)Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "close"

    new-array v9, v11, [Ljava/lang/Class;

    invoke-static {v7, v8, v9}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 229
    .local v1, "closeMethod":Ljava/lang/reflect/Method;
    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v7}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 223
    .end local v1    # "closeMethod":Ljava/lang/reflect/Method;
    .end local v3    # "message":Ljava/lang/String;
    .end local v5    # "readUtf8":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 224
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v7, "OkHttp3SocketClient"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/taobao/weex/devtools/common/LogRedirector;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 225
    const-string/jumbo v7, "OkHttp3SocketClient"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Unexpected I/O exception processing message: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/taobao/weex/devtools/common/LogRedirector;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :cond_3
    iget-object v7, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;

    invoke-static {v7}, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->access$300(Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;)Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "close"

    new-array v9, v11, [Ljava/lang/Class;

    invoke-static {v7, v8, v9}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 229
    .restart local v1    # "closeMethod":Ljava/lang/reflect/Method;
    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v7}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 228
    .end local v1    # "closeMethod":Ljava/lang/reflect/Method;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;

    invoke-static {v8}, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->access$300(Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;)Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "close"

    new-array v10, v11, [Ljava/lang/Class;

    invoke-static {v8, v9, v10}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 229
    .restart local v1    # "closeMethod":Ljava/lang/reflect/Method;
    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v8}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    throw v7

    .line 231
    .end local v0    # "bufferSource":Ljava/lang/Object;
    .end local v1    # "closeMethod":Ljava/lang/reflect/Method;
    .end local v4    # "payload":Ljava/lang/Object;
    .end local v6    # "source":Ljava/lang/reflect/Method;
    :cond_4
    const-string/jumbo v7, "onPong"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 233
    const-string/jumbo v7, "onClose"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 234
    iget-object v7, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;

    iget-object v7, v7, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;

    iget-object v7, v7, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 235
    iget-object v7, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;

    iget-object v7, v7, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
