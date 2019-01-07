.class final Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2$1;
.super Ljava/lang/Object;
.source "SmileDetectPresenter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2$1;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2$1;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2$1;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 170
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2$1;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    return-void
.end method
