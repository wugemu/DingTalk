.class public final Lcom/alibaba/android/ding/widget/OvalBgAnimationView$1;
.super Ljava/lang/Object;
.source "OvalBgAnimationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/OvalBgAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/OvalBgAnimationView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/widget/OvalBgAnimationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView$1;->a:Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 68
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView$1;->a:Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->a(Lcom/alibaba/android/ding/widget/OvalBgAnimationView;F)F

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView$1;->a:Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->invalidate()V

    .line 70
    return-void
.end method
