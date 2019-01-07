.class final Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$3;
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

.field final synthetic b:Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;

.field final synthetic c:Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$3;->c:Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$3;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$3;->b:Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$3;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setTranslationY(F)V

    .line 199
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$3;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setScaleX(F)V

    .line 200
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$3;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setScaleY(F)V

    .line 201
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$3;->b:Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;->setTranslationY(F)V

    .line 202
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 194
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 207
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 189
    return-void
.end method
