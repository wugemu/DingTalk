.class final Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$2;
.super Ljava/lang/Object;
.source "OrgHomePageActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$2;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

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
    .line 397
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$2;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->i(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 398
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$2;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->i(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 393
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 402
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 388
    return-void
.end method
