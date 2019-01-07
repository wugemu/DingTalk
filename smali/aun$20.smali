.class final Laun$20;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CalendarDrawerContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laun;


# direct methods
.method constructor <init>(Laun;)V
    .locals 0
    .param p1, "this$0"    # Laun;

    .prologue
    .line 1073
    iput-object p1, p0, Laun$20;->a:Laun;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1076
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1077
    iget-object v0, p0, Laun$20;->a:Laun;

    .line 2077
    iget-object v0, v0, Laun;->b:Landroid/widget/FrameLayout;

    .line 1077
    iget-object v1, p0, Laun$20;->a:Laun;

    .line 3077
    iget-object v1, v1, Laun;->c:Landroid/view/View;

    .line 1077
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1080
    iget-object v0, p0, Laun$20;->a:Laun;

    invoke-static {v0}, Laun;->d(Laun;)V

    .line 1081
    iget-object v0, p0, Laun$20;->a:Laun;

    invoke-static {v0}, Laun;->e(Laun;)V

    .line 1082
    iget-object v0, p0, Laun$20;->a:Laun;

    invoke-static {v0}, Laun;->f(Laun;)V

    .line 1083
    iget-object v0, p0, Laun$20;->a:Laun;

    .line 4799
    iget-object v1, v0, Laun;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    if-eqz v1, :cond_0

    iget-object v1, v0, Laun;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4800
    iget-object v1, v0, Laun;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->dismiss()V

    .line 4801
    const/4 v1, 0x0

    iput-object v1, v0, Laun;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 1085
    :cond_0
    return-void
.end method
