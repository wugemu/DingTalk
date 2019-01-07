.class public Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;
.super Ljava/lang/Object;
.source "UserVerifyInfo.java"


# instance fields
.field public accountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public actid:Ljava/lang/String;

.field public amount:Ljava/lang/String;

.field public apdid:Ljava/lang/String;

.field public appid:Ljava/lang/String;

.field public areaCode:Ljava/lang/String;

.field public behid:Ljava/lang/String;

.field public bistoken:Ljava/lang/String;

.field public brandCode:Ljava/lang/String;

.field public deviceid:Ljava/lang/String;

.field public devicemac:Ljava/lang/String;

.field public faceId:Ljava/lang/String;

.field public ftoken:Ljava/lang/String;

.field public geo:Ljava/lang/String;

.field public goodsCount:I

.field public machineCode:Ljava/lang/String;

.field public merchantId:Ljava/lang/String;

.field public partnerId:Ljava/lang/String;

.field public remoteLogID:Ljava/lang/String;

.field public sceid:Ljava/lang/String;

.field public storeCode:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public userid:Ljava/lang/String;

.field public verifyid:Ljava/lang/String;

.field public vtoken:Ljava/lang/String;

.field public wifimac:Ljava/lang/String;

.field public wifiname:Ljava/lang/String;

.field public withoutPay:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->userid:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->apdid:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->appid:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->behid:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->actid:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->sceid:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->vtoken:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->bistoken:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->verifyid:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->machineCode:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->storeCode:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->brandCode:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->areaCode:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->geo:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->merchantId:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->wifimac:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->wifiname:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->remoteLogID:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->partnerId:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->amount:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->goodsCount:I

    .line 34
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->ftoken:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->faceId:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->type:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->deviceid:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->devicemac:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->withoutPay:Ljava/lang/String;

    return-void
.end method
