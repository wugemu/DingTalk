.class final Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;
.super Ljava/lang/Object;
.source "CalendarNewTabFragmentImpl.java"

# interfaces
.implements Laph$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 682
    invoke-direct {p0, p1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    return-object v0
.end method

.method public final a(II)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 832
    .line 8696
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-virtual {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->isAdded()Z

    move-result v4

    .line 832
    if-nez v4, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->o(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lawn;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 840
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getHeaderViewsCount()I

    move-result v4

    add-int v2, p1, v4

    .line 841
    .local v2, "realPosition":I
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->o(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lawn;

    move-result-object v4

    invoke-virtual {v4}, Lawn;->getCount()I

    move-result v4

    iget-object v5, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v5}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getHeaderViewsCount()I

    move-result v5

    add-int v3, v4, v5

    .line 842
    .local v3, "totalCount":I
    if-ge v2, v3, :cond_0

    .line 846
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getFirstVisiblePosition()I

    move-result v0

    .line 847
    .local v0, "firstVisiblePos":I
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getLastVisiblePosition()I

    move-result v1

    .line 848
    .local v1, "lastVisiblePos":I
    if-lt v2, v0, :cond_2

    if-gt v2, v1, :cond_2

    .line 849
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_0

    .line 851
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setSelection(I)V

    goto :goto_0
.end method

.method public final a(J)V
    .locals 9
    .param p1, "timeMillis"    # J

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 771
    .line 4696
    iget-object v3, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-virtual {v3}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->isAdded()Z

    move-result v3

    .line 771
    if-nez v3, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v3}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->C(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 5032
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v3

    .line 5033
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 5034
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 5036
    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 5037
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 5039
    if-eq v4, v3, :cond_3

    .line 5040
    new-array v3, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Lcog;->h(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string/jumbo v4, " "

    aput-object v4, v3, v6

    invoke-static {p1, p2}, Lcog;->b(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 780
    .local v1, "todayTitle":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v3}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->C(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 783
    iget-object v3, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v3}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->C(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    invoke-static {p1, p2, v4, v5}, Lawj;->a(JJ)Z

    move-result v0

    .line 786
    .local v0, "isToday":Z
    iget-object v3, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v3}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->D(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 787
    iget-object v3, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v3}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->D(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_2

    const/16 v2, 0x8

    :cond_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5042
    .end local v0    # "isToday":Z
    .end local v1    # "todayTitle":Ljava/lang/String;
    :cond_3
    new-array v3, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Lcog;->f(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string/jumbo v4, " "

    aput-object v4, v3, v6

    invoke-static {p1, p2}, Lcog;->b(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public final a(Lawn;)V
    .locals 1
    .param p1, "adapter"    # Lawn;

    .prologue
    .line 717
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 719
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0, p1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->a(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;Lawn;)Lawn;

    .line 721
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
    .line 701
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->c(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->c(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->setICalendarDayViewAdapter(Lcsa;)V

    .line 703
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->c(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lckq;->a(Ljava/util/Calendar;)Lckq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->a(Lckq;)V

    .line 705
    :cond_0
    return-void
.end method

.method public final b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    .line 709
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->d(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->d(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setICalendarDayViewAdapter(Lcsa;)V

    .line 711
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->d(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lckq;->a(Ljava/util/Calendar;)Lckq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a(Lckq;)V

    .line 713
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->isAdded()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 725
    .line 1696
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->isAdded()Z

    move-result v0

    .line 725
    if-nez v0, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->A(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->A(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/ProgressBar;

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
    .line 735
    .line 2696
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->isAdded()Z

    move-result v0

    .line 735
    if-nez v0, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->A(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->A(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public final f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 745
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->B(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 746
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->B(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 747
    return-void
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 751
    .line 3696
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->isAdded()Z

    move-result v1

    .line 751
    if-nez v1, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->b(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Laph$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->b(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Laph$a;

    move-result-object v1

    invoke-interface {v1}, Laph$a;->c()Ljava/util/Calendar;

    move-result-object v0

    .line 760
    .local v0, "curCalendar":Ljava/util/Calendar;
    if-eqz v0, :cond_0

    .line 764
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->h(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)I

    move-result v1

    if-nez v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

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
    .line 793
    .line 5696
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->isAdded()Z

    move-result v0

    .line 793
    if-nez v0, :cond_1

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->c(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->d(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->c(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 798
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->c(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;->CURRENT_PAGE:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;)V

    goto :goto_0

    .line 800
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->d(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;->CURRENT_PAGE:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;)V

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 807
    .line 6696
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->isAdded()Z

    move-result v0

    .line 807
    if-nez v0, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b()V

    goto :goto_0
.end method

.method public final j()V
    .locals 0

    .prologue
    .line 818
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 822
    .line 7696
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->isAdded()Z

    move-result v0

    .line 822
    if-nez v0, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->E(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->E(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;->a()V

    goto :goto_0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->h(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)I

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
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 863
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->g(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Laun;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->g(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Laun;

    move-result-object v0

    .line 9374
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[CalendarDrawerContainer] reloadAliMailFolders"

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 9376
    iget-object v1, v0, Laun;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 9377
    iput-boolean v4, v0, Laun;->B:Z

    .line 9378
    invoke-virtual {v0}, Laun;->a()V

    .line 866
    :cond_0
    return-void
.end method
