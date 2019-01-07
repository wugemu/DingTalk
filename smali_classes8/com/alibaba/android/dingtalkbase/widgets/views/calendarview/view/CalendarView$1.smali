.class final Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$1;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 99
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method
