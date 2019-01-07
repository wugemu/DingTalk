.class final Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView$2;
.super Ljava/lang/Object;
.source "DtMultiLineInputFormView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView$2;->a:Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 127
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView$2;->a:Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;

    const-string/jumbo v0, "fraction"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->a(Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;F)V

    .line 128
    return-void
.end method
