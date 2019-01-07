.class public Lcom/alipay/fc/custprod/biz/service/gw/result/auth/SecurityVerifyResult;
.super Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
.source "SecurityVerifyResult.java"


# static fields
.field private static final serialVersionUID:J = -0x5d036ed5d5595b42L


# instance fields
.field private verifyId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getVerifyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/auth/SecurityVerifyResult;->verifyId:Ljava/lang/String;

    return-object v0
.end method

.method public setVerifyId(Ljava/lang/String;)V
    .locals 0
    .param p1, "verifyId"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alipay/fc/custprod/biz/service/gw/result/auth/SecurityVerifyResult;->verifyId:Ljava/lang/String;

    .line 38
    return-void
.end method
