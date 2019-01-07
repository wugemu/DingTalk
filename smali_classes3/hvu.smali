.class public final Lhvu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/build/ak;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/build/ak;)V
    .locals 0

    iput-object p1, p0, Lhvu;->a:Lcom/alibaba/security/biometrics/build/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 0
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lhwa;->e:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    .line 0
    iget-object v1, p0, Lhvu;->a:Lcom/alibaba/security/biometrics/build/ak;

    invoke-static {v1, v0}, Lcom/alibaba/security/biometrics/build/ak;->a(Lcom/alibaba/security/biometrics/build/ak;Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;)V

    iget-object v0, p0, Lhvu;->a:Lcom/alibaba/security/biometrics/build/ak;

    invoke-static {v0}, Lcom/alibaba/security/biometrics/build/ak;->a(Lcom/alibaba/security/biometrics/build/ak;)V

    return-void
.end method
