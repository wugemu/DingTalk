.class public Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;
.super Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
.source "FaceServiceFrame.java"


# instance fields
.field private mDetectionFrame:Lcom/megvii/livenessdetection/DetectionFrame;


# direct methods
.method public constructor <init>(Lcom/megvii/livenessdetection/DetectionFrame;)V
    .locals 0
    .param p1, "frame"    # Lcom/megvii/livenessdetection/DetectionFrame;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;->mDetectionFrame:Lcom/megvii/livenessdetection/DetectionFrame;

    .line 21
    return-void
.end method


# virtual methods
.method public getBrightness()F
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getBrightness()F

    move-result v0

    return v0
.end method

.method public getFacePos()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFacePos()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getFaceQuality()F
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceQuality()F

    move-result v0

    return v0
.end method

.method public declared-synchronized getFaceSize()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceSize()Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGaussianBlur()F
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getGaussianBlur()F

    move-result v0

    return v0
.end method

.method public getImageData(Landroid/graphics/Rect;ZIIZZI)[B
    .locals 8
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "state"    # Z
    .param p3, "compress"    # I
    .param p4, "maxSize"    # I
    .param p5, "mark"    # Z
    .param p6, "encryto"    # Z
    .param p7, "code"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;->mDetectionFrame:Lcom/megvii/livenessdetection/DetectionFrame;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;->mDetectionFrame:Lcom/megvii/livenessdetection/DetectionFrame;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/megvii/livenessdetection/DetectionFrame;->getImageData(Landroid/graphics/Rect;ZIIZZI)[B

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLeftEyeHwratio()F
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getLeftEyeHwratio()F

    move-result v0

    return v0
.end method

.method public getMotionBlur()F
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getMotionBlur()F

    move-result v0

    return v0
.end method

.method public getMouthHwratio()F
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getMouthHwratio()F

    move-result v0

    return v0
.end method

.method public getPitchAngle()F
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getPitchAngle()F

    move-result v0

    return v0
.end method

.method public getRightEyeHwratio()F
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getRightEyeHwratio()F

    move-result v0

    return v0
.end method

.method public getYawAngle()F
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getYawAngle()F

    move-result v0

    return v0
.end method

.method public getYuvData()[B
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;->mDetectionFrame:Lcom/megvii/livenessdetection/DetectionFrame;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;->mDetectionFrame:Lcom/megvii/livenessdetection/DetectionFrame;

    invoke-virtual {v0}, Lcom/megvii/livenessdetection/DetectionFrame;->getYUVData()[B

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFace()Z
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->hasFace()Z

    move-result v0

    return v0
.end method

.method public setFaceInfo(Lcom/alipay/mobile/security/faceauth/api/FaceInfo;)V
    .locals 0
    .param p1, "mFaceInfo"    # Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->setFaceInfo(Lcom/alipay/mobile/security/faceauth/api/FaceInfo;)V

    .line 26
    return-void
.end method
