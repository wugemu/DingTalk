.class public Lcom/taobao/weex/devtools/debug/SocketClientFactory;
.super Ljava/lang/Object;
.source "SocketClientFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)Lcom/taobao/weex/devtools/debug/SocketClient;
    .locals 3
    .param p0, "proxy"    # Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    .prologue
    .line 10
    new-instance v0, Lcom/taobao/weex/devtools/debug/CustomerWSClient;

    invoke-direct {v0, p0}, Lcom/taobao/weex/devtools/debug/CustomerWSClient;-><init>(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)V

    .line 11
    .local v0, "wsClient":Lcom/taobao/weex/devtools/debug/CustomerWSClient;
    invoke-virtual {v0}, Lcom/taobao/weex/devtools/debug/CustomerWSClient;->isAvailed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    .end local v0    # "wsClient":Lcom/taobao/weex/devtools/debug/CustomerWSClient;
    :goto_0
    return-object v0

    .line 13
    .restart local v0    # "wsClient":Lcom/taobao/weex/devtools/debug/CustomerWSClient;
    :cond_0
    const-string/jumbo v1, "okhttp3.ws.WebSocketListener"

    invoke-static {v1}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 14
    new-instance v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;

    .end local v0    # "wsClient":Lcom/taobao/weex/devtools/debug/CustomerWSClient;
    invoke-direct {v0, p0}, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;-><init>(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)V

    goto :goto_0

    .line 15
    .restart local v0    # "wsClient":Lcom/taobao/weex/devtools/debug/CustomerWSClient;
    :cond_1
    const-string/jumbo v1, "com.squareup.okhttp.ws.WebSocketListener"

    invoke-static {v1}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 16
    new-instance v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;

    .end local v0    # "wsClient":Lcom/taobao/weex/devtools/debug/CustomerWSClient;
    invoke-direct {v0, p0}, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;-><init>(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)V

    goto :goto_0

    .line 18
    .restart local v0    # "wsClient":Lcom/taobao/weex/devtools/debug/CustomerWSClient;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "No suitable websocket client found, trying to using WeexInspector.overrideWebSocketClient() to setting one"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 20
    const/4 v0, 0x0

    goto :goto_0
.end method
