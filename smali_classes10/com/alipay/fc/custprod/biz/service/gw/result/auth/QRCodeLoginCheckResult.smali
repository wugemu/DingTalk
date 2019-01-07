.class public Lcom/alipay/fc/custprod/biz/service/gw/result/auth/QRCodeLoginCheckResult;
.super Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
.source "QRCodeLoginCheckResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public companyInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/fc/custprod/biz/service/gw/result/auth/CompanyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public needPassword:Z

.field public needVerifyFace:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;-><init>()V

    return-void
.end method
