.class public Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "CalendarWidgetMonthFragment.java"

# interfaces
.implements Lhoq$a;


# instance fields
.field a:Lhoq$b;

.field private b:Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;

.field private c:Lckq;

.field private d:I

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;

    .prologue
    .line 32
    iget v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->d:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;Lckq;)Lckq;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;
    .param p1, "x1"    # Lckq;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->c:Lckq;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;
    .param p1, "x1"    # I

    .prologue
    .line 32
    const/4 v1, 0x1

    .line 1188
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1189
    if-eqz v0, :cond_0

    instance-of v2, v0, Lhoq$c;

    if-eqz v2, :cond_0

    .line 1190
    check-cast v0, Lhoq$c;

    .line 1193
    invoke-interface {v0, v1}, Lhoq$c;->a(I)V

    .line 32
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;)Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->b:Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;)Lckq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->c:Lckq;

    return-object v0
.end method


# virtual methods
.method public final a(Lhoq$b;IJ)V
    .locals 1
    .param p1, "presenter"    # Lhoq$b;
    .param p2, "pos"    # I
    .param p3, "timeStamp"    # J

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->a:Lhoq$b;

    .line 47
    iput p2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->d:I

    .line 49
    iput-wide p3, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->e:J

    .line 50
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 157
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->b:Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;->ALL_PAGES:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;)V

    .line 160
    :cond_0
    return-void
.end method

.method public final d()Ljava/util/Calendar;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->c:Lckq;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->c:Lckq;

    invoke-virtual {v1}, Lckq;->a()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "calendar":Ljava/util/Calendar;
    if-nez v0, :cond_1

    .line 167
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/CalendarProxy;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 168
    .restart local v0    # "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 171
    :cond_1
    return-object v0
.end method

.method final f()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 176
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lhoq$c;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 177
    check-cast v1, Lhoq$c;

    .line 180
    .local v1, "mvpView":Lhoq$c;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->c:Lckq;

    if-eqz v2, :cond_0

    .line 181
    iget v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->d:I

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->c:Lckq;

    invoke-virtual {v4}, Lckq;->a()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const v6, 0x80014

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lhoq$c;->a(ILjava/lang/String;)V

    .line 185
    .end local v1    # "mvpView":Lhoq$c;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 1078
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->I:Landroid/view/View;

    sget v2, Lhdn$h;->calendar_widget_month_pager:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->b:Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;

    .line 64
    invoke-static {}, Lcom/alibaba/doraemon/performance/CalendarProxy;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 65
    .local v0, "calendar":Ljava/util/Calendar;
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 66
    invoke-static {v0}, Lckq;->a(Ljava/util/Calendar;)Lckq;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->c:Lckq;

    .line 1082
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->b:Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;

    new-instance v2, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$1;-><init>(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->setOnItemSelectListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;)V

    .line 1092
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->b:Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;

    new-instance v2, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$2;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$2;-><init>(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->setPageChangePreLoader(Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager$a;)V

    .line 1101
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->b:Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;

    new-instance v2, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$3;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$3;-><init>(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->setOnItemClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$a;)V

    .line 1113
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->a:Lhoq$b;

    if-eqz v1, :cond_0

    .line 1114
    new-instance v1, Lhem;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->a:Lhoq$b;

    .line 1115
    invoke-interface {v3}, Lhoq$b;->a()Lhfn;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lhem;-><init>(Landroid/content/Context;Lhfn;Lhem$a;)V

    .line 1117
    iget v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->d:I

    if-lez v2, :cond_1

    .line 1118
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$4;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$4;-><init>(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;Lcsa;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1140
    :goto_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$5;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$5;-><init>(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1150
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->a:Lhoq$b;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->c:Lckq;

    invoke-interface {v1, v2, p0}, Lhoq$b;->a(Lckq;Lhoq$a;)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->f()V

    .line 74
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->I:Landroid/view/View;

    return-object v1

    .line 1132
    :cond_1
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->b:Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;

    invoke-virtual {v2, v1}, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->setICalendarDayViewAdapter(Lcsa;)V

    .line 1134
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->b:Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->c:Lckq;

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->a(Lckq;)V

    .line 1136
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->b:Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;

    const/4 v2, 0x1

    new-instance v3, Lher;

    invoke-direct {v3}, Lher;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$e;)V

    goto :goto_0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lhdn$i;->fragment_calendar_month:I

    return v0
.end method
