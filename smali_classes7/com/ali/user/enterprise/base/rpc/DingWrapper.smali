.class public Lcom/ali/user/enterprise/base/rpc/DingWrapper;
.super Ljava/lang/Object;
.source "DingWrapper.java"


# static fields
.field private static INSTANCE:Lcom/ali/user/enterprise/base/rpc/DingWrapper; = null

.field private static final TAG:Ljava/lang/String; = "login.DingWrapperImpl"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ali/user/enterprise/base/rpc/DingWrapper;
    .locals 3

    .prologue
    .line 30
    const-class v1, Lcom/ali/user/enterprise/base/rpc/DingWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/enterprise/base/rpc/DingWrapper;->INSTANCE:Lcom/ali/user/enterprise/base/rpc/DingWrapper;

    if-nez v0, :cond_1

    .line 31
    const-class v2, Lcom/ali/user/enterprise/base/rpc/DingWrapper;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    :try_start_1
    sget-object v0, Lcom/ali/user/enterprise/base/rpc/DingWrapper;->INSTANCE:Lcom/ali/user/enterprise/base/rpc/DingWrapper;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/ali/user/enterprise/base/rpc/DingWrapper;

    invoke-direct {v0}, Lcom/ali/user/enterprise/base/rpc/DingWrapper;-><init>()V

    sput-object v0, Lcom/ali/user/enterprise/base/rpc/DingWrapper;->INSTANCE:Lcom/ali/user/enterprise/base/rpc/DingWrapper;

    .line 35
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :cond_1
    :try_start_2
    sget-object v0, Lcom/ali/user/enterprise/base/rpc/DingWrapper;->INSTANCE:Lcom/ali/user/enterprise/base/rpc/DingWrapper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 30
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public post(Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;)V
    .locals 7
    .param p1, "request"    # Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;
    .param p2, "v"    # Ljava/lang/Class;
    .param p3, "requestCallback"    # Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 46
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 48
    .local v2, "requestJsonObject":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;->paramNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 49
    iget-object v4, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;->paramNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;->paramValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 51
    :try_start_0
    iget-object v4, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;->paramNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;->paramValues:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 58
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getLoginService()Lcom/ali/user/enterprise/base/rpc/LoginService;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 59
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getLoginService()Lcom/ali/user/enterprise/base/rpc/LoginService;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/ali/user/enterprise/base/rpc/DingWrapper$1;

    invoke-direct {v6, p0, p3, p2}, Lcom/ali/user/enterprise/base/rpc/DingWrapper$1;-><init>(Lcom/ali/user/enterprise/base/rpc/DingWrapper;Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;Ljava/lang/Class;)V

    invoke-interface {v4, v5, v6}, Lcom/ali/user/enterprise/base/rpc/LoginService;->login(Ljava/lang/String;Lcom/ali/user/enterprise/base/rpc/model/DingRpcCallback;)V

    .line 116
    :cond_2
    :goto_2
    return-void

    .line 107
    :cond_3
    new-instance v3, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;

    invoke-direct {v3}, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;-><init>()V

    .line 108
    .local v3, "response":Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;
    const/16 v4, -0x64

    iput v4, v3, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->code:I

    .line 109
    const-string/jumbo v4, "Login Service not registered"

    iput-object v4, v3, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->message:Ljava/lang/String;

    .line 110
    if-eqz p3, :cond_2

    .line 111
    invoke-interface {p3, v3}, Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;->onError(Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;)V

    goto :goto_2
.end method
