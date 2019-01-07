.class final Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$2;
.super Ljava/lang/Object;
.source "SmoothCheckBox.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 426
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;FF)F

    move-result v0

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;F)F

    .line 427
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->b(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->c(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(IIF)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;I)I

    .line 428
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->d(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->e(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->c(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(IIF)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->b(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;I)I

    .line 429
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3e4ccccd    # 0.2f

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->c(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)F

    move-result v3

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->b(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;F)F

    .line 430
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->c(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)F

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->f(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)F

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->g(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)F

    move-result v3

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->c(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;F)F

    .line 431
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->postInvalidate()V

    .line 432
    return-void
.end method
