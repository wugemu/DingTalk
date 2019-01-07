.class public Lcom/alipay/fc/custprod/biz/service/gw/result/customer/SmsCodeSendResult;
.super Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
.source "SmsCodeSendResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public remaindSendTimes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/customer/SmsCodeSendResult;->remaindSendTimes:I

    return-void
.end method
