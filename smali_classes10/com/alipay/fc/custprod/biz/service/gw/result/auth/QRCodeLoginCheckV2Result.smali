.class public Lcom/alipay/fc/custprod/biz/service/gw/result/auth/QRCodeLoginCheckV2Result;
.super Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
.source "QRCodeLoginCheckV2Result.java"

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;-><init>()V

    return-void
.end method
