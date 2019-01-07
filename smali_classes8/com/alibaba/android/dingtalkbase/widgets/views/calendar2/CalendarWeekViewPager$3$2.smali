.class final Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3$2;
.super Ljava/lang/Object;
.source "CalendarWeekViewPager.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lckq;)V
    .locals 1
    .param p1, "bean"    # Lckq;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->g(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->g(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;->a(Lckq;)V

    .line 207
    :cond_0
    return-void
.end method
