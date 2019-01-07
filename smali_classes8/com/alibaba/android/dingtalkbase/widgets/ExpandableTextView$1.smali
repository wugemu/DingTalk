.class final Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$1;
.super Ljava/lang/Object;
.source "ExpandableTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

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
    .line 170
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 171
    .local v0, "newHeight":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a(Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;)I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 172
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 173
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->requestLayout()V

    .line 174
    return-void
.end method
