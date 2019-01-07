.class Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$3;
.super Lcmi;
.source "MtopRpcServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;->remoteBusiness(Lcom/ali/user/open/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;

.field final synthetic val$aClass:Ljava/lang/Class;

.field final synthetic val$rpcRequestCallbackWithCode:Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;


# direct methods
.method constructor <init>(Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$3;->this$0:Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;

    iput-object p2, p0, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$3;->val$rpcRequestCallbackWithCode:Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;

    iput-object p3, p0, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$3;->val$aClass:Ljava/lang/Class;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 95
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "mtop remoteBusiness onException and errorCode = "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " errorMsg = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$3;->val$rpcRequestCallbackWithCode:Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;

    if-eqz v1, :cond_0

    .line 98
    new-instance v0, Lcom/ali/user/open/core/model/RpcResponse;

    invoke-direct {v0}, Lcom/ali/user/open/core/model/RpcResponse;-><init>()V

    .line 99
    .local v0, "rpcResponse":Lcom/ali/user/open/core/model/RpcResponse;
    iput-boolean v4, v0, Lcom/ali/user/open/core/model/RpcResponse;->success:Z

    .line 100
    const-string/jumbo v1, "408"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const/4 v1, 0x7

    iput v1, v0, Lcom/ali/user/open/core/model/RpcResponse;->code:I

    .line 105
    :goto_0
    iput-object p2, v0, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$3;->val$rpcRequestCallbackWithCode:Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;

    invoke-interface {v1, p1, v0}, Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;->onSystemError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V

    .line 108
    .end local v0    # "rpcResponse":Lcom/ali/user/open/core/model/RpcResponse;
    :cond_0
    return-void

    .line 103
    .restart local v0    # "rpcResponse":Lcom/ali/user/open/core/model/RpcResponse;
    :cond_1
    invoke-static {p1, v4}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/ali/user/open/core/model/RpcResponse;->code:I

    goto :goto_0
.end method

.method public bridge synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 77
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$3;->onLoadSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onLoadSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "respone"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 80
    iget-object v1, p0, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$3;->val$rpcRequestCallbackWithCode:Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$3;->this$0:Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;

    iget-object v2, p0, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$3;->val$aClass:Ljava/lang/Class;

    invoke-static {v1, p1, v2}, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;->access$000(Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;Ljava/lang/String;Ljava/lang/Class;)Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;

    move-result-object v0

    .line 83
    .local v0, "rpcResponse":Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "mtop remoteBusiness onLoadSuccess and result is "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-boolean v3, v0, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;->mtopSuccess:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-boolean v1, v0, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;->mtopSuccess:Z

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$3;->val$rpcRequestCallbackWithCode:Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;

    invoke-interface {v1, v0}, Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;->onSuccess(Lcom/ali/user/open/core/model/RpcResponse;)V

    .line 91
    .end local v0    # "rpcResponse":Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;
    :cond_0
    :goto_0
    return-void

    .line 88
    .restart local v0    # "rpcResponse":Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;
    :cond_1
    iget-object v1, p0, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$3;->val$rpcRequestCallbackWithCode:Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;

    iget v2, v0, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;->code:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;->onError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V

    goto :goto_0
.end method
