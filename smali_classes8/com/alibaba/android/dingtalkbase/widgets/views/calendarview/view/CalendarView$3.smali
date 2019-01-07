.class final Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$3;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 155
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->today()Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v0

    .line 156
    .local v0, "today":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setCurrentDate(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V

    .line 157
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setSelectedDate(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V

    .line 158
    return-void
.end method
