.class public Lcom/alipay/fc/custprod/biz/service/gw/result/auth/QRCodeLoginV2Result;
.super Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
.source "QRCodeLoginV2Result.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public ctuVerifyId:Ljava/lang/String;

.field public redirectAppURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;-><init>()V

    return-void
.end method
