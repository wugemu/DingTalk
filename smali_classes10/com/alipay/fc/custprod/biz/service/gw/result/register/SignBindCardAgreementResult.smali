.class public Lcom/alipay/fc/custprod/biz/service/gw/result/register/SignBindCardAgreementResult;
.super Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
.source "SignBindCardAgreementResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public myBankCardNo:Ljava/lang/String;

.field public securityToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;-><init>()V

    return-void
.end method
