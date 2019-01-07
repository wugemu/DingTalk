.class final Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;
.super Lgl;
.source "CalendarDiurnalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-direct {p0}, Lgl;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->g(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 285
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->g(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->k(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->l(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->d(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getRefreshTimeRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 289
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->d(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->m(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 239
    const/16 v0, 0xfc0

    return v0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 249
    const/4 v0, -0x2

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 9
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, -0x1

    .line 254
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v5}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->e(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Laow$e;->calendar_item_day_events:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 256
    .local v2, "rlDayContainer":Landroid/widget/RelativeLayout;
    sget v5, Laow$d;->ll_all_day:I

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 257
    .local v1, "lLAllDay":Landroid/widget/LinearLayout;
    sget v5, Laow$d;->v_all_day_events:I

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;

    .line 259
    .local v4, "vAllDayEvents":Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;
    sget v5, Laow$d;->scroll_view:I

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    .line 261
    .local v3, "scrollControlScrollView":Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;
    new-instance v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v5}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->e(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v6, p2}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;I)J

    move-result-wide v6

    invoke-direct {v0, v5, v6, v7}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;-><init>(Landroid/content/Context;J)V

    .line 262
    .local v0, "calendarDiurnalView":Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->setScrollControlViewPager(Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;)V

    .line 263
    invoke-virtual {v0, v3}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->setScrollControlScrollView(Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;)V

    .line 264
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v5}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->h(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$c;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->setOnShowViewChangeListener(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$c;)V

    .line 265
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v5}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->i(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$a;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->setOnHour12Or24ChangeListener(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$a;)V

    .line 266
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v5}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->j(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$b;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->setOnRequestCreateListener(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$b;)V

    .line 268
    invoke-virtual {v3}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 269
    invoke-virtual {v3}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->removeAllViews()V

    .line 272
    :cond_0
    invoke-virtual {v3, v0}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->addView(Landroid/view/View;)V

    .line 273
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v5}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->g(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Ljava/util/Map;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v5}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->k(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Ljava/util/Map;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v5}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->l(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Ljava/util/Map;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v5}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->d(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Ljava/util/Map;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v5}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->m(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Ljava/util/Map;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->g(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Ljava/util/Map;

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
