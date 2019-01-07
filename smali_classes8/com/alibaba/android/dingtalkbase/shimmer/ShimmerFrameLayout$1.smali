.class final Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout$1;
.super Ljava/lang/Object;
.source "ShimmerFrameLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout$1;->a:Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout$1;->a:Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->postInvalidate()V

    .line 43
    return-void
.end method
