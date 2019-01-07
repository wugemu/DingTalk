.class final Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$1;
.super Landroid/support/v4/view/ViewPager$g;
.source "CalendarWeekViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$g;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$g;->onPageSelected(I)V

    .line 119
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v2, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;I)I

    .line 120
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;

    .line 121
    .local v0, "curCalendarWeekView":Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;
    if-eqz v0, :cond_2

    .line 122
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lckq;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->a(Lckq;)Lckq;

    move-result-object v1

    .line 123
    .local v1, "initialSelectedBean":Lckq;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lckq;

    move-result-object v2

    invoke-static {v1, v2}, Lcqd;->c(Lckq;Lckq;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;Lckq;)Lckq;

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lckq;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;->a(Lckq;)V

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;->CURRENT_PAGE:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;)V

    .line 130
    invoke-static {}, Lcku;->a()Lcku;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lckq;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcku;->a(Lckq;)V

    .line 131
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$a;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 132
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$a;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lckq;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$a;->a(Lckq;)V

    .line 135
    .end local v1    # "initialSelectedBean":Lckq;
    :cond_2
    return-void
.end method
