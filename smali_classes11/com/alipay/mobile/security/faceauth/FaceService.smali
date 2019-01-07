.class public abstract Lcom/alipay/mobile/security/faceauth/FaceService;
.super Lcom/alipay/mobile/security/bio/service/BioService;
.source "FaceService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/service/BioService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract closeService()V
.end method

.method public abstract faceQualityDetection(Landroid/graphics/Bitmap;)Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
.end method

.method public abstract faceQualityDetection(Lcom/alipay/mobile/security/faceauth/api/YUVFrame;Lcom/alipay/mobile/security/faceauth/api/FaceCallback;)Lcom/alipay/mobile/security/faceauth/api/RESULT;
.end method

.method public abstract init()Lcom/alipay/mobile/security/faceauth/api/RESULT;
.end method

.method public abstract isServicePaused()Z
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract setDetectType(Lcom/alipay/mobile/security/faceauth/FaceDetectType;)V
.end method
