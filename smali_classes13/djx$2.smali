.class final Ldjx$2;
.super Ljava/lang/Object;
.source "InputSmartTipViewManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjx;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldjx;


# direct methods
.method constructor <init>(Ldjx;)V
    .locals 0
    .param p1, "this$0"    # Ldjx;

    .prologue
    .line 212
    iput-object p1, p0, Ldjx$2;->a:Ldjx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 229
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 219
    iget-object v0, p0, Ldjx$2;->a:Ldjx;

    .line 1046
    iget-object v0, v0, Ldjx;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 219
    if-eqz v0, :cond_0

    iget-object v0, p0, Ldjx$2;->a:Ldjx;

    .line 2046
    iget-object v0, v0, Ldjx;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 219
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Ldjx$2;->a:Ldjx;

    .line 3046
    iget-object v0, v0, Ldjx;->d:Landroid/view/View;

    .line 220
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Ldjx$2;->a:Ldjx;

    .line 4046
    iget-object v0, v0, Ldjx;->g:Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;

    .line 221
    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Ldjx$2;->a:Ldjx;

    .line 5046
    iget-object v0, v0, Ldjx;->g:Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;

    .line 222
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a()V

    .line 225
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 233
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 215
    return-void
.end method
