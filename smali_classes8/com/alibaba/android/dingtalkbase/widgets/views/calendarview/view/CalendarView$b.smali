.class public final Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;
.super Ljava/lang/Object;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:I

.field public b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

.field public c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

.field final synthetic d:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    .prologue
    .line 955
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;->a:I

    .line 956
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 974
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$a;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-direct {v1, v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$a;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$a;)V

    .line 975
    return-void
.end method
