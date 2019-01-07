.class final Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView$1;
.super Ljava/lang/Object;
.source "DtSingleLineInputFormView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->g(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView$1;->a:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

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
    .line 182
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView$1;->a:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    const-string/jumbo v0, "fraction"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->a(Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;F)V

    .line 183
    return-void
.end method
