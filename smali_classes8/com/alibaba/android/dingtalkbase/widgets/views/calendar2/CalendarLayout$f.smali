.class final Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$f;
.super Landroid/support/v4/view/ViewPager$g;
.source "CalendarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$f;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$g;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    .prologue
    .line 511
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$f;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 514
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$f;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;->removeMessages(I)V

    .line 515
    if-nez p1, :cond_0

    .line 516
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$f;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$g;->sendEmptyMessageDelayed(IJ)Z

    .line 518
    :cond_0
    return-void
.end method
