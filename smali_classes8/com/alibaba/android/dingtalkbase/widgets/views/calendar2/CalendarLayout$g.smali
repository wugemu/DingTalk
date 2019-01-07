.class final Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;
.super Landroid/os/Handler;
.source "CalendarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    .prologue
    .line 521
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 527
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 1535
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1536
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->getSelectedCalendarBean()Lckq;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->a(Lckq;Z)V

    .line 1538
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->getSelectedCalendarBean()Lckq;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a(Lckq;Z)V

    goto :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
