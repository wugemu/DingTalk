.class public final Lhwy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;)V
    .locals 0

    iput-object p1, p0, Lhwy;->a:Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/Button;

    iget-object v1, p0, Lhwy;->a:Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;

    iget-object v0, p0, Lhwy;->a:Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;

    iget-boolean v0, v0, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->i:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->i:Z

    iget-object v0, p0, Lhwy;->a:Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;

    invoke-static {v0}, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->a(Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;)Lcom/alibaba/security/biometrics/AuthContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "K_SOUNDON"

    iget-object v2, p0, Lhwy;->a:Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;

    iget-boolean v2, v2, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->i:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lhwy;->a:Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;

    iget-boolean v0, v0, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;->i:Z

    if-eqz v0, :cond_2

    sget v0, Lhyx$c;->face_top_sound_on:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget v0, Lhyx$c;->face_top_sound_off:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1
.end method
