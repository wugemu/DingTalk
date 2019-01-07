.class final Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$6;
.super Ljava/lang/Object;
.source "CalendarNewTabFragmentImpl.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$a;


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
    .line 515
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$6;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 518
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$6;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->h(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)I

    move-result v1

    if-nez v1, :cond_5

    .line 519
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$6;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v2

    .line 531
    :goto_0
    return v1

    .line 522
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$6;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$6;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .line 523
    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    move-result-object v1

    .line 1121
    iget-object v4, v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->a:Ljava/util/Map;

    iget v5, v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1124
    iget-object v4, v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->a:Ljava/util/Map;

    iget v1, v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    .line 1208
    iget-object v1, v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v4, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->SCALE:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-ne v1, v4, :cond_2

    move v1, v3

    .line 523
    :goto_1
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$6;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .line 524
    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    move-result-object v1

    .line 2128
    iget-object v4, v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->a:Ljava/util/Map;

    iget v5, v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    move v1, v2

    .line 524
    :goto_2
    if-eqz v1, :cond_4

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1208
    goto :goto_1

    .line 2131
    :cond_3
    iget-object v4, v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->a:Ljava/util/Map;

    iget v1, v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a()Z

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v2

    .line 524
    goto :goto_0

    .line 526
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$6;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    .line 527
    goto :goto_0

    .line 529
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$6;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 530
    .local v0, "firstChildView":Landroid/view/View;
    if-eqz v0, :cond_8

    .line 531
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$6;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    move v1, v3

    goto/16 :goto_0

    :cond_8
    move v1, v2

    goto/16 :goto_0
.end method
