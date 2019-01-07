.class public final Lhvx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

.field final synthetic b:Lcom/alibaba/security/biometrics/build/ak;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/build/ak;Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;)V
    .locals 0

    iput-object p1, p0, Lhvx;->b:Lcom/alibaba/security/biometrics/build/ak;

    iput-object p2, p0, Lhvx;->a:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 0
    iget-object v0, p0, Lhvx;->a:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->DONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    .line 1000
    iget-boolean v0, v0, Lhwa;->a:Z

    .line 0
    if-eqz v0, :cond_0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lhwa;->a(I)V

    iget-object v0, p0, Lhvx;->b:Lcom/alibaba/security/biometrics/build/ak;

    iget-object v1, p0, Lhvx;->a:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alibaba/security/biometrics/build/ak;->a(Lcom/alibaba/security/biometrics/build/ak;Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;Z)V

    :cond_0
    return-void
.end method
