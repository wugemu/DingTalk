.class final Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$1;
.super Landroid/support/v4/view/ViewPager$g;
.source "CalendarBaseMonthViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

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
    .line 133
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$g;->onPageSelected(I)V

    .line 134
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    invoke-static {v2, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;I)I

    .line 135
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;

    .line 136
    .local v0, "curCalendarMonthView":Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;
    if-eqz v0, :cond_2

    .line 137
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)Lckq;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->a(Lckq;)Lckq;

    move-result-object v1

    .line 138
    .local v1, "initialSelectedBean":Lckq;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)Lckq;

    move-result-object v2

    invoke-static {v1, v2}, Lcqd;->b(Lckq;Lckq;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;Lckq;)Lckq;

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)Lckq;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;->a(Lckq;)V

    .line 144
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;->CURRENT_PAGE:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;)V

    .line 145
    invoke-static {}, Lcku;->a()Lcku;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)Lckq;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcku;->a(Lckq;)V

    .line 146
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)Lckq;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->b(Lckq;)V

    .line 148
    .end local v1    # "initialSelectedBean":Lckq;
    :cond_2
    return-void
.end method
