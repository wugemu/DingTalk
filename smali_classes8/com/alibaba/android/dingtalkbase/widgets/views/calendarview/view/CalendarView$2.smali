.class final Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$2;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;
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
    .line 110
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 122
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 126
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)Lcsh;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v1

    .line 1060
    iput-object v1, v0, Lcsh;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)Lcsb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcsb;->a(I)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->g(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 118
    return-void
.end method
