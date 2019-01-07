.class public Lcom/alipay/mobile/security/faceauth/info/CameraInfo;
.super Ljava/lang/Object;
.source "CameraInfo.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x5a

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/info/CameraInfo;->a:I

    .line 7
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/info/CameraInfo;->b:I

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/info/CameraInfo;->c:I

    return-void
.end method


# virtual methods
.method public getAutoRotation()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/info/CameraInfo;->c:I

    return v0
.end method

.method public getCamareid()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/info/CameraInfo;->b:I

    return v0
.end method

.method public getDisplayOrientation()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/info/CameraInfo;->a:I

    return v0
.end method

.method public setAutoRotation(I)V
    .locals 0
    .param p1, "autoRotation"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/info/CameraInfo;->c:I

    .line 33
    return-void
.end method

.method public setCamareid(I)V
    .locals 0
    .param p1, "camareid"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/info/CameraInfo;->b:I

    .line 25
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .param p1, "displayOrientation"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/info/CameraInfo;->a:I

    .line 17
    return-void
.end method
