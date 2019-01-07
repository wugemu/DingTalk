.class final Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$a;
.super Ljava/lang/Object;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

.field final c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

.field final synthetic d:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;)V
    .locals 1
    .param p2, "builder"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;

    .prologue
    .line 942
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$a;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1949
    iget v0, p2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;->a:I

    .line 943
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$a;->a:I

    .line 944
    iget-object v0, p2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 945
    iget-object v0, p2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 946
    return-void
.end method
