.class final Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$8;
.super Ljava/lang/Object;
.source "CalendarNewTabFragmentImpl.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager$a;


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
    .line 549
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$8;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lckq;)V
    .locals 4
    .param p1, "calendarBean"    # Lckq;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 553
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarActivityPresenter]CalendarMonthView Step3 onPageChangePreLoad. bean="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lckq;->a()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcog;->l(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$8;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->b(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Laph$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$8;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->b(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Laph$a;

    move-result-object v0

    invoke-interface {v0, p1}, Laph$a;->c(Lckq;)V

    .line 1120
    :cond_0
    const-string/jumbo v0, "ding_calendar_slide"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lavw;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 559
    return-void
.end method
