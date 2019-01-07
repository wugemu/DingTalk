.class final Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$2;
.super Ljava/lang/Object;
.source "CalendarViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->b()V
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
    .line 176
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 190
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 179
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->l(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->l(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$a;

    move-result-object v0

    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->b(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$a;->a(I)V

    .line 186
    :cond_0
    return-void
.end method
