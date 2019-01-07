.class final Lcom/alibaba/android/user/widget/DashboardView$1;
.super Ljava/lang/Object;
.source "DashboardView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/widget/DashboardView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/widget/DashboardView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/widget/DashboardView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/widget/DashboardView;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/alibaba/android/user/widget/DashboardView$1;->a:Lcom/alibaba/android/user/widget/DashboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 146
    iget-object v1, p0, Lcom/alibaba/android/user/widget/DashboardView$1;->a:Lcom/alibaba/android/user/widget/DashboardView;

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/alibaba/android/user/widget/DashboardView;->a(Lcom/alibaba/android/user/widget/DashboardView;F)F

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/user/widget/DashboardView$1;->a:Lcom/alibaba/android/user/widget/DashboardView;

    invoke-virtual {v0}, Lcom/alibaba/android/user/widget/DashboardView;->postInvalidate()V

    .line 148
    return-void
.end method
