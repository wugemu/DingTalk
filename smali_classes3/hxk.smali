.class final Lhxk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhxj;


# direct methods
.method constructor <init>(Lhxj;)V
    .locals 0

    iput-object p1, p0, Lhxk;->a:Lhxj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhxk;->a:Lhxj;

    iget-object v0, v0, Lhxj;->a:Ljava/lang/String;

    invoke-static {v0}, Lhwu;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhxk;->a:Lhxj;

    iget-object v0, v0, Lhxj;->b:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lhxk;->a:Lhxj;

    iget-object v1, v1, Lhxj;->b:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    iget-object v1, v1, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->q:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
