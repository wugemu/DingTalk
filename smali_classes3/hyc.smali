.class public final Lhyc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;)V
    .locals 0

    iput-object p1, p0, Lhyc;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhyc;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    const/16 v1, 0x9f

    iget-object v2, p0, Lhyc;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    iget-object v2, v2, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->q:Lhwd;

    invoke-virtual {v2}, Lhwd;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->a(ILandroid/os/Bundle;)V

    iget-object v0, p0, Lhyc;->a:Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->b()V

    return-void
.end method
