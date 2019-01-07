.class final Lcom/alibaba/android/teleconf/widget/TeleConfTimeView$1;
.super Ljava/lang/Object;
.source "TeleConfTimeView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;

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
    .line 100
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 101
    .local v0, "value":I
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->a(Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->a(Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_0
    return-void
.end method
