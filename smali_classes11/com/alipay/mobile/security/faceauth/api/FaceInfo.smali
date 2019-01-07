.class public Lcom/alipay/mobile/security/faceauth/api/FaceInfo;
.super Ljava/lang/Object;
.source "FaceInfo.java"


# instance fields
.field public brightness:F

.field public eyeBlink:Z

.field public eyeLeftDet:F

.field public eyeLeftOcclussion:F

.field public eyeRightDet:F

.field public eyeRightOcclussion:F

.field public faceQuality:F

.field public faceSize:Landroid/graphics/Rect;

.field public gaussianBlur:F

.field public hasFace:Z

.field public integrity:F

.field public leftEyeHWRatio:F

.field public motionBlur:F

.field public mouthDet:F

.field public mouthHWRatio:F

.field public mouthOcclussion:F

.field public mouthOpen:Z

.field public notVideo:Z

.field public pitch:F

.field public pitch3d:Z

.field public position:Landroid/graphics/RectF;

.field public rightEyeHWRatio:F

.field public smoothPitch:F

.field public smoothQuality:F

.field public smoothYaw:F

.field public wearGlass:F

.field public yaw:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->yaw:F

    .line 36
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->pitch:F

    .line 38
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->gaussianBlur:F

    .line 39
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->motionBlur:F

    .line 41
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->brightness:F

    .line 43
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->wearGlass:F

    .line 44
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->faceQuality:F

    .line 46
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->leftEyeHWRatio:F

    .line 47
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->rightEyeHWRatio:F

    .line 49
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->mouthHWRatio:F

    .line 51
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->integrity:F

    .line 52
    iput-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->pitch3d:Z

    .line 53
    iput-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->notVideo:Z

    .line 54
    iput-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->mouthOpen:Z

    .line 55
    iput-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->eyeBlink:Z

    .line 56
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->smoothYaw:F

    .line 57
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->smoothPitch:F

    .line 58
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->eyeLeftDet:F

    .line 59
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->eyeRightDet:F

    .line 60
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->mouthDet:F

    .line 61
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/api/FaceInfo;->smoothQuality:F

    .line 62
    return-void
.end method
