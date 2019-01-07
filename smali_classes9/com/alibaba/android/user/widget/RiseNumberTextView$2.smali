.class public final Lcom/alibaba/android/user/widget/RiseNumberTextView$2;
.super Ljava/lang/Object;
.source "RiseNumberTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/widget/RiseNumberTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/widget/RiseNumberTextView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/widget/RiseNumberTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/widget/RiseNumberTextView;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView$2;->a:Lcom/alibaba/android/user/widget/RiseNumberTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView$2;->a:Lcom/alibaba/android/user/widget/RiseNumberTextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/widget/RiseNumberTextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView$2;->a:Lcom/alibaba/android/user/widget/RiseNumberTextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/widget/RiseNumberTextView;->a(Lcom/alibaba/android/user/widget/RiseNumberTextView;I)I

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView$2;->a:Lcom/alibaba/android/user/widget/RiseNumberTextView;

    invoke-static {v0}, Lcom/alibaba/android/user/widget/RiseNumberTextView;->b(Lcom/alibaba/android/user/widget/RiseNumberTextView;)Lcom/alibaba/android/user/widget/RiseNumberTextView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView$2;->a:Lcom/alibaba/android/user/widget/RiseNumberTextView;

    invoke-static {v0}, Lcom/alibaba/android/user/widget/RiseNumberTextView;->b(Lcom/alibaba/android/user/widget/RiseNumberTextView;)Lcom/alibaba/android/user/widget/RiseNumberTextView$a;

    .line 104
    :cond_0
    return-void
.end method
