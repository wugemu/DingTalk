.class final Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;
.super Ljava/lang/Object;
.source "CalendarNewTabFragmentImpl.java"

# interfaces
.implements Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIFF)V
    .locals 9
    .param p1, "scrollViewHeight"    # I
    .param p2, "scrollY"    # I
    .param p3, "firstEventBottom"    # F
    .param p4, "lastEventTop"    # F

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 601
    invoke-static {}, Lavq;->m()Z

    move-result v4

    if-nez v4, :cond_1

    .line 602
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->l(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 603
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->m(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    int-to-float v4, p2

    cmpl-float v4, v4, p3

    if-lez v4, :cond_5

    move v1, v2

    .line 608
    .local v1, "showUpIndicator":Z
    :goto_1
    add-int v4, p2, p1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v5}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->n(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)F

    move-result v5

    sub-float/2addr v4, v5

    cmpg-float v4, v4, p4

    if-gez v4, :cond_6

    move v0, v2

    .line 610
    .local v0, "showDownIndicator":Z
    :goto_2
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->l(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 611
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->l(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 614
    :cond_2
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->m(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    .line 615
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->m(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 618
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->u(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Z

    move-result v4

    if-eq v4, v1, :cond_4

    .line 619
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4, v1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->a(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;Z)Z

    .line 620
    if-eqz v1, :cond_7

    .line 621
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->v(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 622
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->w(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 629
    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->x(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Z

    move-result v4

    if-eq v4, v0, :cond_0

    .line 630
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4, v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->b(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;Z)Z

    .line 631
    if-eqz v0, :cond_8

    .line 632
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->y(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 633
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->z(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .end local v0    # "showDownIndicator":Z
    .end local v1    # "showUpIndicator":Z
    :cond_5
    move v1, v3

    .line 607
    goto/16 :goto_1

    .restart local v1    # "showUpIndicator":Z
    :cond_6
    move v0, v3

    .line 608
    goto :goto_2

    .line 624
    .restart local v0    # "showDownIndicator":Z
    :cond_7
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->w(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 625
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->v(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v5, v8, [F

    iget-object v6, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v6}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->l(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v6

    aput v6, v5, v3

    aput v7, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 626
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->v(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_3

    .line 635
    :cond_8
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->z(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 636
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->y(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v5, v8, [F

    iget-object v6, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v6}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->m(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v6

    aput v6, v5, v3

    aput v7, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 637
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->y(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0
.end method
