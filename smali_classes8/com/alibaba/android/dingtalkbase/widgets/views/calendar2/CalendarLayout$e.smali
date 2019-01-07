.class final Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$e;
.super Ljava/lang/Object;
.source "CalendarLayout.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$e;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$e;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)V

    return-void
.end method


# virtual methods
.method public final a(Lckq;)V
    .locals 1
    .param p1, "calendarBean"    # Lckq;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$e;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$e;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;

    .line 508
    :cond_0
    return-void
.end method
