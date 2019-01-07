.class public Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;
.super Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;
.source "CalendarDiurnalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$e;,
        Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$d;,
        Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$f;,
        Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$a;,
        Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$c;,
        Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field private c:Landroid/content/Context;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Ljava/util/Calendar;

.field private j:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$c;

.field private k:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$a;

.field private l:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$f;

.field private m:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$d;

.field private n:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$e;

.field private o:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$b;

.field private p:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$c;

.field private q:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->d:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->e:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->f:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->a:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->g:Ljava/util/Map;

    .line 43
    const/16 v0, 0x7e0

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->h:I

    .line 44
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->i:Ljava/util/Calendar;

    .line 55
    new-instance v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$1;-><init>(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->p:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$c;

    .line 63
    new-instance v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$2;-><init>(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->q:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$a;

    .line 78
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->c:Landroid/content/Context;

    .line 79
    const/16 v0, 0x96

    invoke-static {p0, v0}, Lcqb;->a(Landroid/support/v4/view/ViewPager;I)V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    return p1
.end method

.method private a(I)J
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 295
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 296
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->i:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 297
    const/4 v1, 0x6

    iget v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->h:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 298
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 299
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 300
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 301
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 302
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$f;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->l:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$f;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;I)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$e;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->n:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$e;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    .prologue
    .line 31
    iget v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->k:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$a;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->p:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$c;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->q:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$a;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->o:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$b;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->g:Ljava/util/Map;

    return-object v0
.end method

.method private setInitialPosition(I)V
    .locals 8
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 199
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->i:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->i:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lawj;->b(J)J

    move-result-wide v2

    iget v4, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->h:I

    sub-int v4, p1, v4

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 200
    iput p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->h:I

    .line 201
    iput p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    .line 202
    new-instance v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;

    invoke-direct {v0, p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;-><init>(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)V

    .line 203
    .local v0, "calendarDayEventsViewPagerAdapter":Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$b;
    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->setAdapter(Lgl;)V

    .line 204
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->setCurrentItem(IZ)V

    .line 205
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Calendar;)V
    .locals 6
    .param p1, "calendar"    # Ljava/util/Calendar;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 179
    if-nez p1, :cond_1

    .line 3192
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lawj;->b(J)J

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->i:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lawj;->b(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 183
    .local v0, "dayOffset":I
    iget v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->h:I

    add-int/2addr v1, v0

    .line 3187
    iget v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    sub-int v2, v1, v2

    .line 3188
    if-eqz v2, :cond_0

    .line 3191
    const/4 v3, -0x3

    if-le v2, v3, :cond_2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 3192
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 3194
    :cond_2
    invoke-direct {p0, v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->setInitialPosition(I)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->f:Ljava/util/Map;

    iget v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 117
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->f:Ljava/util/Map;

    iget v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final b()V
    .locals 22

    .prologue
    .line 135
    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->a(I)J

    move-result-wide v6

    .line 137
    .local v6, "dayStartTimeMillis":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->e:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 138
    .local v9, "llAllDay":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    .line 139
    .local v3, "allDayHeight":I
    if-eqz v9, :cond_1

    .line 140
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->j:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$c;

    if-nez v11, :cond_9

    const/4 v2, 0x0

    .line 141
    .local v2, "allDayEvents":Ljava/util/Collection;, "Ljava/util/Collection<Laxn;>;"
    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 142
    :cond_0
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    .end local v2    # "allDayEvents":Ljava/util/Collection;, "Ljava/util/Collection<Laxn;>;"
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->m:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$d;

    if-eqz v11, :cond_2

    .line 161
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->m:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$d;

    invoke-interface {v11, v3}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$d;->a(I)V

    .line 164
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->a:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    .line 165
    .local v4, "calendarDiurnalView":Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->f:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    .line 166
    .local v10, "scrollControlScrollView":Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;
    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->j:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$c;

    if-eqz v11, :cond_8

    if-eqz v10, :cond_8

    .line 167
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->j:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$c;

    invoke-interface {v11, v6, v7}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$c;->b(J)Ljava/util/List;

    move-result-object v16

    .line 2393
    iget-object v11, v4, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->f:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v16, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    .line 2394
    iget-object v0, v4, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 3039
    if-eqz v16, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 3040
    :cond_3
    const/4 v11, 0x0

    .line 2394
    :cond_4
    :goto_2
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->smoothScrollTo(II)V

    .line 2396
    :cond_5
    iget-object v11, v4, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->f:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 2397
    if-eqz v16, :cond_6

    .line 2398
    iget-object v11, v4, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->f:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2400
    :cond_6
    iget-object v11, v4, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v12, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->NORMAL:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-ne v11, v12, :cond_7

    .line 2401
    new-instance v11, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$4;

    invoke-direct {v11, v4}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$4;-><init>(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)V

    invoke-virtual {v4, v11}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->post(Ljava/lang/Runnable;)Z

    .line 168
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->l:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$f;

    if-eqz v11, :cond_8

    .line 169
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->l:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$f;

    .line 170
    invoke-virtual {v10}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->getHeight()I

    move-result v12

    .line 171
    invoke-virtual {v10}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->getScrollY()I

    move-result v13

    .line 172
    invoke-virtual {v4}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getFirstEventBottom()F

    move-result v14

    .line 173
    invoke-virtual {v4}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getLastEventTop()F

    move-result v15

    .line 169
    invoke-interface {v11, v12, v13, v14, v15}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$f;->a(IIFF)V

    .line 176
    :cond_8
    return-void

    .line 140
    .end local v4    # "calendarDiurnalView":Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;
    .end local v10    # "scrollControlScrollView":Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->j:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$c;

    invoke-interface {v11, v6, v7}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$c;->a(J)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0

    .line 144
    .restart local v2    # "allDayEvents":Ljava/util/Collection;, "Ljava/util/Collection<Laxn;>;"
    :cond_a
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->g:Ljava/util/Map;

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->g:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->g:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 146
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->g:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;

    .line 2053
    iget-object v12, v11, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->a:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 2054
    if-eqz v2, :cond_b

    .line 2055
    iget-object v12, v11, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->a:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2061
    :cond_b
    iget-object v12, v11, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->a:Ljava/util/List;

    invoke-static {v12}, Lavm;->a(Ljava/util/Collection;)V

    .line 2062
    iget-object v12, v11, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->a:Ljava/util/List;

    iget-object v13, v11, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->b:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 2066
    iget-object v12, v11, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->b:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 2067
    iget-object v12, v11, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->a:Ljava/util/List;

    if-eqz v12, :cond_c

    .line 2068
    iget-object v12, v11, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->b:Ljava/util/List;

    iget-object v13, v11, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->a:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2070
    :cond_c
    new-instance v12, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView$1;

    invoke-direct {v12, v11}, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView$1;-><init>(Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;)V

    invoke-virtual {v11, v12}, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->post(Ljava/lang/Runnable;)Z

    .line 147
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->g:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;

    invoke-virtual {v11}, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 148
    .local v8, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {}, Lavl;->a()Z

    move-result v11

    if-eqz v11, :cond_e

    sget v11, Laow$b;->calendar_day_events_view_divider_margin_left_hour_24:I

    :goto_3
    invoke-static {v11}, Leda;->d(I)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 152
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->g:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;

    invoke-virtual {v11, v8}, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->g:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;

    invoke-virtual {v11}, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->getEvents()Ljava/util/List;

    move-result-object v5

    .line 154
    .local v5, "events":Ljava/util/List;, "Ljava/util/List<Laxn;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 155
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->g:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;

    invoke-virtual {v11}, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->getAllDayItemHeight()I

    move-result v11

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    mul-int/2addr v12, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->g:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;

    invoke-virtual {v11}, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->getAllDayMaxHeight()I

    move-result v11

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto/16 :goto_1

    .line 148
    .end local v5    # "events":Ljava/util/List;, "Ljava/util/List<Laxn;>;"
    :cond_e
    sget v11, Laow$b;->calendar_day_events_view_divider_margin_left_hour_12:I

    goto :goto_3

    .line 3043
    .end local v2    # "allDayEvents":Ljava/util/Collection;, "Ljava/util/Collection<Laxn;>;"
    .end local v8    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v4    # "calendarDiurnalView":Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;
    .restart local v10    # "scrollControlScrollView":Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 3044
    iget-wide v14, v4, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->d:J

    cmp-long v11, v12, v14

    if-ltz v11, :cond_10

    iget-wide v14, v4, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->d:J

    const-wide/32 v20, 0x5265c00

    add-long v14, v14, v20

    cmp-long v11, v12, v14

    if-gez v11, :cond_10

    .line 3045
    iget-wide v14, v4, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->d:J

    sub-long/2addr v12, v14

    invoke-virtual {v4, v12, v13}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(J)I

    move-result v11

    iget v12, v4, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->b:I

    sub-int/2addr v11, v12

    .line 3046
    if-gtz v11, :cond_4

    const/4 v11, 0x0

    goto/16 :goto_2

    .line 3049
    :cond_10
    const/4 v11, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laxn;

    .line 3050
    if-eqz v11, :cond_13

    .line 3053
    invoke-interface {v11}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v12

    .line 3054
    const/4 v11, 0x1

    move-wide v14, v12

    move v12, v11

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v11

    if-ge v12, v11, :cond_12

    .line 3055
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laxn;

    .line 3056
    if-eqz v11, :cond_11

    .line 3059
    invoke-interface {v11}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v20

    cmp-long v13, v20, v14

    if-gez v13, :cond_11

    .line 3060
    invoke-interface {v11}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v14

    .line 3054
    :cond_11
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_4

    .line 3064
    :cond_12
    iget-wide v12, v4, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->d:J

    sub-long v12, v14, v12

    invoke-virtual {v4, v12, v13}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(J)I

    move-result v11

    iget v12, v4, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->b:I

    sub-int/2addr v11, v12

    .line 3065
    if-gtz v11, :cond_4

    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_2
.end method

.method public final b(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 208
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .end local p1    # "calendar":Ljava/util/Calendar;
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->i:Ljava/util/Calendar;

    .line 209
    new-instance v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;-><init>(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)V

    .line 231
    .local v0, "pageChangeListener":Landroid/support/v4/view/ViewPager$d;
    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 232
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->setOffscreenPageLimit(I)V

    .line 233
    iget v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->h:I

    invoke-direct {p0, v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->setInitialPosition(I)V

    .line 234
    return-void
.end method

.method public setCalendarDayEventsListener(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$a;)V
    .locals 0
    .param p1, "calendarDayEventsListener"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$a;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->k:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$a;

    .line 99
    return-void
.end method

.method public setDayEventsDelegate(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$c;)V
    .locals 0
    .param p1, "dayEventsDelegate"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$c;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->j:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$c;

    .line 95
    return-void
.end method

.method public setOnAllDayEventsListener(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$d;)V
    .locals 0
    .param p1, "onAllDayEventsListener"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$d;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->m:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$d;

    .line 103
    return-void
.end method

.method public setRequestCreateListener(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$b;)V
    .locals 0
    .param p1, "viewOnRequestCreateListener"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$b;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->o:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$b;

    .line 107
    return-void
.end method

.method public setViewPagerOnHour12Or24ChangeListener(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$e;)V
    .locals 0
    .param p1, "onHour12Or24ChachgeListener"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$e;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->n:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$e;

    .line 111
    return-void
.end method

.method public setViewPagerOnShowViewChangeListener(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$f;)V
    .locals 0
    .param p1, "viewPagerOnShowViewChangeListener"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$f;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->l:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$f;

    .line 91
    return-void
.end method
