.class Lcom/taobao/weex/devtools/inspector/MethodDispatcher$MethodDispatchHelper;
.super Ljava/lang/Object;
.source "MethodDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/MethodDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodDispatchHelper"
.end annotation


# instance fields
.field private final mInstance:Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;

.field private final mMethod:Ljava/lang/reflect/Method;

.field private final mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/devtools/json/ObjectMapper;Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "objectMapper"    # Lcom/taobao/weex/devtools/json/ObjectMapper;
    .param p2, "instance"    # Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;
    .param p3, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/MethodDispatcher$MethodDispatchHelper;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    .line 90
    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/MethodDispatcher$MethodDispatchHelper;->mInstance:Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;

    .line 91
    iput-object p3, p0, Lcom/taobao/weex/devtools/inspector/MethodDispatcher$MethodDispatchHelper;->mMethod:Ljava/lang/reflect/Method;

    .line 92
    return-void
.end method


# virtual methods
.method public invoke(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Lorg/json/JSONException;,
            Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/MethodDispatcher$MethodDispatchHelper;->mMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/MethodDispatcher$MethodDispatchHelper;->mInstance:Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 97
    .local v1, "internalResult":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/EmptyResult;

    if-eqz v2, :cond_1

    .line 98
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 101
    :goto_0
    return-object v2

    :cond_1
    move-object v0, v1

    .line 100
    check-cast v0, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;

    .line 101
    .local v0, "convertableResult":Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/MethodDispatcher$MethodDispatchHelper;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v3}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    goto :goto_0
.end method
