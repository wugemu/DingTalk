.class public abstract Lhyq;
.super Lhwh;

# interfaces
.implements Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;


# instance fields
.field protected b:I

.field protected c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lhwh;-><init>()V

    sget-object v0, Lcom/alibaba/security/biometrics/AuthContext$AuthType;->BIO_FACE:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    iput-object v0, p0, Lhyq;->e:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;)V
    .locals 1

    const-string/jumbo v0, "onDetectFailed"

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lhzi;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 0
    iget-object v0, p0, Lhyq;->f:Lcom/alibaba/security/biometrics/AuthContext;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/AuthContext;->c()Lcom/alibaba/security/biometrics/AuthContext$b;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lhyq;->f:Lcom/alibaba/security/biometrics/AuthContext;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/AuthContext;->c()Lcom/alibaba/security/biometrics/AuthContext$b;

    move-result-object v0

    instance-of v0, v0, Lhyp;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lhyq;->f:Lcom/alibaba/security/biometrics/AuthContext;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/AuthContext;->c()Lcom/alibaba/security/biometrics/AuthContext$b;

    move-result-object v0

    check-cast v0, Lhyp;

    new-instance v2, Lcom/alibaba/security/biometrics/face/FaceDetectResult;

    invoke-direct {v2}, Lcom/alibaba/security/biometrics/face/FaceDetectResult;-><init>()V

    .line 1000
    iget-object v1, p1, Lhzi;->a:Lhzh;

    .line 0
    if-eqz v1, :cond_3

    .line 2000
    iget-object v1, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v1}, Lhzh;->f()F

    move-result v1

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    .line 3000
    iget-object v1, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v1}, Lhzh;->f()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->setFaceQuality(F)V

    .line 4000
    :cond_0
    iget-object v1, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v1}, Lhzh;->e()F

    move-result v1

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    .line 5000
    iget-object v1, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v1}, Lhzh;->e()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->setBrightness(F)V

    .line 6000
    :cond_1
    iget-object v1, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v1}, Lhzh;->c()F

    move-result v1

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_2

    .line 7000
    iget-object v1, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v1}, Lhzh;->c()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->setGaussianBlur(F)V

    :cond_2
    invoke-virtual {p1}, Lhzi;->f()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->setImageWidth(I)V

    invoke-virtual {p1}, Lhzi;->g()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->setImageHeight(I)V

    .line 8000
    :cond_3
    invoke-virtual {p1}, Lhzi;->b()I

    move-result v1

    if-lez v1, :cond_7

    .line 9000
    iget-object v1, p1, Lhzi;->a:Lhzh;

    .line 8000
    if-eqz v1, :cond_7

    const/4 v1, 0x1

    .line 0
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lhzi;->b()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->setFacesDetected(I)V

    invoke-virtual {p1}, Lhzi;->e()Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Lhzi;->e()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v2, v1}, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->setFacePosition(Landroid/graphics/RectF;)V

    :cond_4
    invoke-virtual {p1}, Lhzi;->d()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lhzi;->d()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1}, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->setFaceSize(Landroid/graphics/Rect;)V

    :cond_5
    invoke-virtual {v0, v2, p1}, Lhyp;->a(Lcom/alibaba/security/biometrics/face/FaceDetectResult;Lhzi;)V

    :cond_6
    return-void

    .line 8000
    :cond_7
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b(Lhzi;)Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final b(Lcom/alibaba/security/biometrics/AuthContext;)Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "K_IMG_DATA"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "K_IMG_ROTATION"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "K_IMG_WIDTH"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lhyq;->c:I

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "K_IMG_HEIGHT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lhyq;->b:I

    :goto_0
    invoke-virtual {p0, p1}, Lhyq;->c(Lcom/alibaba/security/biometrics/AuthContext;)Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo v1, "FaceDetectProcessor"

    const-string/jumbo v2, "getDetector() fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "K_IMG_WIDTH"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lhyq;->b:I

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "K_IMG_HEIGHT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lhyq;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "FaceDetectProcessor"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lhyq;->c(Lcom/alibaba/security/biometrics/AuthContext;)Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "K_IMG_WIDTH"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "K_IMG_HEIGHT"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v1, v4, v5, v2}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->b([BIII)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public abstract c(Lcom/alibaba/security/biometrics/AuthContext;)Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;
.end method
