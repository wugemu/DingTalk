.class public final Lhyn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout$a;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)V
    .locals 0

    iput-object p1, p0, Lhyn;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v0

    const-string/jumbo v1, "10026"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    invoke-virtual {v0}, Lhwa;->a()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lhyn;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    const/16 v1, 0x2724

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->b(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lhyn;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->j:Lcom/alibaba/security/biometrics/build/ak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhyn;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->j:Lcom/alibaba/security/biometrics/build/ak;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ak;->i()V

    :cond_1
    iget-object v0, p0, Lhyn;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    const/16 v1, 0x9f

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(I)V

    iget-object v0, p0, Lhyn;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->finish()V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lhyn;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-static {v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->b(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)Lhwn;

    move-result-object v3

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Lhwn;->a(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "LivenessDetectActionLayoutCallback.doSoundChanged:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lhyn;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->b()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->o()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "vol_s"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v3

    const-string/jumbo v4, "10025"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iget-object v3, p0, Lhyn;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    if-nez v0, :cond_3

    :goto_2
    invoke-static {v3, v1}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;Z)Z

    iget-object v0, p0, Lhyn;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-static {v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyn;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->b()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->o()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "vol_s"

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method
