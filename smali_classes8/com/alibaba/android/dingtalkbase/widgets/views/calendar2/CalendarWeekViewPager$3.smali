.class final Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;
.super Lgl;
.source "CalendarWeekViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setInitialCalender(Lckq;)V
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
    .line 166
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-direct {p0}, Lgl;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 246
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Ljava/util/Deque;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 169
    const/16 v0, 0x240

    return v0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 179
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1184
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Ljava/util/Deque;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Ljava/util/Deque;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1185
    :cond_0
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;-><init>(Landroid/content/Context;)V

    .line 1186
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->setOnItemSelectListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;)V

    .line 1201
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->setOnItemClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;)V

    .line 1209
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->h(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lcsa;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->setICalendarDayViewAdapter(Lcsa;)V

    .line 1217
    .local v2, "instantiateCalendarWeekView":Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1218
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->i(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lckq;

    move-result-object v3

    .line 2050
    iget v3, v3, Lckq;->a:I

    .line 1218
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->i(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lckq;

    move-result-object v4

    .line 2054
    iget v4, v4, Lckq;->b:I

    .line 1218
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->i(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lckq;

    move-result-object v5

    .line 2058
    iget v5, v5, Lckq;->c:I

    .line 1218
    invoke-virtual {v1, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 1219
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->j(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 230
    .local v1, "instantiateCalendar":Ljava/util/Calendar;
    const/4 v3, 0x1

    .line 231
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 232
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 233
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 230
    invoke-static {v3, v4, v5}, Lcqd;->a(III)Ljava/util/List;

    move-result-object v0

    .line 235
    .local v0, "instantiateBeansOfOneWeek":Ljava/util/List;, "Ljava/util/List<Lckq;>;"
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lckq;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->a(Ljava/util/List;Lckq;)V

    .line 237
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 238
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 1211
    .end local v0    # "instantiateBeansOfOneWeek":Ljava/util/List;, "Ljava/util/List<Lckq;>;"
    .end local v1    # "instantiateCalendar":Ljava/util/Calendar;
    .end local v2    # "instantiateCalendarWeekView":Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;

    move-object v2, v3

    goto :goto_0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
