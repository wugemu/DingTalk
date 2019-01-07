.class public abstract Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
.super Ljava/lang/Object;
.source "FaceFrame.java"


# instance fields
.field private deviceAngle:I

.field private deviceLight:F

.field private faceDetectType:Lcom/alipay/mobile/security/faceauth/FaceDetectType;

.field private faceFrameType:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

.field private fgyroangle:D

.field protected mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

.field private yuvAngle:I

.field private yuvHeight:I

.field private yuvWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->deviceAngle:I

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->deviceLight:F

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->fgyroangle:D

    return-void
.end method


# virtual methods
.method public getBrightness()F
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-nez v0, :cond_0

    .line 96
    const/high16 v0, -0x40800000    # -1.0f

    .line 98
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->brightness:F

    goto :goto_0
.end method

.method public getDeviceAngle()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->deviceAngle:I

    return v0
.end method

.method public getDeviceLight()F
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->deviceLight:F

    return v0
.end method

.method public getEyeLeftDet()F
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->eyeLeftDet:F

    goto :goto_0
.end method

.method public getEyeLeftOcclussion()F
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->eyeLeftOcclussion:F

    goto :goto_0
.end method

.method public getEyeRightDet()F
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->eyeRightDet:F

    goto :goto_0
.end method

.method public getEyeRightOcclussion()F
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->eyeRightOcclussion:F

    goto :goto_0
.end method

.method public getFaceDetectType()Lcom/alipay/mobile/security/faceauth/FaceDetectType;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->faceDetectType:Lcom/alipay/mobile/security/faceauth/FaceDetectType;

    return-object v0
.end method

.method public getFaceFrameType()Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->faceFrameType:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    return-object v0
.end method

.method public getFacePos()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->position:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method public getFaceQuality()F
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-nez v0, :cond_0

    .line 103
    const/high16 v0, -0x40800000    # -1.0f

    .line 105
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->faceQuality:F

    goto :goto_0
.end method

.method public declared-synchronized getFaceSize()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 33
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->faceSize:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFgyroangle()D
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 252
    iget-wide v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->fgyroangle:D

    return-wide v0
.end method

.method public getGaussianBlur()F
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-nez v0, :cond_0

    .line 73
    const/high16 v0, -0x40800000    # -1.0f

    .line 75
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->gaussianBlur:F

    goto :goto_0
.end method

.method public abstract getImageData(Landroid/graphics/Rect;ZIIZZI)[B
.end method

.method public getIntegrity()F
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-nez v0, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 184
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->integrity:F

    goto :goto_0
.end method

.method public getLeftEyeHwratio()F
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-nez v0, :cond_0

    .line 117
    const/high16 v0, -0x40800000    # -1.0f

    .line 119
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->leftEyeHWRatio:F

    goto :goto_0
.end method

.method public getMotionBlur()F
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-nez v0, :cond_0

    .line 89
    const/high16 v0, -0x40800000    # -1.0f

    .line 91
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->motionBlur:F

    goto :goto_0
.end method

.method public getMouthDet()F
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-nez v0, :cond_0

    .line 81
    const/high16 v0, -0x40800000    # -1.0f

    .line 83
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->mouthDet:F

    goto :goto_0
.end method

.method public getMouthHwratio()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-nez v0, :cond_0

    .line 132
    const/high16 v0, -0x40800000    # -1.0f

    .line 134
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->mouthHWRatio:F

    goto :goto_0
.end method

.method public getMouthOcclusion()F
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->mouthOcclussion:F

    goto :goto_0
.end method

.method public getPitchAngle()F
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-nez v0, :cond_0

    .line 66
    const/high16 v0, -0x40800000    # -1.0f

    .line 68
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->pitch:F

    goto :goto_0
.end method

.method public getRightEyeHwratio()F
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-nez v0, :cond_0

    .line 124
    const/high16 v0, -0x40800000    # -1.0f

    .line 126
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->rightEyeHWRatio:F

    goto :goto_0
.end method

.method public getWearGlass()F
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->wearGlass:F

    goto :goto_0
.end method

.method public getYawAngle()F
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-nez v0, :cond_0

    .line 59
    const/high16 v0, -0x40800000    # -1.0f

    .line 61
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->yaw:F

    goto :goto_0
.end method

.method public getYuvAngle()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->yuvAngle:I

    return v0
.end method

.method public abstract getYuvData()[B
.end method

.method public getYuvHeight()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->yuvHeight:I

    return v0
.end method

.method public getYuvWidth()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->yuvWidth:I

    return v0
.end method

.method public hasFace()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget-boolean v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->hasFace:Z

    .line 112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEyeBlink()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget-boolean v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->eyeBlink:Z

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMouthOpen()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget-boolean v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->mouthOpen:Z

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoVideo()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    iget-boolean v0, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->notVideo:Z

    goto :goto_0
.end method

.method public setDeviceAngle(I)V
    .locals 0
    .param p1, "deviceAngle"    # I

    .prologue
    .line 210
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->deviceAngle:I

    .line 211
    return-void
.end method

.method public setDeviceLight(F)V
    .locals 0
    .param p1, "deviceLight"    # F

    .prologue
    .line 248
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->deviceLight:F

    .line 249
    return-void
.end method

.method public setFaceDetectType(Lcom/alipay/mobile/security/faceauth/FaceDetectType;)V
    .locals 0
    .param p1, "faceDetectType"    # Lcom/alipay/mobile/security/faceauth/FaceDetectType;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->faceDetectType:Lcom/alipay/mobile/security/faceauth/FaceDetectType;

    .line 265
    return-void
.end method

.method public setFaceFrameType(Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;)V
    .locals 0
    .param p1, "faceFrameType"    # Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->faceFrameType:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    .line 202
    return-void
.end method

.method public setFaceInfo(Lcom/alipay/mobile/security/faceauth/api/FaceInfo;)V
    .locals 0
    .param p1, "mFaceInfo"    # Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->mFaceInfo:Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    .line 27
    return-void
.end method

.method public setFgyroangle(D)V
    .locals 1
    .param p1, "fgyroangle"    # D

    .prologue
    .line 256
    iput-wide p1, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->fgyroangle:D

    .line 257
    return-void
.end method

.method public setYuvAngle(I)V
    .locals 0
    .param p1, "yuvAngle"    # I

    .prologue
    .line 234
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->yuvAngle:I

    .line 235
    return-void
.end method

.method public setYuvHeight(I)V
    .locals 0
    .param p1, "yuvHeight"    # I

    .prologue
    .line 226
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->yuvHeight:I

    .line 227
    return-void
.end method

.method public setYuvWidth(I)V
    .locals 0
    .param p1, "yuvWidth"    # I

    .prologue
    .line 218
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->yuvWidth:I

    .line 219
    return-void
.end method
