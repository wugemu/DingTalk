.class final Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$15;
.super Ljava/lang/Object;
.source "CalendarFragmentImpl.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;


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
    .line 382
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$15;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 1152
    const-string/jumbo v0, "ding_calendar_view_switch_month"

    invoke-static {v0}, Lavw;->c(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$15;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->g(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$15;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->g(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;->a()V

    .line 389
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 1156
    const-string/jumbo v0, "ding_calendar_view_switch_week"

    invoke-static {v0}, Lavw;->c(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$15;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->g(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$15;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->g(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;->b()V

    .line 397
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 2124
    const-string/jumbo v0, "ding_calendar_choose_date_click"

    invoke-static {v0}, Lavw;->b(Ljava/lang/String;)V

    .line 402
    return-void
.end method
