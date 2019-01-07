.class Lcom/ali/user/enterprise/base/rpc/DingWrapper$1;
.super Ljava/lang/Object;
.source "DingWrapper.java"

# interfaces
.implements Lcom/ali/user/enterprise/base/rpc/model/DingRpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/enterprise/base/rpc/DingWrapper;->post(Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/user/enterprise/base/rpc/DingWrapper;

.field final synthetic val$requestCallback:Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;

.field final synthetic val$v:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/ali/user/enterprise/base/rpc/DingWrapper;Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/user/enterprise/base/rpc/DingWrapper;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ali/user/enterprise/base/rpc/DingWrapper$1;->this$0:Lcom/ali/user/enterprise/base/rpc/DingWrapper;

    iput-object p2, p0, Lcom/ali/user/enterprise/base/rpc/DingWrapper$1;->val$requestCallback:Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;

    iput-object p3, p0, Lcom/ali/user/enterprise/base/rpc/DingWrapper$1;->val$v:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 98
    new-instance v0, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;

    invoke-direct {v0}, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;-><init>()V

    .line 99
    .local v0, "response":Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;
    iput p1, v0, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->code:I

    .line 100
    iput-object p2, v0, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->message:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/ali/user/enterprise/base/rpc/DingWrapper$1;->val$requestCallback:Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/ali/user/enterprise/base/rpc/DingWrapper$1;->val$requestCallback:Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;

    invoke-interface {v1, v0}, Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;->onError(Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;)V

    .line 104
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 65
    iget-object v6, p0, Lcom/ali/user/enterprise/base/rpc/DingWrapper$1;->val$requestCallback:Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;

    if-eqz v6, :cond_0

    .line 66
    new-instance v5, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;

    invoke-direct {v5}, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;-><init>()V

    .line 68
    .local v5, "response":Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "success"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 70
    .local v3, "isSuccess":Z
    if-eqz v3, :cond_1

    .line 71
    iget-object v6, p0, Lcom/ali/user/enterprise/base/rpc/DingWrapper$1;->val$v:Ljava/lang/Class;

    invoke-static {p1, v6}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v5, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->returnValue:Ljava/lang/Object;

    .line 72
    const/16 v6, 0xbb8

    iput v6, v5, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->code:I

    .line 73
    const-string/jumbo v6, "success"

    iput-object v6, v5, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->message:Ljava/lang/String;

    .line 74
    iget-object v6, p0, Lcom/ali/user/enterprise/base/rpc/DingWrapper$1;->val$requestCallback:Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;

    invoke-interface {v6, v5}, Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;->onSuccess(Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;)V

    .line 94
    .end local v3    # "isSuccess":Z
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "response":Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;
    :cond_0
    :goto_0
    return-void

    .line 76
    .restart local v3    # "isSuccess":Z
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "response":Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;
    :cond_1
    const-string/jumbo v6, "code"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 77
    .local v1, "errorCode":I
    const-string/jumbo v6, "message"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "errorMessage":Ljava/lang/String;
    iput v1, v5, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->code:I

    .line 79
    iput-object v2, v5, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->message:Ljava/lang/String;

    .line 80
    iget-object v6, p0, Lcom/ali/user/enterprise/base/rpc/DingWrapper$1;->val$requestCallback:Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;

    invoke-interface {v6, v5}, Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;->onError(Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v1    # "errorCode":I
    .end local v2    # "errorMessage":Ljava/lang/String;
    .end local v3    # "isSuccess":Z
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    const/4 v6, -0x4

    iput v6, v5, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->code:I

    .line 85
    const-string/jumbo v6, "json parse error"

    iput-object v6, v5, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->message:Ljava/lang/String;

    .line 86
    iget-object v6, p0, Lcom/ali/user/enterprise/base/rpc/DingWrapper$1;->val$requestCallback:Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;

    invoke-interface {v6, v5}, Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;->onError(Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;)V

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "response":Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;
    :cond_2
    iget-object v6, p0, Lcom/ali/user/enterprise/base/rpc/DingWrapper$1;->val$requestCallback:Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;

    if-eqz v6, :cond_0

    .line 92
    iget-object v6, p0, Lcom/ali/user/enterprise/base/rpc/DingWrapper$1;->val$requestCallback:Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;

    new-instance v7, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;

    invoke-direct {v7}, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;-><init>()V

    invoke-interface {v6, v7}, Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;->onSystemError(Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;)V

    goto :goto_0
.end method
