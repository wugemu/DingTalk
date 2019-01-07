.class public final Lhxh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lhxh;->b:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    iput-object p2, p0, Lhxh;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhxh;->b:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lhxh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
