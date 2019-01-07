.class final Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;
.super Ljava/lang/Object;
.source "CalendarFragmentImpl.java"

# interfaces
.implements Laph$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    return-object v0
.end method

.method public final a(II)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 705
    .line 10517
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->isAdded()Z

    move-result v2

    .line 705
    if-nez v2, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->j(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->j(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getHeaderViewsCount()I

    move-result v2

    :goto_1
    add-int v0, p1, v2

    .line 710
    .local v0, "realPosition":I
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->f(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lawn;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->f(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lawn;

    move-result-object v2

    invoke-virtual {v2}, Lawn;->getCount()I

    move-result v2

    :goto_2
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->j(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v3}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->j(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getHeaderViewsCount()I

    move-result v3

    :cond_2
    add-int v1, v2, v3

    .line 711
    .local v1, "totalCount":I
    if-ge v0, v1, :cond_0

    .line 715
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->j(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v2

    invoke-static {v2, v0}, Lcpc;->b(Landroid/widget/AbsListView;I)V

    goto :goto_0

    .end local v0    # "realPosition":I
    .end local v1    # "totalCount":I
    :cond_3
    move v2, v3

    .line 709
    goto :goto_1

    .restart local v0    # "realPosition":I
    :cond_4
    move v2, v3

    .line 710
    goto :goto_2
.end method

.method public final a(J)V
    .locals 7
    .param p1, "timeMillis"    # J

    .prologue
    const/4 v5, 0x0

    .line 609
    .line 5517
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->isAdded()Z

    move-result v2

    .line 609
    if-nez v2, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->n(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 615
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->n(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Landroid/widget/TextView;

    move-result-object v2

    .line 6512
    iget-object v3, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-virtual {v3}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 615
    const v4, 0x80024

    invoke-static {v3, p1, p2, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :cond_2
    :goto_1
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Lawj;->a(JJ)Z

    move-result v1

    .line 624
    .local v1, "isToday":Z
    if-eqz v1, :cond_4

    .line 625
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->o(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 626
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->o(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 628
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->d(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V

    goto :goto_0

    .line 618
    .end local v1    # "isToday":Z
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "[CalendarFragment]refreshDate failed"

    invoke-static {v2, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 630
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isToday":Z
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->o(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 631
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->o(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 633
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_6

    .line 634
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->o(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    sget v3, Laow$f;->icon_right:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 640
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->c(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .line 641
    invoke-virtual {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->getUserVisibleHint()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "pref_key_calendar_back_today_tips"

    const/4 v3, 0x1

    .line 642
    invoke-static {v2, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    const-string/jumbo v2, "pref_key_calendar_back_today_tips"

    invoke-static {v2, v5}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 644
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->c(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 636
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->o(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    sget v3, Laow$f;->icon_left:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_2
.end method

.method public final a(Lawn;)V
    .locals 1
    .param p1, "adapter"    # Lawn;

    .prologue
    .line 538
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->j(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->j(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 540
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0, p1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->a(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;Lawn;)Lawn;

    .line 542
    :cond_0
    return-void
.end method

.method public final a(Lcsa;)V
    .locals 2
    .param p1, "dingCalendarDayViewAdapter"    # Lcsa;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 522
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->setICalendarDayViewAdapter(Lcsa;)V

    .line 524
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lckq;->a(Ljava/util/Calendar;)Lckq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->a(Lckq;)V

    .line 526
    :cond_0
    return-void
.end method

.method public final b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcsa;)V
    .locals 2
    .param p1, "dingCalendarDayViewAdapter"    # Lcsa;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 530
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->l(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->l(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setICalendarDayViewAdapter(Lcsa;)V

    .line 532
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->l(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lckq;->a(Ljava/util/Calendar;)Lckq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a(Lckq;)V

    .line 534
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->isAdded()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 546
    .line 1517
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->isAdded()Z

    move-result v0

    .line 546
    if-nez v0, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->m(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->m(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 556
    .line 2517
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->isAdded()Z

    move-result v0

    .line 556
    if-nez v0, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->m(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->m(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public final f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 566
    .line 3517
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->isAdded()Z

    move-result v1

    .line 566
    if-nez v1, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->a(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Laph$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->a(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Laph$a;

    move-result-object v1

    invoke-interface {v1}, Laph$a;->c()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lckq;->a(Ljava/util/Calendar;)Lckq;

    move-result-object v0

    .line 574
    .local v0, "calendarBean":Lckq;
    if-eqz v0, :cond_0

    .line 578
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 579
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->a(Lckq;Z)V

    .line 582
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->l(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->l(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a(Lckq;Z)V

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 589
    .line 4517
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->isAdded()Z

    move-result v1

    .line 589
    if-nez v1, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->a(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Laph$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 597
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->a(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Laph$a;

    move-result-object v1

    invoke-interface {v1}, Laph$a;->c()Ljava/util/Calendar;

    move-result-object v0

    .line 598
    .local v0, "curCalendar":Ljava/util/Calendar;
    if-eqz v0, :cond_0

    .line 602
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->i(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->h(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)I

    move-result v1

    if-nez v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->i(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->a(Ljava/util/Calendar;)V

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 651
    .line 6517
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->isAdded()Z

    move-result v0

    .line 651
    if-nez v0, :cond_1

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->l(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 656
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;->CURRENT_PAGE:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;)V

    goto :goto_0

    .line 658
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->l(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;->CURRENT_PAGE:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;)V

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 665
    .line 7517
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->isAdded()Z

    move-result v0

    .line 665
    if-nez v0, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->i(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->h(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)I

    move-result v0

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->i(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b()V

    goto :goto_0
.end method

.method public final j()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 675
    .line 8517
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->isAdded()Z

    move-result v1

    .line 675
    if-nez v1, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->p(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 679
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(I)Lblf;

    move-result-object v0

    .line 680
    .local v0, "dingAdsStyleObject":Lblf;
    if-eqz v0, :cond_0

    .line 683
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->q(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/ding/base/objects/IDingAdsView;

    move-result-object v1

    if-nez v1, :cond_2

    .line 684
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v2

    .line 9512
    iget-object v3, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-virtual {v3}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 684
    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->b(Landroid/content/Context;)Lcom/alibaba/android/ding/base/objects/IDingAdsView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->a(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;Lcom/alibaba/android/ding/base/objects/IDingAdsView;)Lcom/alibaba/android/ding/base/objects/IDingAdsView;

    .line 686
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->q(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/ding/base/objects/IDingAdsView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 689
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->p(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->q(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/ding/base/objects/IDingAdsView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 690
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->q(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/ding/base/objects/IDingAdsView;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/alibaba/android/ding/base/objects/IDingAdsView;->a(ILblf;)V

    goto :goto_0
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 695
    .line 9517
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->isAdded()Z

    move-result v0

    .line 695
    if-nez v0, :cond_1

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->r(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->r(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;->a()V

    goto :goto_0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->h(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()V
    .locals 0

    .prologue
    .line 725
    return-void
.end method
