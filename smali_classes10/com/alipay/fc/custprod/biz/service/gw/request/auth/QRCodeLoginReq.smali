.class public Lcom/alipay/fc/custprod/biz/service/gw/request/auth/QRCodeLoginReq;
.super Liip;
.source "QRCodeLoginReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public companyIpId:Ljava/lang/String;

.field public loginPassword:Ljava/lang/String;

.field public operatorId:Ljava/lang/String;

.field public qrCode:Ljava/lang/String;

.field public redirectAppURL:Ljava/lang/String;

.field public verifyImgToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Liip;-><init>()V

    return-void
.end method
