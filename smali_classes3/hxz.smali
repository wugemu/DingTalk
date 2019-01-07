.class public final Lhxz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;)V
    .locals 0

    iput-object p1, p0, Lhxz;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a([BLandroid/hardware/Camera;)V
    .locals 1

    iget-object v0, p0, Lhxz;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->s:Lhwl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhxz;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->s:Lhwl;

    invoke-virtual {v0, p1, p2}, Lhwl;->a([BLandroid/hardware/Camera;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(I)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lhxz;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->s:Lhwl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhxz;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->s:Lhwl;

    invoke-virtual {v0}, Lhwl;->b()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhxz;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    invoke-static {v0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->a(Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;)V

    iget-object v0, p0, Lhxz;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    invoke-static {v0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->b(Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;)V

    iget-object v0, p0, Lhxz;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->o:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lhxz;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->p:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lhxz;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lhxz;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhyx$b;->faceCaptchaTip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
