.class public final Lhyd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;)V
    .locals 0

    iput-object p1, p0, Lhyd;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/Button;

    iget-object v0, p0, Lhyd;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->v:Lhwn;

    invoke-interface {v0}, Lhwn;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhyd;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->v:Lhwn;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhwn;->a(Z)V

    sget v0, Lhyx$c;->face_top_sound_on:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lhyd;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->v:Lhwn;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lhwn;->a(Z)V

    sget v0, Lhyx$c;->face_top_sound_off:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method
