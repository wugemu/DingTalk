.class public Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
.super Lcom/mybank/mrpc/result/CommonResult;
.source "CommonRpcResult.java"


# static fields
.field private static final serialVersionUID:J = 0x5895f016fe80364L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mybank/mrpc/result/CommonResult;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/rpc/RpcException;)V
    .locals 1
    .param p1, "e"    # Lcom/alipay/mobile/common/rpc/RpcException;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mybank/mrpc/result/CommonResult;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;->success:Z

    .line 24
    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;->resultCode:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/RpcException;->getMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;->resultDesc:Ljava/lang/String;

    .line 26
    return-void
.end method
