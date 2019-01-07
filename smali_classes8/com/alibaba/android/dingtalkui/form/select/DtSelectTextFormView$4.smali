.class final Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$4;
.super Ljava/lang/Object;
.source "DtSelectTextFormView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

.field final synthetic b:Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;

.field final synthetic c:Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$4;->c:Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$4;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$4;->b:Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 212
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$4;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    const-string/jumbo v1, "transY"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setTranslationY(F)V

    .line 213
    const-string/jumbo v1, "scale"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 214
    .local v0, "scale":F
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$4;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setScaleX(F)V

    .line 215
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$4;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setScaleY(F)V

    .line 216
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$4;->b:Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;

    const-string/jumbo v1, "mustFillIndicatorTransY"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;->setTranslationY(F)V

    .line 217
    return-void
.end method
