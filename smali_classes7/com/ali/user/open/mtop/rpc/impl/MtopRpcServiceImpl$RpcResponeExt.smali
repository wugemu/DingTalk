.class Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;
.super Lcom/ali/user/open/core/model/RpcResponse;
.source "MtopRpcServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RpcResponeExt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ali/user/open/core/model/RpcResponse",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public mtopSuccess:Z

.field final synthetic this$0:Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;


# direct methods
.method private constructor <init>(Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;)V
    .locals 0

    .prologue
    .line 231
    .local p0, "this":Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;, "Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt<TT;>;"
    iput-object p1, p0, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;->this$0:Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;

    invoke-direct {p0}, Lcom/ali/user/open/core/model/RpcResponse;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;
    .param p2, "x1"    # Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$1;

    .prologue
    .line 231
    .local p0, "this":Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;, "Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt<TT;>;"
    invoke-direct {p0, p1}, Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl$RpcResponeExt;-><init>(Lcom/ali/user/open/mtop/rpc/impl/MtopRpcServiceImpl;)V

    return-void
.end method
