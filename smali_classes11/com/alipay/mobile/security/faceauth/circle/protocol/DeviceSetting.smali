.class public Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
.super Ljava/lang/Object;
.source "DeviceSetting.java"


# instance fields
.field a:Z

.field b:I

.field c:Z

.field d:I

.field e:Z

.field f:I

.field g:I

.field h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->a:Z

    .line 11
    const/16 v0, 0x5a

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->b:I

    .line 14
    iput-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->c:Z

    .line 15
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->d:I

    .line 18
    iput-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->e:Z

    .line 19
    const/16 v0, 0x10e

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->f:I

    .line 21
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->g:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->h:I

    return-void
.end method


# virtual methods
.method public getAlgorithmAngle()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->f:I

    return v0
.end method

.method public getCameraID()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->d:I

    return v0
.end method

.method public getDisplayAngle()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->b:I

    return v0
.end method

.method public getMaxApiLevel()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->g:I

    return v0
.end method

.method public getMinApiLevel()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->h:I

    return v0
.end method

.method public isAlgorithmAuto()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->e:Z

    return v0
.end method

.method public isCameraAuto()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->c:Z

    return v0
.end method

.method public isDisplayAuto()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->a:Z

    return v0
.end method

.method public setAlgorithmAngle(I)V
    .locals 0
    .param p1, "algorithmAngle"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->f:I

    .line 63
    return-void
.end method

.method public setAlgorithmAuto(Z)V
    .locals 0
    .param p1, "algorithmAuto"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->e:Z

    .line 71
    return-void
.end method

.method public setCameraAuto(Z)V
    .locals 0
    .param p1, "cameraAuto"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->c:Z

    .line 47
    return-void
.end method

.method public setCameraID(I)V
    .locals 0
    .param p1, "cameraID"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->d:I

    .line 55
    return-void
.end method

.method public setDisplayAngle(I)V
    .locals 0
    .param p1, "displayAngle"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->b:I

    .line 39
    return-void
.end method

.method public setDisplayAuto(Z)V
    .locals 0
    .param p1, "displayAuto"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->a:Z

    .line 31
    return-void
.end method

.method public setMaxApiLevel(I)V
    .locals 0
    .param p1, "maxApiLevel"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->g:I

    .line 79
    return-void
.end method

.method public setMinApiLevel(I)V
    .locals 0
    .param p1, "minApiLevel"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->h:I

    .line 87
    return-void
.end method
