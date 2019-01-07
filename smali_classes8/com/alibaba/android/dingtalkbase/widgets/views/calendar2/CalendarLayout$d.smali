.class final Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$d;
.super Ljava/lang/Object;
.source "CalendarLayout.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$a;
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$d;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$d;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)V

    return-void
.end method


# virtual methods
.method public final a(Lckq;)V
    .locals 2
    .param p1, "calendarBean"    # Lckq;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 494
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$d;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;->removeMessages(I)V

    .line 495
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$d;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$d;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;->c()V

    .line 498
    :cond_0
    return-void
.end method
