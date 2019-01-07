.class final Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3$1;
.super Ljava/lang/Object;
.source "CalendarWeekViewPager.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lckq;)V
    .locals 3
    .param p1, "bean"    # Lckq;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 189
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lckq;

    move-result-object v1

    invoke-static {p1, v1}, Lcqd;->c(Lckq;Lckq;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 190
    .local v0, "hasWeekChanged":Z
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;Lckq;)Lckq;

    .line 191
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;->a(Lckq;)V

    .line 194
    :cond_0
    if-eqz v0, :cond_2

    .line 195
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;->ALL_PAGES:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;)V

    .line 199
    :goto_1
    return-void

    .line 189
    .end local v0    # "hasWeekChanged":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 197
    .restart local v0    # "hasWeekChanged":Z
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;->CURRENT_PAGE:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;)V

    goto :goto_1
.end method
