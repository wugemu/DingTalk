.class final Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$1;
.super Lgl;
.source "CalendarViewPager.java"


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
    .line 131
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

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
    .line 169
    if-eqz p3, :cond_0

    instance-of v1, p3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 170
    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;

    .line 171
    .local v0, "view":Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 172
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v0    # "view":Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 134
    const v0, 0x30d40

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 145
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;

    .line 147
    .local v0, "view":Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;
    invoke-static {p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->setMonthInt(I)V

    .line 163
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 164
    return-object v0

    .line 149
    .end local v0    # "view":Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;-><init>(Landroid/content/Context;)V

    .line 150
    .restart local v0    # "view":Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->setHorizontalLayoutMode(I)V

    .line 152
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->setVerticalLayoutMode(I)V

    .line 153
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->setHorizontalSpaceProportion(F)V

    .line 154
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->setVerticalSpaceProportion(F)V

    .line 155
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->setHorizontalSpace(F)V

    .line 156
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->g(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->setVerticalSpace(F)V

    .line 157
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->h(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->setItemWidth(F)V

    .line 158
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->i(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->setItemHeight(F)V

    .line 159
    invoke-static {p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->setMonthInt(I)V

    .line 160
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->j(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->setOnCalendarGridViewItemClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;)V

    .line 161
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->k(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->setCalendarGridViewAdapter(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;)V

    goto :goto_0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 139
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
