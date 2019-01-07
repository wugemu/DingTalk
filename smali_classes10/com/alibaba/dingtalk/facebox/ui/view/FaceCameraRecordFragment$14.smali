.class final Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$14;
.super Ljava/lang/Object;
.source "FaceCameraRecordFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$14;->b:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    iput p2, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$14;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 612
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 613
    .local v0, "current":F
    iget v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$14;->a:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$14;->b:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->k(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 614
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$14;->b:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->h(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 615
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 617
    :cond_0
    return-void
.end method
