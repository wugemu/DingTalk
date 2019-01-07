.class Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$2;
.super Ljava/lang/Object;
.source "MtopRpcServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;->remoteBusiness(Lcom/ali/user/open/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;

.field final synthetic val$rpcRequestCallbackWithCode:Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;


# direct methods
.method constructor <init>(Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$2;->this$0:Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;

    iput-object p2, p0, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$2;->val$rpcRequestCallbackWithCode:Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 65
    iget-object v1, p0, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$2;->val$rpcRequestCallbackWithCode:Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;

    if-eqz v1, :cond_0

    .line 66
    new-instance v0, Lcom/ali/user/open/core/model/RpcResponse;

    invoke-direct {v0}, Lcom/ali/user/open/core/model/RpcResponse;-><init>()V

    .line 67
    .local v0, "rpcResponse":Lcom/ali/user/open/core/model/RpcResponse;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ali/user/open/core/model/RpcResponse;->success:Z

    .line 68
    const/16 v1, 0x196

    iput v1, v0, Lcom/ali/user/open/core/model/RpcResponse;->code:I

    .line 69
    const-string/jumbo v1, "tunnelIService from dingtalk is null"

    iput-object v1, v0, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$2;->val$rpcRequestCallbackWithCode:Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;

    const-string/jumbo v2, "406"

    invoke-interface {v1, v2, v0}, Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;->onError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V

    .line 72
    .end local v0    # "rpcResponse":Lcom/ali/user/open/core/model/RpcResponse;
    :cond_0
    return-void
.end method
