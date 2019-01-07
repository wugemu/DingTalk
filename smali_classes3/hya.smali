.class public final Lhya;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;)V
    .locals 0

    iput-object p1, p0, Lhya;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lhya;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->s:Lhwl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhya;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->s:Lhwl;

    invoke-virtual {v0}, Lhwl;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lhya;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->b()V

    goto :goto_0
.end method
