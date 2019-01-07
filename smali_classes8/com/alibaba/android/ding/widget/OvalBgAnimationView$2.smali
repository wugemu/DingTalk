.class public final Lcom/alibaba/android/ding/widget/OvalBgAnimationView$2;
.super Ljava/lang/Object;
.source "OvalBgAnimationView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 72
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView$2;->a:Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView$2;->a:Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->a(Lcom/alibaba/android/ding/widget/OvalBgAnimationView;F)F

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView$2;->a:Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->invalidate()V

    .line 87
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView$2;->a:Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->a(Lcom/alibaba/android/ding/widget/OvalBgAnimationView;F)F

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView$2;->a:Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->invalidate()V

    .line 81
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 91
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 75
    return-void
.end method
