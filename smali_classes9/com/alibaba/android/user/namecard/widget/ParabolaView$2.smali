.class final Lcom/alibaba/android/user/namecard/widget/ParabolaView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ParabolaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/widget/ParabolaView;->getBackBeizerAnimation$5ce750a4()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/widget/ParabolaView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/widget/ParabolaView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/widget/ParabolaView;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView$2;->a:Lcom/alibaba/android/user/namecard/widget/ParabolaView;

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
    .line 155
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 156
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView$2;->a:Lcom/alibaba/android/user/namecard/widget/ParabolaView;

    invoke-virtual {v1}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 157
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView$2;->a:Lcom/alibaba/android/user/namecard/widget/ParabolaView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 158
    return-void
.end method
