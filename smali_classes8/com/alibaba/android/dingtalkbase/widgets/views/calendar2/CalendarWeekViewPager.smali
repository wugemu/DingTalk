.class public Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;
.super Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;
.source "CalendarWeekViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$a;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lgl;

.field private d:Lcsa;

.field private e:I

.field private f:I

.field private g:Lckq;

.field private h:Lckq;

.field private i:Landroid/support/v4/view/ViewPager$d;

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;

.field private k:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->b:Ljava/util/Deque;

    .line 34
    const/16 v0, 0x120

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->e:I

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->f:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;Lckq;)Lckq;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;
    .param p1, "x1"    # Lckq;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->h:Lckq;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lckq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->h:Lckq;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$a;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    .prologue
    .line 22
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->f:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Ljava/util/Deque;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->b:Ljava/util/Deque;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lcsa;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->d:Lcsa;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)Lckq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->g:Lckq;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    .prologue
    .line 22
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->e:I

    return v0
.end method

.method private setInitialCalender(Lckq;)V
    .locals 2
    .param p1, "calendarBean"    # Lckq;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 164
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->g:Lckq;

    .line 165
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->h:Lckq;

    .line 166
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->c:Lgl;

    .line 250
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->c:Lgl;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setAdapter(Lgl;)V

    .line 251
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->e:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setCurrentItem(IZ)V

    .line 252
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
    .line 105
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setOffscreenPageLimit(I)V

    .line 1115
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->i:Landroid/support/v4/view/ViewPager$d;

    .line 1137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->i:Landroid/support/v4/view/ViewPager$d;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 1142
    const/4 v0, 0x0

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;)V

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$e;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setInitialCalender(Lckq;)V

    .line 111
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
    .line 152
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->h:Lckq;

    invoke-static {v1, p1}, Lcqd;->e(Lckq;Lckq;)I

    move-result v0

    .line 153
    .local v0, "offset":I
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->h:Lckq;

    .line 154
    if-nez v0, :cond_0

    .line 155
    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;->CURRENT_PAGE:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;)V

    .line 161
    :goto_0
    return-void

    .line 156
    :cond_0
    const/4 v1, -0x5

    if-lt v0, v1, :cond_1

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 157
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->f:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->h:Lckq;

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setInitialCalender(Lckq;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;)V
    .locals 7
    .param p1, "refreshMode"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 81
    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;->CURRENT_PAGE:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;

    if-ne p1, v3, :cond_1

    .line 82
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a:Ljava/util/Map;

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;

    .line 83
    .local v0, "curCalendarWeekView":Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;
    if-eqz v0, :cond_0

    .line 84
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->h:Lckq;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->a(Lckq;Z)V

    .line 101
    .end local v0    # "curCalendarWeekView":Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;
    :cond_0
    return-void

    .line 86
    :cond_1
    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;->OTHER_PAGES:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;

    if-ne p1, v3, :cond_3

    .line 87
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 88
    .local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;>;>;"
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

    .line 89
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->f:I

    if-eq v3, v5, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 90
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->h:Lckq;

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->a(Lckq;Z)V

    goto :goto_0

    .line 93
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;>;"
    .end local v2    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;>;>;"
    :cond_3
    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;->ALL_PAGES:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$REFRESH_MODE;

    if-ne p1, v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 95
    .restart local v2    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;>;>;"
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

    .line 96
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 97
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->h:Lckq;

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->a(Lckq;Z)V

    goto :goto_1
.end method

.method public getSelectedCalendarBean()Lckq;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->h:Lckq;

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

    .line 51
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;->onMeasure(II)V

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "calendarHeight":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->getAdapter()Lgl;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;

    .line 55
    .local v1, "calendarWeekView":Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->getPaddingBottom()I

    move-result v3

    add-int v0, v2, v3

    .line 57
    .end local v1    # "calendarWeekView":Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;
    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setMeasuredDimension(II)V

    .line 58
    return-void
.end method

.method public setICalendarDayViewAdapter(Lcsa;)V
    .locals 0
    .param p1, "ICalendarDayViewAdapter"    # Lcsa;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->d:Lcsa;

    .line 78
    return-void
.end method

.method public setOnItemClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;

    .line 70
    return-void
.end method

.method public setOnItemSelectListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;)V
    .locals 0
    .param p1, "onItemSelectListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;

    .line 66
    return-void
.end method

.method public setOnPageChangePreLoadListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$a;)V
    .locals 0
    .param p1, "onPageChangePreLoadListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$a;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$a;

    .line 74
    return-void
.end method
