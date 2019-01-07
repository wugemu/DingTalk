.class final Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$1;
.super Ljava/lang/Object;
.source "DtSelectTextFormView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;

.field final synthetic e:F

.field final synthetic f:Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;FFLcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$1;->f:Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$1;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    iput p3, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$1;->b:F

    iput p4, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$1;->c:F

    iput-object p5, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$1;->d:Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;

    iput p6, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$1;->e:F

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
    .line 156
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$1;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    iget v1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$1;->b:F

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setTranslationY(F)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$1;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    iget v1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$1;->c:F

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setScaleX(F)V

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$1;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    iget v1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$1;->c:F

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setScaleY(F)V

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$1;->d:Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;

    iget v1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$1;->e:F

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;->setTranslationY(F)V

    .line 160
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 152
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 165
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 147
    return-void
.end method
