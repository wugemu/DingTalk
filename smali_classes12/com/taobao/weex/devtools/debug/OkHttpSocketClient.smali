.class public Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;
.super Lcom/taobao/weex/devtools/debug/SocketClient;
.source "OkHttpSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/debug/OkHttpSocketClient$WebSocketInvocationHandler;
    }
.end annotation


# static fields
.field private static final CLASS_BUFFER:Ljava/lang/String; = "okio.Buffer"

.field private static final CLASS_BUFFER_SOURCE:Ljava/lang/String; = "okio.BufferedSource"

.field private static final CLASS_OKHTTP_CLIENT:Ljava/lang/String; = "com.squareup.okhttp.OkHttpClient"

.field private static final CLASS_REQUEST:Ljava/lang/String; = "com.squareup.okhttp.Request"

.field private static final CLASS_REQUEST_BUILDER:Ljava/lang/String; = "com.squareup.okhttp.Request$Builder"

.field private static final CLASS_RESPONSE:Ljava/lang/String; = "com.squareup.okhttp.Response"

.field private static final CLASS_WEBSOCKET:Ljava/lang/String; = "com.squareup.okhttp.ws.WebSocket"

.field private static final CLASS_WEBSOCKET_CALL:Ljava/lang/String; = "com.squareup.okhttp.ws.WebSocketCall"

.field private static final CLASS_WEBSOCKET_LISTENER:Ljava/lang/String; = "com.squareup.okhttp.ws.WebSocketListener"

.field private static final CLASS_WEBSOCKET_PAYLOADTYPE:Ljava/lang/String; = "com.squareup.okhttp.ws.WebSocket$PayloadType"

.field private static final TAG:Ljava/lang/String; = "OkHttpSocketClient"

.field private static sClazzMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBufferClazz:Ljava/lang/Class;

.field private mBufferedSourceClazz:Ljava/lang/Class;

.field private mMediaTypeClazz:Ljava/lang/Class;

.field private mOkHttpClientClazz:Ljava/lang/Class;

.field private mRequestBuilderClazz:Ljava/lang/Class;

.field private mRequestClazz:Ljava/lang/Class;

.field private mWebSocketCallClazz:Ljava/lang/Class;

.field private mWebSocketClazz:Ljava/lang/Class;

.field private mWebSocketListenerClazz:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v2, 0x0

    .line 23
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->sClazzMap:Ljava/util/HashMap;

    .line 39
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v3, "com.squareup.okhttp.ws.WebSocket"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string/jumbo v4, "com.squareup.okhttp.ws.WebSocketListener"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "com.squareup.okhttp.ws.WebSocketCall"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "com.squareup.okhttp.ws.WebSocket$PayloadType"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "com.squareup.okhttp.OkHttpClient"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "com.squareup.okhttp.Response"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "com.squareup.okhttp.Request"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "com.squareup.okhttp.Request$Builder"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "okio.Buffer"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "okio.BufferedSource"

    aput-object v4, v1, v3

    .line 51
    .local v1, "classNames":[Ljava/lang/String;
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v0, v1, v2

    .line 52
    .local v0, "className":Ljava/lang/String;
    sget-object v3, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->sClazzMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)V
    .locals 2
    .param p1, "proxy"    # Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/debug/SocketClient;-><init>(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)V

    .line 56
    sget-object v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->sClazzMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.squareup.okhttp.OkHttpClient"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mOkHttpClientClazz:Ljava/lang/Class;

    .line 57
    sget-object v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->sClazzMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.squareup.okhttp.Request"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mRequestClazz:Ljava/lang/Class;

    .line 58
    sget-object v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->sClazzMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.squareup.okhttp.Request$Builder"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mRequestBuilderClazz:Ljava/lang/Class;

    .line 59
    sget-object v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->sClazzMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.squareup.okhttp.ws.WebSocketCall"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocketCallClazz:Ljava/lang/Class;

    .line 60
    sget-object v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->sClazzMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.squareup.okhttp.ws.WebSocketListener"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocketListenerClazz:Ljava/lang/Class;

    .line 62
    sget-object v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->sClazzMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.squareup.okhttp.ws.WebSocket$PayloadType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mMediaTypeClazz:Ljava/lang/Class;

    .line 63
    sget-object v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->sClazzMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.squareup.okhttp.ws.WebSocket"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocketClazz:Ljava/lang/Class;

    .line 65
    sget-object v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->sClazzMap:Ljava/util/HashMap;

    const-string/jumbo v1, "okio.Buffer"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mBufferClazz:Ljava/lang/Class;

    .line 66
    sget-object v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->sClazzMap:Ljava/util/HashMap;

    const-string/jumbo v1, "okio.BufferedSource"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mBufferedSourceClazz:Ljava/lang/Class;

    .line 70
    new-instance v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient$WebSocketInvocationHandler;

    invoke-direct {v0, p0}, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient$WebSocketInvocationHandler;-><init>(Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mInvocationHandler:Ljava/lang/reflect/InvocationHandler;

    .line 71
    return-void
.end method

.method private abort(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 186
    const-string/jumbo v0, "OkHttpSocketClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Error occurred, shutting down websocket connection: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->close()V

    .line 189
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mConnectCallback:Lcom/taobao/weex/devtools/debug/SocketClient$Callback;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mConnectCallback:Lcom/taobao/weex/devtools/debug/SocketClient$Callback;

    invoke-interface {v0, p2}, Lcom/taobao/weex/devtools/debug/SocketClient$Callback;->onFailure(Ljava/lang/Throwable;)V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mConnectCallback:Lcom/taobao/weex/devtools/debug/SocketClient$Callback;

    .line 193
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocketClazz:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->abort(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mBufferedSourceClazz:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method protected close()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 143
    iget-object v1, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocket:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocketClazz:Ljava/lang/Class;

    const-string/jumbo v2, "close"

    new-array v3, v7, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 146
    .local v0, "closeMethod":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocket:Ljava/lang/Object;

    new-array v2, v7, [Ljava/lang/Object;

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "End of session"

    aput-object v3, v2, v6

    invoke-static {v1, v0, v2}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocket:Ljava/lang/Object;

    .line 148
    const-string/jumbo v1, "OkHttpSocketClient"

    const-string/jumbo v2, "Close websocket connection"

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .end local v0    # "closeMethod":Ljava/lang/reflect/Method;
    :cond_0
    return-void
.end method

.method protected connect(Ljava/lang/String;)V
    .locals 17
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mSocketClient:Ljava/lang/Object;

    if-eqz v12, :cond_0

    .line 75
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string/jumbo v13, "OkHttpSocketClient is already initialized."

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 78
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mOkHttpClientClazz:Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mSocketClient:Ljava/lang/Object;

    .line 79
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mOkHttpClientClazz:Ljava/lang/Class;

    const-string/jumbo v13, "setConnectTimeout"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-class v16, Ljava/util/concurrent/TimeUnit;

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 84
    .local v3, "connectTimeout":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mOkHttpClientClazz:Ljava/lang/Class;

    const-string/jumbo v13, "setWriteTimeout"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-class v16, Ljava/util/concurrent/TimeUnit;

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 89
    .local v11, "writeTimeout":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mOkHttpClientClazz:Ljava/lang/Class;

    const-string/jumbo v13, "setReadTimeout"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-class v16, Ljava/util/concurrent/TimeUnit;

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 94
    .local v7, "readTimeout":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocket:Ljava/lang/Object;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/16 v15, 0x1e

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v15, v13, v14

    invoke-static {v12, v3, v13}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocket:Ljava/lang/Object;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/16 v15, 0x1e

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v15, v13, v14

    invoke-static {v12, v11, v13}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocket:Ljava/lang/Object;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v15, v13, v14

    invoke-static {v12, v7, v13}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 99
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mRequestBuilderClazz:Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    .line 100
    .local v9, "requestBuilder":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mRequestBuilderClazz:Ljava/lang/Class;

    const-string/jumbo v13, "url"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 105
    .local v10, "urlMethod":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mRequestBuilderClazz:Ljava/lang/Class;

    const-string/jumbo v13, "build"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-static {v12, v13, v14}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 108
    .local v1, "buildMethod":Ljava/lang/reflect/Method;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-static {v9, v10, v12}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 109
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v1, v12}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 111
    .local v8, "request":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocketCallClazz:Ljava/lang/Class;

    const-string/jumbo v13, "enqueue"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocketListenerClazz:Ljava/lang/Class;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 116
    .local v6, "enqueueMethod":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocketCallClazz:Ljava/lang/Class;

    const-string/jumbo v13, "create"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mOkHttpClientClazz:Ljava/lang/Class;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mRequestClazz:Ljava/lang/Class;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 121
    .local v4, "createCallMethod":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocketCallClazz:Ljava/lang/Class;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mSocketClient:Ljava/lang/Object;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v8, v13, v14

    invoke-static {v12, v4, v13}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 127
    .local v2, "call":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocketListenerClazz:Ljava/lang/Class;

    .line 128
    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocketListenerClazz:Ljava/lang/Class;

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mInvocationHandler:Ljava/lang/reflect/InvocationHandler;

    .line 127
    invoke-static {v12, v13, v14}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocketListener:Ljava/lang/Object;

    .line 132
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocketListener:Ljava/lang/Object;

    aput-object v14, v12, v13

    invoke-static {v2, v6, v12}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    .end local v1    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v2    # "call":Ljava/lang/Object;
    .end local v3    # "connectTimeout":Ljava/lang/reflect/Method;
    .end local v4    # "createCallMethod":Ljava/lang/reflect/Method;
    .end local v6    # "enqueueMethod":Ljava/lang/reflect/Method;
    .end local v7    # "readTimeout":Ljava/lang/reflect/Method;
    .end local v8    # "request":Ljava/lang/Object;
    .end local v9    # "requestBuilder":Ljava/lang/Object;
    .end local v10    # "urlMethod":Ljava/lang/reflect/Method;
    .end local v11    # "writeTimeout":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v5

    .line 135
    .local v5, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v5}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v5    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v5

    .line 137
    .local v5, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method protected sendProtocolMessage(ILjava/lang/String;)V
    .locals 11
    .param p1, "requestID"    # I
    .param p2, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    iget-object v6, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocket:Ljava/lang/Object;

    if-nez v6, :cond_0

    .line 182
    :goto_0
    return-void

    .line 161
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mMediaTypeClazz:Ljava/lang/Class;

    const-string/jumbo v7, "TEXT"

    invoke-static {v6, v7}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 162
    .local v3, "textField":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 168
    .local v4, "textValue":Ljava/lang/Object;
    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocketClazz:Ljava/lang/Class;

    const-string/jumbo v7, "sendMessage"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mMediaTypeClazz:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mBufferClazz:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 171
    .local v2, "sendMessageMethod":Ljava/lang/reflect/Method;
    iget-object v6, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mBufferClazz:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 172
    .local v0, "buffer":Ljava/lang/Object;
    iget-object v6, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mBufferClazz:Ljava/lang/Class;

    const-string/jumbo v7, "writeUtf8"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 175
    .local v5, "writeUtf8":Ljava/lang/reflect/Method;
    iget-object v6, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocket:Ljava/lang/Object;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    .line 176
    invoke-static {v0, v5, v9}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    .line 175
    invoke-static {v6, v2, v7}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 177
    .end local v0    # "buffer":Ljava/lang/Object;
    .end local v2    # "sendMessageMethod":Ljava/lang/reflect/Method;
    .end local v3    # "textField":Ljava/lang/reflect/Field;
    .end local v4    # "textValue":Ljava/lang/Object;
    .end local v5    # "writeUtf8":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v6

    :try_start_2
    iget-object v6, p0, Lcom/taobao/weex/devtools/debug/OkHttpSocketClient;->mWebSocketClazz:Ljava/lang/Class;

    const-string/jumbo v7, "TEXT"

    invoke-static {v6, v7}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 165
    .restart local v3    # "textField":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .restart local v4    # "textValue":Ljava/lang/Object;
    goto :goto_1

    .line 179
    .end local v3    # "textField":Ljava/lang/reflect/Field;
    .end local v4    # "textValue":Ljava/lang/Object;
    :catch_2
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0
.end method
