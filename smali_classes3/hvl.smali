.class public final Lhvl;
.super Lhyq;

# interfaces
.implements Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;


# instance fields
.field protected a:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lhyq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/alibaba/security/biometrics/AuthContext;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->b()Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    move-result-object v1

    sget-object v2, Lcom/alibaba/security/biometrics/AuthContext$AuthType;->BIO_FACE:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "K_FACEDETECT_ONLY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "K_ALG"

    sget v3, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget v2, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->a:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final c(Lcom/alibaba/security/biometrics/AuthContext;)Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhvl;->a:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhvl;->a:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    instance-of v0, v0, Lixx;

    if-nez v0, :cond_3

    :cond_0
    new-instance v0, Lhzg;

    invoke-direct {v0}, Lhzg;-><init>()V

    sget v1, Lhys;->k:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lhzg;->c(F)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lhzg;->a(J)V

    new-instance v1, Lixx;

    invoke-direct {v1, v0}, Lixx;-><init>(Lhzg;)V

    iput-object v1, p0, Lhvl;->a:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    iget-object v0, p0, Lhvl;->a:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    invoke-virtual {v0, p0}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lhvl;->a:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lhvl;->a:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->a(Landroid/content/Context;)Z

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unable to init HisignLivenessDetector"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lhvl;->a:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->AIMLESS:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;)V

    :cond_3
    iget-object v0, p0, Lhvl;->a:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    return-object v0
.end method
