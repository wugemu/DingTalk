.class final Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircleLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;->setPullDistance(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView$1;->a:Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView$1;->a:Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;->a(Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView$1;->a:Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;->a(Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;)Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView$1;->a:Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;->a(Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;)Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView$a;->a()V

    .line 141
    :cond_0
    return-void
.end method
