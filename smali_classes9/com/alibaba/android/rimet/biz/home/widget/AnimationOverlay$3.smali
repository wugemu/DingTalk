.class final Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$3;
.super Ljava/lang/Object;
.source "AnimationOverlay.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$3;->b:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$3;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 271
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$3;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$3;->b:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->c(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;)V

    .line 266
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 276
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 260
    return-void
.end method
