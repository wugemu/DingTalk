.class public Lcom/mybank/android/phone/common/component/custom/RpcBizException;
.super Ljava/lang/RuntimeException;
.source "RpcBizException.java"


# instance fields
.field private result:Lcom/mybank/mrpc/result/CommonResult;


# direct methods
.method public constructor <init>(Lcom/mybank/mrpc/result/CommonResult;)V
    .locals 0
    .param p1, "result"    # Lcom/mybank/mrpc/result/CommonResult;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/mybank/android/phone/common/component/custom/RpcBizException;->result:Lcom/mybank/mrpc/result/CommonResult;

    .line 13
    return-void
.end method


# virtual methods
.method public getResult()Lcom/mybank/mrpc/result/CommonResult;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mybank/android/phone/common/component/custom/RpcBizException;->result:Lcom/mybank/mrpc/result/CommonResult;

    return-object v0
.end method
