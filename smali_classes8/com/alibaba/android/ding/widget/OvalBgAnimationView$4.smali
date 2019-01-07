.class public final Lcom/alibaba/android/ding/widget/OvalBgAnimationView$4;
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
    .line 119
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView$4;->a:Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

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
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView$4;->a:Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->a(Lcom/alibaba/android/ding/widget/OvalBgAnimationView;F)F

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView$4;->a:Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->setVisibility(I)V

    .line 134
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView$4;->a:Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->a(Lcom/alibaba/android/ding/widget/OvalBgAnimationView;F)F

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView$4;->a:Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->setVisibility(I)V

    .line 128
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 138
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 122
    return-void
.end method
