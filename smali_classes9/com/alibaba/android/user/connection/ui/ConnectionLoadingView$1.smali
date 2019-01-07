.class final Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ConnectionLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->setPullDistance(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$1;->a:Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$1;->a:Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->a(Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$1;->a:Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->a(Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;)Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$1;->a:Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->a(Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;)Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$a;->a()V

    .line 140
    :cond_0
    return-void
.end method
