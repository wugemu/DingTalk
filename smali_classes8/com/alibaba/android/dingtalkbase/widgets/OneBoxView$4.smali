.class final Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;
.super Ljava/lang/Object;
.source "OneBoxView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 695
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    .line 696
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v5, Lcig$f;->ll_title:I

    if-ne v3, v5, :cond_1

    .line 784
    :cond_0
    :goto_0
    return v4

    .line 700
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v3

    if-nez v3, :cond_2

    .line 701
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBottom()I

    move-result v5

    invoke-static {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;I)I

    .line 702
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;Z)V

    .line 703
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->f(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)V

    .line 704
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$d;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 705
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$d;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$d;->a()V

    .line 708
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->b(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;I)I

    .line 709
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;I)I

    goto :goto_0

    .line 711
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 712
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v5, Lcig$f;->ll_title:I

    if-eq v3, v5, :cond_0

    .line 716
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v1, v3

    .line 717
    .local v1, "touchY":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v3

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v3

    if-lt v1, v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->i(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v3

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->j(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v5

    add-int/2addr v3, v5

    if-gt v1, v3, :cond_0

    .line 720
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->k(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v5

    sub-int v5, v1, v5

    invoke-static {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;I)I

    .line 722
    const/4 v0, 0x0

    .line 723
    .local v0, "result":Z
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->l(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v3

    if-lez v3, :cond_5

    .line 724
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->l(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;I)Z

    move-result v0

    .line 726
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->l(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v3

    if-gez v3, :cond_6

    .line 727
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->l(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->f(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;I)Z

    move-result v0

    .line 730
    :cond_6
    if-eqz v0, :cond_8

    .line 731
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->m(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->l(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v5

    if-gt v3, v5, :cond_7

    .line 732
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->m(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;I)I

    .line 734
    :cond_7
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->m(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->l(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->offsetTopAndBottom(I)V

    .line 735
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->n(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->n(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    .line 736
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->n(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->l(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 740
    :cond_8
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;I)I

    goto/16 :goto_0

    .line 742
    .end local v0    # "result":Z
    .end local v1    # "touchY":I
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 743
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sget v6, Lcig$f;->ll_title:I

    if-eq v5, v6, :cond_0

    .line 747
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v2, v5

    .line 749
    .local v2, "upY":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v5

    sub-int v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v6, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 750
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v6

    add-int/2addr v5, v6

    if-lt v2, v5, :cond_0

    .line 753
    :cond_b
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5, v2}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;I)I

    .line 754
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Z

    move-result v6

    if-nez v6, :cond_c

    move v3, v4

    :cond_c
    invoke-static {v5, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;ZZ)V

    goto/16 :goto_0

    .line 758
    :cond_d
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v5

    if-ge v2, v5, :cond_e

    .line 759
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v6

    if-le v5, v6, :cond_0

    .line 760
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->o(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setRotation(F)V

    .line 761
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5, v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->b(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;Z)Z

    .line 762
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;ZZ)V

    goto/16 :goto_0

    .line 767
    :cond_e
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->i(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->j(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v6

    add-int/2addr v5, v6

    if-le v2, v5, :cond_f

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 768
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v3, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;ZZ)V

    goto/16 :goto_0

    .line 772
    :cond_f
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->p(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v5

    if-ge v2, v5, :cond_10

    .line 773
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;ZZ)V

    goto/16 :goto_0

    .line 774
    :cond_10
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->i(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->p(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v6

    div-int/lit8 v6, v6, 0x6

    sub-int/2addr v5, v6

    if-le v2, v5, :cond_11

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->i(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v5

    if-lt v2, v5, :cond_12

    .line 777
    :cond_11
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->l(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I

    move-result v5

    if-gez v5, :cond_12

    .line 778
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v5, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;ZZ)V

    goto/16 :goto_0

    .line 780
    :cond_12
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v3, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;ZZ)V

    goto/16 :goto_0
.end method
