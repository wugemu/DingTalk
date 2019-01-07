.class final Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$9;
.super Ljava/lang/Object;
.source "CalendarNewTabFragmentImpl.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;


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
    .line 562
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$9;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

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
    .line 565
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$9;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v0

    .line 1106
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->a:Z

    .line 565
    if-eqz v0, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarActivityPresenter]CalendarWeekView Step2 OnItemSelect. bean="

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

    .line 569
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$9;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->b(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Laph$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$9;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->b(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Laph$a;

    move-result-object v0

    invoke-interface {v0, p1}, Laph$a;->b(Lckq;)V

    goto :goto_0
.end method
