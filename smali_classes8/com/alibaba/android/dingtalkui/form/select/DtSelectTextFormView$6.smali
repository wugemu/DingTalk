.class final Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$6;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$6;->a:Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 371
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 366
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 376
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 361
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$6;->a:Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->a(Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;)Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;->setVisibility(I)V

    .line 362
    return-void
.end method
