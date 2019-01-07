.class public Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$b;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$b;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$b;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->b()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->o()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "vol_s"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$b;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;Z)Z

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$b;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->i:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    iget-object v3, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$b;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-static {v3}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->setSoundEnable(Z)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$b;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-static {v0}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->b(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)Lhwn;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity$b;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-static {v1}, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->c(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)Z

    move-result v1

    invoke-interface {v0, v1}, Lhwn;->a(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
