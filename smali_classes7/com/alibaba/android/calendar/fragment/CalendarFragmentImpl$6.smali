.class final Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$6;
.super Ljava/lang/Object;
.source "CalendarFragmentImpl.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$6;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lckq;)V
    .locals 2
    .param p1, "calendarBean"    # Lckq;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 458
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$6;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->a(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Laph$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$6;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->a(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Laph$a;

    move-result-object v0

    invoke-interface {v0, p1}, Laph$a;->c(Lckq;)V

    .line 1120
    :cond_0
    const-string/jumbo v0, "ding_calendar_slide"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lavw;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 462
    return-void
.end method
