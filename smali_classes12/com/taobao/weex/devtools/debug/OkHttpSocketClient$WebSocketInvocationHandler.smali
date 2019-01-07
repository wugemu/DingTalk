.class Lcom/taobao/weex/devtools/debug/OkHttpSocketClient$WebSocketInvocationHandler;
.super Ljava/lang/Object;
.source "OkHttpSocketClient.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebSocketInvocationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 200
    const-string/jumbo v5, "onOpen"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    iget-object v5, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;

    iget-object v6, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;

    invoke-static {v6}, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->access$000(Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;)Ljava/lang/Class;

    move-result-object v6

    aget-object v7, p3, v9

    invoke-virtual {v6, v7}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v5, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocket:Ljava/lang/Object;

    .line 202
    iget-object v5, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;

    iget-object v5, v5, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mConnectCallback:Lcom/taobao/weex/devtools/debug/SocketClient$Callback;

    if-eqz v5, :cond_0

    .line 203
    iget-object v5, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;

    iget-object v5, v5, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mConnectCallback:Lcom/taobao/weex/devtools/debug/SocketClient$Callback;

    invoke-interface {v5, v8}, Lcom/taobao/weex/devtools/debug/SocketClient$Callback;->onSuccess(Ljava/lang/String;)V

    .line 228
    :cond_0
    :goto_0
    return-object v8

    .line 205
    :cond_1
    const-string/jumbo v5, "onFailure"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 206
    iget-object v6, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;

    const-string/jumbo v7, "Websocket onFailure"

    aget-object v5, p3, v9

    check-cast v5, Ljava/io/IOException;

    invoke-static {v6, v7, v5}, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->access$100(Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 207
    :cond_2
    const-string/jumbo v5, "onMessage"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 208
    iget-object v5, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;

    invoke-static {v5}, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->access$200(Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;)Ljava/lang/Class;

    move-result-object v5

    aget-object v6, p3, v9

    invoke-virtual {v5, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    .local v0, "bufferedSource":Ljava/lang/Object;
    iget-object v5, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;

    invoke-static {v5}, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->access$200(Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;)Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "readUtf8"

    new-array v7, v9, [Ljava/lang/Class;

    invoke-static {v5, v6, v7}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 211
    .local v4, "readUtf8":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 212
    .local v3, "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;

    iget-object v5, v5, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mProxy:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    invoke-virtual {v5, v3}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->handleMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    iget-object v5, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;

    invoke-static {v5}, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->access$200(Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;)Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "close"

    new-array v7, v9, [Ljava/lang/Class;

    invoke-static {v5, v6, v7}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 219
    .local v1, "closeMethod":Ljava/lang/reflect/Method;
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 213
    .end local v1    # "closeMethod":Ljava/lang/reflect/Method;
    .end local v3    # "message":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 214
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "OkHttpSocketClient"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/taobao/weex/devtools/common/LogRedirector;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 215
    const-string/jumbo v5, "OkHttpSocketClient"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Unexpected I/O exception processing message: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/taobao/weex/devtools/common/LogRedirector;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :cond_3
    iget-object v5, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;

    invoke-static {v5}, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->access$200(Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;)Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "close"

    new-array v7, v9, [Ljava/lang/Class;

    invoke-static {v5, v6, v7}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 219
    .restart local v1    # "closeMethod":Ljava/lang/reflect/Method;
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 218
    .end local v1    # "closeMethod":Ljava/lang/reflect/Method;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;

    invoke-static {v6}, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->access$200(Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;)Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "close"

    new-array v8, v9, [Ljava/lang/Class;

    invoke-static {v6, v7, v8}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 219
    .restart local v1    # "closeMethod":Ljava/lang/reflect/Method;
    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v6}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    throw v5

    .line 221
    .end local v0    # "bufferedSource":Ljava/lang/Object;
    .end local v1    # "closeMethod":Ljava/lang/reflect/Method;
    .end local v4    # "readUtf8":Ljava/lang/reflect/Method;
    :cond_4
    const-string/jumbo v5, "onPong"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 223
    const-string/jumbo v5, "onClose"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    iget-object v5, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;

    iget-object v5, v5, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;

    iget-object v5, v5, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 225
    iget-object v5, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient$WebSocketInvocationHandler;->this$0:Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;

    iget-object v5, v5, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
