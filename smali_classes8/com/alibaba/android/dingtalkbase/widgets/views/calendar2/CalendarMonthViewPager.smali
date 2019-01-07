.class public Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;
.super Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;
.source "CalendarMonthViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager$a;
    }
.end annotation


# instance fields
.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected final b(Lckq;)V
    .locals 1
    .param p1, "calendarBean"    # Lckq;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager$a;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager$a;

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager$a;->a(Lckq;)V

    .line 22
    :cond_0
    return-void
.end method

.method public setOnPageChangePreLoadListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager$a;)V
    .locals 0
    .param p1, "onPageChangePreLoadListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager$a;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager$a;

    .line 26
    return-void
.end method
