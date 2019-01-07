.class final Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl$1;
.super Ljava/lang/Object;
.source "APFDServiceImpl.java"

# interfaces
.implements Lcom/megvii/livenessdetection/Detector$DetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl$1;->a:Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDetectionFailed(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;)V
    .locals 2
    .param p1, "detectionFailedType"    # Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDetectionFailed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    return-void
.end method

.method public final onDetectionSuccess(Lcom/megvii/livenessdetection/DetectionFrame;)Lcom/megvii/livenessdetection/Detector$DetectionType;
    .locals 1
    .param p1, "detectionFrame"    # Lcom/megvii/livenessdetection/DetectionFrame;

    .prologue
    .line 30
    sget-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->AIMLESS:Lcom/megvii/livenessdetection/Detector$DetectionType;

    return-object v0
.end method

.method public final onFrameDetected(JLcom/megvii/livenessdetection/DetectionFrame;)V
    .locals 2
    .param p1, "l"    # J
    .param p3, "detectionFrame"    # Lcom/megvii/livenessdetection/DetectionFrame;

    .prologue
    .line 43
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl$1;->a:Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->a(Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;)Lcom/alipay/mobile/security/bio/face/api/APFDServiceDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    new-instance v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;

    invoke-direct {v0, p3}, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;-><init>(Lcom/megvii/livenessdetection/DetectionFrame;)V

    .line 47
    .local v0, "faceFrame":Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl$1;->a:Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->a(Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;)Lcom/alipay/mobile/security/bio/face/api/APFDServiceDelegate;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/security/bio/face/api/APFDServiceDelegate;->onFrameDetected(Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;)V

    .line 50
    .end local v0    # "faceFrame":Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;
    :cond_0
    return-void
.end method
