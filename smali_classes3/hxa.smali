.class public final Lhxa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lhxa;->c:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    iput-object p2, p0, Lhxa;->a:Landroid/view/View;

    iput-object p3, p0, Lhxa;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhxa;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lhxa;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lhxa;->b:Landroid/view/View;

    iget-object v1, p0, Lhxa;->c:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    iget-object v1, v1, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->C:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
