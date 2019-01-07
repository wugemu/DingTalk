.class final Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$4;
.super Ljava/lang/Object;
.source "CalendarViewPager.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZLandroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "dateInt"    # I
    .param p2, "isCurrentMonth"    # Z
    .param p3, "oldView"    # Landroid/view/View;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->n(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->n(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;->a(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
