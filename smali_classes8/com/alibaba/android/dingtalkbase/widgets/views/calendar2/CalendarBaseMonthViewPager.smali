.class public abstract Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;
.super Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;
.source "CalendarBaseMonthViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;
    }
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;",
            ">;"
        }
    .end annotation
.end field

.field b:Lckq;

.field private c:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lgl;

.field private e:Lcsa;

.field private f:I

.field private g:I

.field private h:Lckq;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$a;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->a:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->c:Ljava/util/Deque;

    .line 37
    const/16 v0, 0x48

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->f:I

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->g:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;Lckq;)Lckq;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;
    .param p1, "x1"    # Lckq;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->b:Lckq;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)Lckq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->b:Lckq;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    .prologue
    .line 25
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->g:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)Ljava/util/Deque;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->c:Ljava/util/Deque;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$a;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)Lcsa;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->e:Lcsa;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)Lckq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->h:Lckq;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    .prologue
    .line 25
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->f:I

    return v0
.end method

.method private setInitialCalender(Lckq;)V
    .locals 2
    .param p1, "calendarBean"    # Lckq;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->h:Lckq;

    .line 175
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->b:Lckq;

    .line 176
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->d:Lgl;

    .line 265
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->d:Lgl;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->setAdapter(Lgl;)V

    .line 266
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->f:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->setCurrentItem(IZ)V

    .line 267
    return-void
.end method


# virtual methods
.method public final a(Lckq;)V
    .locals 2
    .param p1, "calendarBean"    # Lckq;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->setOffscreenPageLimit(I)V

    .line 1130
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)V

    .line 1150
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 1155
    const/4 v0, 0x0

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)V

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$e;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->setInitialCalender(Lckq;)V

    .line 126
    return-void
.end method

.method public final a(Lckq;Z)V
    .locals 2
    .param p1, "calendarBean"    # Lckq;
    .param p2, "smoothScroll"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 165
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->b:Lckq;

    invoke-static {v1, p1}, Lcqd;->d(Lckq;Lckq;)I

    move-result v0

    .line 166
    .local v0, "offset":I
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->b:Lckq;

    .line 167
    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;->CURRENT_PAGE:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;)V

    .line 168
    if-eqz v0, :cond_0

    .line 169
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->g:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->setCurrentItem(IZ)V

    .line 171
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;)V
    .locals 7
    .param p1, "refreshMode"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 96
    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;->CURRENT_PAGE:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    if-ne p1, v3, :cond_1

    .line 97
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->a:Ljava/util/Map;

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;

    .line 98
    .local v0, "curCalendarMonthView":Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;
    if-eqz v0, :cond_0

    .line 99
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->b:Lckq;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->a(Lckq;Z)V

    .line 116
    .end local v0    # "curCalendarMonthView":Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;
    :cond_0
    return-void

    .line 101
    :cond_1
    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;->OTHER_PAGES:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    if-ne p1, v3, :cond_3

    .line 102
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 103
    .local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 104
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->g:I

    if-eq v3, v5, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 105
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->b:Lckq;

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->a(Lckq;Z)V

    goto :goto_0

    .line 108
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;>;"
    .end local v2    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;>;>;"
    :cond_3
    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;->ALL_PAGES:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    if-ne p1, v3, :cond_0

    .line 109
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 110
    .restart local v2    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 111
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->b:Lckq;

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->a(Lckq;Z)V

    goto :goto_1
.end method

.method protected abstract b(Lckq;)V
.end method

.method public getDayViewItemHeight()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->k:I

    return v0
.end method

.method public getSelectedCalendarBean()Lckq;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->b:Lckq;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;->onMeasure(II)V

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "calendarHeight":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->getAdapter()Lgl;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;

    .line 58
    .local v1, "calendarMonthView":Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->getPaddingBottom()I

    move-result v3

    add-int v0, v2, v3

    .line 59
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->getDayViewItemHeight()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->k:I

    .line 61
    .end local v1    # "calendarMonthView":Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;
    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->setMeasuredDimension(II)V

    .line 62
    return-void
.end method

.method public setICalendarDayViewAdapter(Lcsa;)V
    .locals 0
    .param p1, "ICalendarDayViewAdapter"    # Lcsa;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->e:Lcsa;

    .line 89
    return-void
.end method

.method public setOnItemClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$a;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$a;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$a;

    .line 85
    return-void
.end method

.method public setOnItemSelectListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;)V
    .locals 0
    .param p1, "onItemSelectListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;

    .line 81
    return-void
.end method
