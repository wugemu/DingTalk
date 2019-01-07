.class public Lcom/taobao/weex/appfram/websocket/WebSocketModule;
.super Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
.source "WebSocketModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;
    }
.end annotation


# static fields
.field private static final KEY_CODE:Ljava/lang/String; = "code"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_REASON:Ljava/lang/String; = "reason"

.field private static final KEY_WAS_CLEAN:Ljava/lang/String; = "wasClean"

.field private static final TAG:Ljava/lang/String; = "WebSocketModule"


# instance fields
.field private eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

.field private webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine$DestroyableModule;-><init>()V

    .line 48
    const-string/jumbo v0, "WebSocketModule"

    const-string/jumbo v1, "create new instance"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method static synthetic access$500(Lcom/taobao/weex/appfram/websocket/WebSocketModule;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/taobao/weex/appfram/websocket/WebSocketModule;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/appfram/websocket/WebSocketModule;
    .param p1, "x1"    # Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    return-object p1
.end method

.method static synthetic access$602(Lcom/taobao/weex/appfram/websocket/WebSocketModule;Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;)Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/appfram/websocket/WebSocketModule;
    .param p1, "x1"    # Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    return-object p1
.end method

.method private reportErrorIfNoAdapter()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    const-string/jumbo v1, "No implementation found for IWebSocketAdapter"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onError(Ljava/lang/String;)V

    .line 140
    :cond_0
    const-string/jumbo v0, "WebSocketModule"

    const-string/jumbo v1, "No implementation found for IWebSocketAdapter"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public WebSocket(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v0, "WebSocketModule"

    const-string/jumbo v1, "close"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    sget-object v1, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v1}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->getCode()I

    move-result v1

    sget-object v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->close(ILjava/lang/String;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXWebSocketAdapter()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    .line 58
    invoke-direct {p0}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->reportErrorIfNoAdapter()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;-><init>(Lcom/taobao/weex/appfram/websocket/WebSocketModule;Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;)V

    iput-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    .line 60
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    iget-object v1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    invoke-interface {v0, p1, p2, v1}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->connect(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;)V

    .line 62
    :cond_1
    return-void
.end method

.method public close(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->reportErrorIfNoAdapter()Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    sget-object v1, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_NORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v1}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->getCode()I

    move-result v0

    .line 75
    .local v0, "codeNumber":I
    if-eqz p1, :cond_0

    .line 77
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 82
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    invoke-interface {v1, v0, p2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->close(ILjava/lang/String;)V

    .line 84
    .end local v0    # "codeNumber":I
    :cond_1
    return-void

    .restart local v0    # "codeNumber":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;-><init>(Lcom/taobao/weex/appfram/websocket/WebSocketModule;)V

    .line 128
    .local v0, "destroyTask":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 129
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onclose(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    invoke-static {v0, p1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->access$302(Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    .line 105
    :cond_0
    return-void
.end method

.method public onerror(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    invoke-static {v0, p1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->access$402(Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    .line 112
    :cond_0
    return-void
.end method

.method public onmessage(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    invoke-static {v0, p1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->access$202(Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    .line 98
    :cond_0
    return-void
.end method

.method public onopen(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    invoke-static {v0, p1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->access$102(Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    .line 91
    :cond_0
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->reportErrorIfNoAdapter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->send(Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method
