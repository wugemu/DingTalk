.class final Lcom/alibaba/android/user/namecard/widget/ParabolaView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ParabolaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/widget/ParabolaView;->getBeizerAnimation$5ce750a4()Landroid/animation/Animator;
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
    .line 116
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView$1;->a:Lcom/alibaba/android/user/namecard/widget/ParabolaView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/ParabolaView$1;->a:Lcom/alibaba/android/user/namecard/widget/ParabolaView;

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->getParent()Landroid/view/ViewParent;

    .line 122
    return-void
.end method
