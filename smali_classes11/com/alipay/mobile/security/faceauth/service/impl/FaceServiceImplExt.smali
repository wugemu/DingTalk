.class public Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;
.super Lcom/alipay/mobile/security/faceauth/FaceService;
.source "FaceServiceImplExt.java"

# interfaces
.implements Lcom/megvii/livenessdetection/Detector$DetectionListener;


# instance fields
.field private isPaused:Z

.field private mCallBack:Lcom/alipay/mobile/security/faceauth/api/FaceCallback;

.field mContext:Landroid/content/Context;

.field private mDetectionType:Lcom/megvii/livenessdetection/Detector$DetectionType;

.field mDetector:Lcom/megvii/livenessdetection/Detector;

.field protected mFaceDetectType:Lcom/alipay/mobile/security/faceauth/FaceDetectType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/FaceService;-><init>()V

    .line 39
    sget-object v0, Lcom/alipay/mobile/security/faceauth/FaceDetectType;->AIMLESS:Lcom/alipay/mobile/security/faceauth/FaceDetectType;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mFaceDetectType:Lcom/alipay/mobile/security/faceauth/FaceDetectType;

    .line 40
    sget-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->AIMLESS:Lcom/megvii/livenessdetection/Detector$DetectionType;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetectionType:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->isPaused:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/FaceService;-><init>()V

    .line 39
    sget-object v0, Lcom/alipay/mobile/security/faceauth/FaceDetectType;->AIMLESS:Lcom/alipay/mobile/security/faceauth/FaceDetectType;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mFaceDetectType:Lcom/alipay/mobile/security/faceauth/FaceDetectType;

    .line 40
    sget-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->AIMLESS:Lcom/megvii/livenessdetection/Detector$DetectionType;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetectionType:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->isPaused:Z

    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private getFaceInfo(Lcom/megvii/livenessdetection/DetectionFrame;)Lcom/alipay/mobile/security/faceauth/api/FaceInfo;
    .locals 2
    .param p1, "detectionFrame"    # Lcom/megvii/livenessdetection/DetectionFrame;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 180
    new-instance v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;-><init>()V

    .line 181
    .local v0, "faceInfo":Lcom/alipay/mobile/security/faceauth/api/FaceInfo;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->brightness:F

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->brightness:F

    .line 183
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->eyeBlink:Z

    iput-boolean v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->eyeBlink:Z

    .line 184
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->eyeLeftDet:F

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->eyeLeftDet:F

    .line 185
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->eyeRightDet:F

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->eyeRightDet:F

    .line 186
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->faceQuality:F

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->faceQuality:F

    .line 187
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->faceSize:Landroid/graphics/Rect;

    iput-object v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->faceSize:Landroid/graphics/Rect;

    .line 188
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->integrity:F

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->integrity:F

    .line 189
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->leftEyeHWRatio:F

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->leftEyeHWRatio:F

    .line 190
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->rightEyeHWRatio:F

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->rightEyeHWRatio:F

    .line 191
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->motionBlur:F

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->motionBlur:F

    .line 192
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->position:Landroid/graphics/RectF;

    iput-object v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->position:Landroid/graphics/RectF;

    .line 193
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->mouthOpen:Z

    iput-boolean v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->mouthOpen:Z

    .line 194
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->mouthDet:F

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->mouthDet:F

    .line 195
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->yaw:F

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->yaw:F

    .line 196
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->pitch:F

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->pitch:F

    .line 197
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->pitch3d:Z

    iput-boolean v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->pitch3d:Z

    .line 198
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->eyeLeftOcclusion:F

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->eyeLeftOcclussion:F

    .line 199
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->eyeRightOcclusion:F

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->eyeRightOcclussion:F

    .line 200
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->mouthOcclusion:F

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->mouthOcclussion:F

    .line 201
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->gaussianBlur:F

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->gaussianBlur:F

    .line 202
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->notVideo:Z

    iput-boolean v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->notVideo:Z

    .line 203
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->wearGlass:F

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->wearGlass:F

    .line 204
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->mouthHWRatio:F

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->mouthHWRatio:F

    .line 205
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->smoothYaw:F

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->smoothYaw:F

    .line 206
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->smoothPitch:F

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->smoothPitch:F

    .line 207
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/megvii/livenessdetection/bean/FaceInfo;->smoothQuality:F

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->smoothQuality:F

    .line 208
    invoke-virtual {p1}, Lcom/megvii/livenessdetection/DetectionFrame;->hasFace()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->hasFace:Z

    .line 212
    :cond_0
    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    invoke-static {}, Lcom/megvii/livenessdetection/Detector;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public closeService()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetector:Lcom/megvii/livenessdetection/Detector;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetector:Lcom/megvii/livenessdetection/Detector;

    invoke-virtual {v0}, Lcom/megvii/livenessdetection/Detector;->release()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetector:Lcom/megvii/livenessdetection/Detector;

    .line 100
    :cond_0
    return-void
.end method

.method public faceQualityDetection(Landroid/graphics/Bitmap;)Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    .locals 4
    .param p1, "paramBitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetector:Lcom/megvii/livenessdetection/Detector;

    invoke-virtual {v3, p1}, Lcom/megvii/livenessdetection/Detector;->faceQualityDetection(Landroid/graphics/Bitmap;)Lcom/megvii/livenessdetection/DetectionFrame;

    move-result-object v0

    .line 126
    .local v0, "detectionFrame":Lcom/megvii/livenessdetection/DetectionFrame;
    const/4 v1, 0x0

    .line 127
    .local v1, "faceFrame":Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;
    if-eqz v0, :cond_0

    .line 129
    new-instance v1, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;

    .end local v1    # "faceFrame":Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;
    invoke-direct {v1, v0}, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;-><init>(Lcom/megvii/livenessdetection/DetectionFrame;)V

    .line 130
    .restart local v1    # "faceFrame":Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->getFaceInfo(Lcom/megvii/livenessdetection/DetectionFrame;)Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    move-result-object v2

    .line 131
    .local v2, "faceInfo":Lcom/alipay/mobile/security/faceauth/api/FaceInfo;
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;->setFaceInfo(Lcom/alipay/mobile/security/faceauth/api/FaceInfo;)V

    .line 134
    .end local v2    # "faceInfo":Lcom/alipay/mobile/security/faceauth/api/FaceInfo;
    :cond_0
    return-object v1
.end method

.method public faceQualityDetection(Lcom/alipay/mobile/security/faceauth/api/YUVFrame;Lcom/alipay/mobile/security/faceauth/api/FaceCallback;)Lcom/alipay/mobile/security/faceauth/api/RESULT;
    .locals 6
    .param p1, "frame"    # Lcom/alipay/mobile/security/faceauth/api/YUVFrame;
    .param p2, "callBack"    # Lcom/alipay/mobile/security/faceauth/api/FaceCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    if-nez p2, :cond_0

    .line 106
    new-instance v1, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_0
    iput-object p2, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mCallBack:Lcom/alipay/mobile/security/faceauth/api/FaceCallback;

    .line 110
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetector:Lcom/megvii/livenessdetection/Detector;

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetector:Lcom/megvii/livenessdetection/Detector;

    iget-object v2, p1, Lcom/alipay/mobile/security/faceauth/api/YUVFrame;->yuvData:[B

    iget v3, p1, Lcom/alipay/mobile/security/faceauth/api/YUVFrame;->previewWidth:I

    iget v4, p1, Lcom/alipay/mobile/security/faceauth/api/YUVFrame;->previewHeight:I

    iget v5, p1, Lcom/alipay/mobile/security/faceauth/api/YUVFrame;->angle:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/megvii/livenessdetection/Detector;->doDetection([BIII)Z

    move-result v0

    .line 115
    .local v0, "suc":Z
    if-eqz v0, :cond_1

    .line 116
    sget-object v1, Lcom/alipay/mobile/security/faceauth/api/RESULT;->DETECT_SUCCESS:Lcom/alipay/mobile/security/faceauth/api/RESULT;

    .line 119
    .end local v0    # "suc":Z
    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Lcom/alipay/mobile/security/faceauth/api/RESULT;->DETECT_FAIL:Lcom/alipay/mobile/security/faceauth/api/RESULT;

    goto :goto_0
.end method

.method public init()Lcom/alipay/mobile/security/faceauth/api/RESULT;
    .locals 8

    .prologue
    .line 56
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->isPaused:Z

    .line 57
    new-instance v1, Lcom/megvii/livenessdetection/DetectionConfig$Builder;

    invoke-direct {v1}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;-><init>()V

    .line 58
    .local v1, "configBuilder":Lcom/megvii/livenessdetection/DetectionConfig$Builder;
    const v5, 0x36ee80

    invoke-virtual {v1, v5}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;->setDetectionTimeout(I)Lcom/megvii/livenessdetection/DetectionConfig$Builder;

    .line 59
    const/16 v5, 0x32

    invoke-virtual {v1, v5}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;->setMinFaceSize(I)Lcom/megvii/livenessdetection/DetectionConfig$Builder;

    .line 60
    invoke-virtual {v1}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;->build()Lcom/megvii/livenessdetection/DetectionConfig;

    move-result-object v0

    .line 61
    .local v0, "config":Lcom/megvii/livenessdetection/DetectionConfig;
    new-instance v5, Lcom/megvii/livenessdetection/Detector;

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v0}, Lcom/megvii/livenessdetection/Detector;-><init>(Landroid/content/Context;Lcom/megvii/livenessdetection/DetectionConfig;)V

    iput-object v5, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetector:Lcom/megvii/livenessdetection/Detector;

    .line 62
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetector:Lcom/megvii/livenessdetection/Detector;

    invoke-virtual {v5, p0}, Lcom/megvii/livenessdetection/Detector;->setDetectionListener(Lcom/megvii/livenessdetection/Detector$DetectionListener;)V

    .line 63
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetector:Lcom/megvii/livenessdetection/Detector;

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetectionType:Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-virtual {v5, v6}, Lcom/megvii/livenessdetection/Detector;->changeDetectionType(Lcom/megvii/livenessdetection/Detector$DetectionType;)V

    .line 64
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetector:Lcom/megvii/livenessdetection/Detector;

    invoke-virtual {v5}, Lcom/megvii/livenessdetection/Detector;->reset()V

    .line 66
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "face_model"

    invoke-static {v5, v6}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->getAssetsData(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    .line 68
    .local v4, "modelData":[B
    if-nez v4, :cond_0

    .line 69
    const-string/jumbo v5, "face detect error: can\'t find model"

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    .line 70
    sget-object v5, Lcom/alipay/mobile/security/faceauth/api/RESULT;->START_SUCCESS:Lcom/alipay/mobile/security/faceauth/api/RESULT;

    .line 91
    :goto_0
    return-object v5

    .line 73
    :cond_0
    const/4 v3, 0x0

    .line 75
    .local v3, "isInitSuc":Z
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetector:Lcom/megvii/livenessdetection/Detector;

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mContext:Landroid/content/Context;

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v4, v7}, Lcom/megvii/livenessdetection/Detector;->init(Landroid/content/Context;[BLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 81
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Detector:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 83
    if-nez v3, :cond_1

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Detector:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    .line 85
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetector:Lcom/megvii/livenessdetection/Detector;

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mContext:Landroid/content/Context;

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v4, v7}, Lcom/megvii/livenessdetection/Detector;->init(Landroid/content/Context;[BLjava/lang/String;)Z

    move-result v3

    .line 87
    :cond_1
    if-nez v3, :cond_2

    .line 88
    sget-object v5, Lcom/alipay/mobile/security/faceauth/api/RESULT;->START_FAIL_MODELMISS:Lcom/alipay/mobile/security/faceauth/api/RESULT;

    goto :goto_0

    .line 76
    :catch_0
    move-exception v2

    .line 77
    .local v2, "error":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 91
    .end local v2    # "error":Ljava/lang/OutOfMemoryError;
    :cond_2
    sget-object v5, Lcom/alipay/mobile/security/faceauth/api/RESULT;->START_SUCCESS:Lcom/alipay/mobile/security/faceauth/api/RESULT;

    goto :goto_0
.end method

.method public isServicePaused()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->isPaused:Z

    return v0
.end method

.method public onCreate(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .prologue
    .line 257
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mContext:Landroid/content/Context;

    .line 258
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetector:Lcom/megvii/livenessdetection/Detector;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetector:Lcom/megvii/livenessdetection/Detector;

    invoke-virtual {v0}, Lcom/megvii/livenessdetection/Detector;->release()V

    .line 264
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetector:Lcom/megvii/livenessdetection/Detector;

    .line 266
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mCallBack:Lcom/alipay/mobile/security/faceauth/api/FaceCallback;

    .line 267
    return-void
.end method

.method public onDetectionFailed(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;)V
    .locals 3
    .param p1, "detectionFailedType"    # Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 232
    const-string/jumbo v1, "Detector:onDetectionFailed"

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mCallBack:Lcom/alipay/mobile/security/faceauth/api/FaceCallback;

    if-eqz v1, :cond_0

    .line 234
    new-instance v0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;-><init>(Lcom/megvii/livenessdetection/DetectionFrame;)V

    .line 235
    .local v0, "faceFrame":Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;
    sget-object v1, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;->MINE:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;->setFaceFrameType(Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;)V

    .line 236
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mCallBack:Lcom/alipay/mobile/security/faceauth/api/FaceCallback;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/security/faceauth/api/FaceCallback;->onDetected(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)V

    .line 238
    .end local v0    # "faceFrame":Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetector:Lcom/megvii/livenessdetection/Detector;

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetector:Lcom/megvii/livenessdetection/Detector;

    invoke-virtual {v1}, Lcom/megvii/livenessdetection/Detector;->reset()V

    .line 240
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetector:Lcom/megvii/livenessdetection/Detector;

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetectionType:Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-virtual {v1, v2}, Lcom/megvii/livenessdetection/Detector;->changeDetectionType(Lcom/megvii/livenessdetection/Detector$DetectionType;)V

    .line 242
    :cond_1
    return-void
.end method

.method public onDetectionSuccess(Lcom/megvii/livenessdetection/DetectionFrame;)Lcom/megvii/livenessdetection/Detector$DetectionType;
    .locals 3
    .param p1, "detectionFrame"    # Lcom/megvii/livenessdetection/DetectionFrame;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    const-string/jumbo v2, "Detector:onDetectionSuccess"

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 219
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mCallBack:Lcom/alipay/mobile/security/faceauth/api/FaceCallback;

    if-eqz v2, :cond_0

    .line 220
    new-instance v0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;-><init>(Lcom/megvii/livenessdetection/DetectionFrame;)V

    .line 221
    .local v0, "faceFrame":Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->getFaceInfo(Lcom/megvii/livenessdetection/DetectionFrame;)Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    move-result-object v1

    .line 222
    .local v1, "faceInfo":Lcom/alipay/mobile/security/faceauth/api/FaceInfo;
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;->setFaceInfo(Lcom/alipay/mobile/security/faceauth/api/FaceInfo;)V

    .line 223
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mFaceDetectType:Lcom/alipay/mobile/security/faceauth/FaceDetectType;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;->setFaceDetectType(Lcom/alipay/mobile/security/faceauth/FaceDetectType;)V

    .line 224
    sget-object v2, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;->ACTION:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;->setFaceFrameType(Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;)V

    .line 225
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mCallBack:Lcom/alipay/mobile/security/faceauth/api/FaceCallback;

    invoke-interface {v2, v0}, Lcom/alipay/mobile/security/faceauth/api/FaceCallback;->onDetected(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)V

    .line 227
    .end local v0    # "faceFrame":Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;
    .end local v1    # "faceInfo":Lcom/alipay/mobile/security/faceauth/api/FaceInfo;
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetectionType:Lcom/megvii/livenessdetection/Detector$DetectionType;

    return-object v2
.end method

.method public onFrameDetected(JLcom/megvii/livenessdetection/DetectionFrame;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "detectionFrame"    # Lcom/megvii/livenessdetection/DetectionFrame;

    .prologue
    .line 246
    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mCallBack:Lcom/alipay/mobile/security/faceauth/api/FaceCallback;

    if-eqz v2, :cond_0

    .line 247
    new-instance v0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;

    invoke-direct {v0, p3}, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;-><init>(Lcom/megvii/livenessdetection/DetectionFrame;)V

    .line 248
    .local v0, "faceFrame":Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;
    invoke-direct {p0, p3}, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->getFaceInfo(Lcom/megvii/livenessdetection/DetectionFrame;)Lcom/alipay/mobile/security/faceauth/api/FaceInfo;

    move-result-object v1

    .line 249
    .local v1, "faceInfo":Lcom/alipay/mobile/security/faceauth/api/FaceInfo;
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;->setFaceInfo(Lcom/alipay/mobile/security/faceauth/api/FaceInfo;)V

    .line 250
    sget-object v2, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;->NORMAL:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;->setFaceFrameType(Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;)V

    .line 251
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mCallBack:Lcom/alipay/mobile/security/faceauth/api/FaceCallback;

    invoke-interface {v2, v0}, Lcom/alipay/mobile/security/faceauth/api/FaceCallback;->onDetected(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)V

    .line 253
    .end local v0    # "faceFrame":Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;
    .end local v1    # "faceInfo":Lcom/alipay/mobile/security/faceauth/api/FaceInfo;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->isPaused:Z

    .line 167
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->isPaused:Z

    .line 172
    return-void
.end method

.method public setDetectType(Lcom/alipay/mobile/security/faceauth/FaceDetectType;)V
    .locals 3
    .param p1, "actionType"    # Lcom/alipay/mobile/security/faceauth/FaceDetectType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    sget-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->AIMLESS:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 140
    .local v0, "type":Lcom/megvii/livenessdetection/Detector$DetectionType;
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mFaceDetectType:Lcom/alipay/mobile/security/faceauth/FaceDetectType;

    .line 142
    sget-object v1, Lcom/alipay/mobile/security/faceauth/FaceDetectType;->NONE:Lcom/alipay/mobile/security/faceauth/FaceDetectType;

    if-ne p1, v1, :cond_2

    .line 143
    sget-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->NONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 156
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetector:Lcom/megvii/livenessdetection/Detector;

    if-eqz v1, :cond_1

    .line 157
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetectionType:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 158
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetector:Lcom/megvii/livenessdetection/Detector;

    invoke-virtual {v1}, Lcom/megvii/livenessdetection/Detector;->reset()V

    .line 159
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetector:Lcom/megvii/livenessdetection/Detector;

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;->mDetectionType:Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-virtual {v1, v2}, Lcom/megvii/livenessdetection/Detector;->changeDetectionType(Lcom/megvii/livenessdetection/Detector$DetectionType;)V

    .line 162
    :cond_1
    return-void

    .line 144
    :cond_2
    sget-object v1, Lcom/alipay/mobile/security/faceauth/FaceDetectType;->BLINK:Lcom/alipay/mobile/security/faceauth/FaceDetectType;

    if-ne p1, v1, :cond_3

    .line 145
    sget-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->BLINK:Lcom/megvii/livenessdetection/Detector$DetectionType;

    goto :goto_0

    .line 146
    :cond_3
    sget-object v1, Lcom/alipay/mobile/security/faceauth/FaceDetectType;->MOUTH:Lcom/alipay/mobile/security/faceauth/FaceDetectType;

    if-ne p1, v1, :cond_4

    .line 147
    sget-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->MOUTH:Lcom/megvii/livenessdetection/Detector$DetectionType;

    goto :goto_0

    .line 148
    :cond_4
    sget-object v1, Lcom/alipay/mobile/security/faceauth/FaceDetectType;->POS_YAW:Lcom/alipay/mobile/security/faceauth/FaceDetectType;

    if-ne p1, v1, :cond_5

    .line 149
    sget-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_YAW:Lcom/megvii/livenessdetection/Detector$DetectionType;

    goto :goto_0

    .line 150
    :cond_5
    sget-object v1, Lcom/alipay/mobile/security/faceauth/FaceDetectType;->POS_PITCH:Lcom/alipay/mobile/security/faceauth/FaceDetectType;

    if-ne p1, v1, :cond_6

    .line 151
    sget-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_PITCH:Lcom/megvii/livenessdetection/Detector$DetectionType;

    goto :goto_0

    .line 152
    :cond_6
    sget-object v1, Lcom/alipay/mobile/security/faceauth/FaceDetectType;->AIMLESS:Lcom/alipay/mobile/security/faceauth/FaceDetectType;

    if-ne p1, v1, :cond_0

    .line 153
    sget-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->AIMLESS:Lcom/megvii/livenessdetection/Detector$DetectionType;

    goto :goto_0
.end method
