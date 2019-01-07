.class public Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;
.super Lcom/taobao/weex/devtools/debug/SocketClient;
.source "OkHttp3SocketClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient$WebSocketInvocationHandler;
    }
.end annotation


# static fields
.field private static final CLASS_BUFFER:Ljava/lang/String; = "okio.Buffer"

.field private static final CLASS_BUFFER_SOURCE:Ljava/lang/String; = "okio.BufferedSource"

.field private static final CLASS_MEDIATYPE:Ljava/lang/String; = "okhttp3.MediaType"

.field private static final CLASS_OKHTTP_CLIENT:Ljava/lang/String; = "okhttp3.OkHttpClient"

.field private static final CLASS_OKHTTP_CLIENT_BUILDER:Ljava/lang/String; = "okhttp3.OkHttpClient$Builder"

.field private static final CLASS_REQUEST:Ljava/lang/String; = "okhttp3.Request"

.field private static final CLASS_REQUEST_BODY:Ljava/lang/String; = "okhttp3.RequestBody"

.field private static final CLASS_REQUEST_BUILDER:Ljava/lang/String; = "okhttp3.Request$Builder"

.field private static final CLASS_RESPONSE:Ljava/lang/String; = "okhttp3.Response"

.field private static final CLASS_RESPONSE_BODY:Ljava/lang/String; = "okhttp3.ResponseBody"

.field private static final CLASS_WEBSOCKET:Ljava/lang/String; = "okhttp3.ws.WebSocket"

.field private static final CLASS_WEBSOCKET_CALL:Ljava/lang/String; = "okhttp3.ws.WebSocketCall"

.field private static final CLASS_WEBSOCKET_LISTENER:Ljava/lang/String; = "okhttp3.ws.WebSocketListener"

.field private static final TAG:Ljava/lang/String; = "OkHttp3SocketClient"

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
.field private mBufferedSourceClazz:Ljava/lang/Class;

.field private mMediaTypeClazz:Ljava/lang/Class;

.field private mOkHttpClientBuilderClazz:Ljava/lang/Class;

.field private mOkHttpClientClazz:Ljava/lang/Class;

.field private mRequestBodyClazz:Ljava/lang/Class;

.field private mRequestBuilderClazz:Ljava/lang/Class;

.field private mRequestClazz:Ljava/lang/Class;

.field private mResponseBodyClazz:Ljava/lang/Class;

.field private mWebSocketCallClazz:Ljava/lang/Class;

.field private mWebSocketClazz:Ljava/lang/Class;

.field private mWebSocketListenerClazz:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xd

    const/4 v2, 0x0

    .line 22
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->sClazzMap:Ljava/util/HashMap;

    .line 40
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v3, "okhttp3.ws.WebSocket"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string/jumbo v4, "okhttp3.ws.WebSocketListener"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "okhttp3.ws.WebSocketCall"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "okhttp3.MediaType"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "okhttp3.OkHttpClient"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "okhttp3.OkHttpClient$Builder"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "okhttp3.Response"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "okhttp3.Request"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "okhttp3.Request$Builder"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "okio.Buffer"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "okio.BufferedSource"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "okhttp3.RequestBody"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "okhttp3.ResponseBody"

    aput-object v4, v1, v3

    .line 55
    .local v1, "classNames":[Ljava/lang/String;
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v0, v1, v2

    .line 56
    .local v0, "className":Ljava/lang/String;
    sget-object v3, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->sClazzMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)V
    .locals 2
    .param p1, "proxy"    # Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/debug/SocketClient;-><init>(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)V

    .line 60
    sget-object v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->sClazzMap:Ljava/util/HashMap;

    const-string/jumbo v1, "okhttp3.OkHttpClient"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mOkHttpClientClazz:Ljava/lang/Class;

    .line 61
    sget-object v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->sClazzMap:Ljava/util/HashMap;

    const-string/jumbo v1, "okhttp3.OkHttpClient$Builder"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mOkHttpClientBuilderClazz:Ljava/lang/Class;

    .line 63
    sget-object v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->sClazzMap:Ljava/util/HashMap;

    const-string/jumbo v1, "okhttp3.Request"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mRequestClazz:Ljava/lang/Class;

    .line 64
    sget-object v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->sClazzMap:Ljava/util/HashMap;

    const-string/jumbo v1, "okhttp3.Request$Builder"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mRequestBuilderClazz:Ljava/lang/Class;

    .line 65
    sget-object v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->sClazzMap:Ljava/util/HashMap;

    const-string/jumbo v1, "okhttp3.ws.WebSocketCall"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mWebSocketCallClazz:Ljava/lang/Class;

    .line 66
    sget-object v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->sClazzMap:Ljava/util/HashMap;

    const-string/jumbo v1, "okhttp3.ws.WebSocketListener"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mWebSocketListenerClazz:Ljava/lang/Class;

    .line 68
    sget-object v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->sClazzMap:Ljava/util/HashMap;

    const-string/jumbo v1, "okhttp3.RequestBody"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mRequestBodyClazz:Ljava/lang/Class;

    .line 69
    sget-object v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->sClazzMap:Ljava/util/HashMap;

    const-string/jumbo v1, "okhttp3.ResponseBody"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mResponseBodyClazz:Ljava/lang/Class;

    .line 70
    sget-object v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->sClazzMap:Ljava/util/HashMap;

    const-string/jumbo v1, "okhttp3.MediaType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mMediaTypeClazz:Ljava/lang/Class;

    .line 71
    sget-object v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->sClazzMap:Ljava/util/HashMap;

    const-string/jumbo v1, "okhttp3.ws.WebSocket"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mWebSocketClazz:Ljava/lang/Class;

    .line 72
    sget-object v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->sClazzMap:Ljava/util/HashMap;

    const-string/jumbo v1, "okio.BufferedSource"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mBufferedSourceClazz:Ljava/lang/Class;

    .line 76
    new-instance v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient$WebSocketInvocationHandler;

    invoke-direct {v0, p0}, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient$WebSocketInvocationHandler;-><init>(Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mInvocationHandler:Ljava/lang/reflect/InvocationHandler;

    .line 77
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
    .line 193
    const-string/jumbo v0, "OkHttp3SocketClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Error occurred, shutting down websocket connection: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->close()V

    .line 197
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mConnectCallback:Lcom/taobao/weex/devtools/debug/SocketClient$Callback;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mConnectCallback:Lcom/taobao/weex/devtools/debug/SocketClient$Callback;

    invoke-interface {v0, p2}, Lcom/taobao/weex/devtools/debug/SocketClient$Callback;->onFailure(Ljava/lang/Throwable;)V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mConnectCallback:Lcom/taobao/weex/devtools/debug/SocketClient$Callback;

    .line 201
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mWebSocketClazz:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->abort(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mResponseBodyClazz:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mBufferedSourceClazz:Ljava/lang/Class;

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

    .line 151
    iget-object v1, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mWebSocket:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mWebSocketClazz:Ljava/lang/Class;

    const-string/jumbo v2, "close"

    new-array v3, v7, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 157
    .local v0, "closeMethod":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mWebSocket:Ljava/lang/Object;

    new-array v2, v7, [Ljava/lang/Object;

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "End of session"

    aput-object v3, v2, v6

    invoke-static {v1, v0, v2}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mWebSocket:Ljava/lang/Object;

    .line 159
    const-string/jumbo v1, "OkHttp3SocketClient"

    const-string/jumbo v2, "Close websocket connection"

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .end local v0    # "closeMethod":Ljava/lang/reflect/Method;
    :cond_0
    return-void
.end method

.method protected connect(Ljava/lang/String;)V
    .locals 19
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 80
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mSocketClient:Ljava/lang/Object;

    if-eqz v14, :cond_0

    .line 81
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string/jumbo v15, "OkHttp3SocketClient is already initialized."

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 84
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mOkHttpClientBuilderClazz:Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 85
    .local v3, "builder":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mOkHttpClientBuilderClazz:Ljava/lang/Class;

    const-string/jumbo v15, "connectTimeout"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-class v18, Ljava/util/concurrent/TimeUnit;

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 90
    .local v5, "connectTimeout":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mOkHttpClientBuilderClazz:Ljava/lang/Class;

    const-string/jumbo v15, "writeTimeout"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-class v18, Ljava/util/concurrent/TimeUnit;

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 95
    .local v13, "writeTimeout":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mOkHttpClientBuilderClazz:Ljava/lang/Class;

    const-string/jumbo v15, "readTimeout"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-class v18, Ljava/util/concurrent/TimeUnit;

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 100
    .local v9, "readTimeout":Ljava/lang/reflect/Method;
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x1e

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v16, v14, v15

    invoke-static {v3, v5, v14}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 101
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x1e

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v16, v14, v15

    invoke-static {v3, v13, v14}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 102
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v16, v14, v15

    invoke-static {v3, v9, v14}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 105
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mOkHttpClientBuilderClazz:Ljava/lang/Class;

    const-string/jumbo v15, "build"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 107
    .local v1, "build":Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v3, v1, v14}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mSocketClient:Ljava/lang/Object;

    .line 109
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 110
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mRequestBuilderClazz:Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    .line 111
    .local v11, "requestBuilder":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mRequestBuilderClazz:Ljava/lang/Class;

    const-string/jumbo v15, "url"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-class v18, Ljava/lang/String;

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 115
    .local v12, "urlMethod":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mRequestBuilderClazz:Ljava/lang/Class;

    const-string/jumbo v15, "build"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 119
    .local v2, "buildMethod":Ljava/lang/reflect/Method;
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    invoke-static {v11, v12, v14}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 120
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v11, v2, v14}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 122
    .local v10, "request":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mWebSocketCallClazz:Ljava/lang/Class;

    const-string/jumbo v15, "enqueue"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mWebSocketListenerClazz:Ljava/lang/Class;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 126
    .local v8, "enqueueMethod":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mWebSocketCallClazz:Ljava/lang/Class;

    const-string/jumbo v15, "create"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mOkHttpClientClazz:Ljava/lang/Class;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mRequestClazz:Ljava/lang/Class;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 131
    .local v6, "createCallMethod":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mWebSocketCallClazz:Ljava/lang/Class;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mSocketClient:Ljava/lang/Object;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v10, v15, v16

    invoke-static {v14, v6, v15}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 137
    .local v4, "call":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mWebSocketListenerClazz:Ljava/lang/Class;

    .line 138
    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mWebSocketListenerClazz:Ljava/lang/Class;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mInvocationHandler:Ljava/lang/reflect/InvocationHandler;

    move-object/from16 v16, v0

    .line 137
    invoke-static/range {v14 .. v16}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mWebSocketListener:Ljava/lang/Object;

    .line 141
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mWebSocketListener:Ljava/lang/Object;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v4, v8, v14}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    .end local v1    # "build":Ljava/lang/reflect/Method;
    .end local v2    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v3    # "builder":Ljava/lang/Object;
    .end local v4    # "call":Ljava/lang/Object;
    .end local v5    # "connectTimeout":Ljava/lang/reflect/Method;
    .end local v6    # "createCallMethod":Ljava/lang/reflect/Method;
    .end local v8    # "enqueueMethod":Ljava/lang/reflect/Method;
    .end local v9    # "readTimeout":Ljava/lang/reflect/Method;
    .end local v10    # "request":Ljava/lang/Object;
    .end local v11    # "requestBuilder":Ljava/lang/Object;
    .end local v12    # "urlMethod":Ljava/lang/reflect/Method;
    .end local v13    # "writeTimeout":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v7

    .line 144
    .local v7, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v7}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v7    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v7

    .line 146
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method protected sendProtocolMessage(ILjava/lang/String;)V
    .locals 12
    .param p1, "requestID"    # I
    .param p2, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 165
    iget-object v5, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mWebSocket:Ljava/lang/Object;

    if-nez v5, :cond_0

    .line 189
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v5, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mRequestBodyClazz:Ljava/lang/Class;

    const-string/jumbo v6, "create"

    new-array v7, v11, [Ljava/lang/Class;

    iget-object v8, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mMediaTypeClazz:Ljava/lang/Class;

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 174
    .local v0, "createMethod":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mWebSocketClazz:Ljava/lang/Class;

    const-string/jumbo v6, "TEXT"

    invoke-static {v5, v6}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 175
    .local v3, "textField":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 177
    .local v4, "textValue":Ljava/lang/Object;
    iget-object v5, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mRequestBodyClazz:Ljava/lang/Class;

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v4, v6, v9

    aput-object p2, v6, v10

    invoke-static {v5, v0, v6}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 183
    .local v1, "requestBody":Ljava/lang/Object;
    iget-object v5, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mWebSocketClazz:Ljava/lang/Class;

    const-string/jumbo v6, "sendMessage"

    new-array v7, v10, [Ljava/lang/Class;

    iget-object v8, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mRequestBodyClazz:Ljava/lang/Class;

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 188
    .local v2, "sendMessageMethod":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/taobao/weex/devtools/debug/OkHttp3SocketClient;->mWebSocket:Ljava/lang/Object;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v1, v6, v9

    invoke-static {v5, v2, v6}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
