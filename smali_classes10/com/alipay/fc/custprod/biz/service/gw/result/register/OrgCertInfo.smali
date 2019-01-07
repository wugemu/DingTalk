.class public Lcom/alipay/fc/custprod/biz/service/gw/result/register/OrgCertInfo;
.super Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
.source "OrgCertInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5e60acabc690367fL


# instance fields
.field public basicAccountGrantNo:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public localTaxRegistrationNo:Ljava/lang/String;

.field public taxRegistrationNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;-><init>()V

    return-void
.end method
