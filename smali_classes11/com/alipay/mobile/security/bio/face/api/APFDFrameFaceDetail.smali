.class public Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;
.super Ljava/lang/Object;
.source "APFDFrameFaceDetail.java"


# instance fields
.field private a:Lcom/megvii/livenessdetection/DetectionFrame;

.field public blurnessGaussian:F

.field public blurnessMotion:F

.field public eyeLeftOcclusion:F

.field public eyeRightOcclusion:F

.field public faceBrightness:F

.field public faceIntegrity:F

.field public facePitchAngle:F

.field public faceQuality:F

.field public faceRect:Landroid/graphics/RectF;

.field public faceYawAngle:F

.field public hasFace:Z

.field public height:I

.field public mouthOcclusion:F

.field public width:I


# direct methods
.method public constructor <init>(Lcom/megvii/livenessdetection/DetectionFrame;)V
    .locals 7
    .param p1, "frame"    # Lcom/megvii/livenessdetection/DetectionFrame;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v4, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->hasFace:Z

    .line 17
    iput v3, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->facePitchAngle:F

    .line 20
    iput v3, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceYawAngle:F

    .line 23
    iput v3, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceQuality:F

    .line 28
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceRect:Landroid/graphics/RectF;

    .line 30
    iput v3, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->blurnessGaussian:F

    .line 32
    iput v3, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->blurnessMotion:F

    .line 34
    iput v3, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceBrightness:F

    .line 36
    iput v3, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->eyeLeftOcclusion:F

    .line 38
    iput v3, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->eyeRightOcclusion:F

    .line 40
    iput v3, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->mouthOcclusion:F

    .line 42
    iput v4, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->width:I

    .line 44
    iput v4, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->height:I

    .line 46
    iput v3, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceIntegrity:F

    .line 76
    if-eqz p1, :cond_1

    .line 77
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->a:Lcom/megvii/livenessdetection/DetectionFrame;

    .line 78
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->hasFace()Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->hasFace:Z

    .line 79
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v0

    .line 80
    .local v0, "faceInfo":Lcom/megvii/livenessdetection/bean/FaceInfo;
    if-eqz v0, :cond_0

    .line 81
    iget v2, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->pitch:F

    iput v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->facePitchAngle:F

    .line 82
    iget v2, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->yaw:F

    iput v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceYawAngle:F

    .line 83
    iget v2, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->faceQuality:F

    iput v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceQuality:F

    .line 85
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFacePos()Landroid/graphics/RectF;

    move-result-object v1

    .line 94
    .local v1, "rect":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v6, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v5, v1, Landroid/graphics/RectF;->left:F

    sub-float v5, v6, v5

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceRect:Landroid/graphics/RectF;

    .line 95
    iget v2, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->gaussianBlur:F

    iput v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->blurnessGaussian:F

    .line 96
    iget v2, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->motionBlur:F

    iput v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->blurnessMotion:F

    .line 97
    iget v2, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->brightness:F

    iput v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceBrightness:F

    .line 98
    iget v2, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->eyeLeftOcclusion:F

    iput v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->eyeLeftOcclusion:F

    .line 99
    iget v2, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->eyeRightOcclusion:F

    iput v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->eyeRightOcclusion:F

    .line 100
    iget v2, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->mouthOcclusion:F

    iput v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->mouthOcclusion:F

    .line 101
    iget v2, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->integrity:F

    iput v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceIntegrity:F

    .line 108
    .end local v1    # "rect":Landroid/graphics/RectF;
    :cond_0
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getImageWidth()I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->width:I

    .line 109
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getImageHeight()I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->height:I

    .line 111
    .end local v0    # "faceInfo":Lcom/megvii/livenessdetection/bean/FaceInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method public getImageData(Landroid/graphics/Rect;)[B
    .locals 8
    .param p1, "paramRect"    # Landroid/graphics/Rect;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->a:Lcom/megvii/livenessdetection/DetectionFrame;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->a:Lcom/megvii/livenessdetection/DetectionFrame;

    const/16 v3, 0x50

    const/16 v4, 0x280

    move-object v1, p1

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/megvii/livenessdetection/DetectionFrame;->getImageData(Landroid/graphics/Rect;ZIIZZI)[B

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getYUVData()[B
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->a:Lcom/megvii/livenessdetection/DetectionFrame;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->a:Lcom/megvii/livenessdetection/DetectionFrame;

    invoke-virtual {v0}, Lcom/megvii/livenessdetection/DetectionFrame;->getYUVData()[B

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "hasFace:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->hasFace:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "facePitchAngle:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->facePitchAngle:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "faceYawAngle:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceYawAngle:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "faceQuality:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceQuality:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "faceRect:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "blurnessGaussian:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->blurnessGaussian:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "blurnessMotion:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->blurnessMotion:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "faceBrightness:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "eyeLeftOcclusion:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->eyeLeftOcclusion:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "eyeRightOcclusion:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->eyeRightOcclusion:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mouthOcclusion:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->mouthOcclusion:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "faceIntegrity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceIntegrity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "height:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
