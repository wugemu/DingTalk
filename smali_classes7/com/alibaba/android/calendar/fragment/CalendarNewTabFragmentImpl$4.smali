.class final Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$4;
.super Ljava/lang/Object;
.source "CalendarNewTabFragmentImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 476
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$4;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 479
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$4;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->p(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$4;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->p(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    move-result-object v0

    .line 1396
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->WEEK:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    if-ne v1, v2, :cond_2

    .line 1397
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1398
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->getSelectedCalendarBean()Lckq;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->a(Lckq;Z)V

    .line 1399
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->setVisibility(I)V

    .line 1400
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setVisibility(I)V

    .line 1402
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a()V

    :cond_1
    :goto_0
    return-void

    .line 1404
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b()V

    goto :goto_0
.end method
