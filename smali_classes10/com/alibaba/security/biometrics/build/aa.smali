.class public Lcom/alibaba/security/biometrics/build/aa;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/build/aa;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/aa;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->j:Lcom/alibaba/security/biometrics/build/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/aa;->a:Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;->j:Lcom/alibaba/security/biometrics/build/ak;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ak;->i()V

    :cond_0
    return-void
.end method
