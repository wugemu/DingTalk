.class public Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;
.super Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;
.source "CalendarNewTabFragmentImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:Laph$b;

.field private E:Laph$a;

.field private F:Landroid/animation/ValueAnimator;

.field private M:Landroid/animation/ValueAnimator;

.field private N:Landroid/animation/ObjectAnimator;

.field private O:Landroid/animation/ObjectAnimator;

.field private P:Ljava/lang/Runnable;

.field private a:Z

.field private b:Z

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/view/View;

.field private k:Laun;

.field private l:Landroid/widget/FrameLayout;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/ProgressBar;

.field private q:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

.field private r:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

.field private s:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

.field private t:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

.field private u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private v:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private w:Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

.field private x:Lawn;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;-><init>()V

    .line 69
    iput-boolean v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->a:Z

    .line 70
    iput-boolean v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->b:Z

    .line 107
    invoke-static {}, Lauo;->a()Lauo;

    invoke-static {}, Lauo;->b()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->A:I

    .line 123
    new-instance v0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$1;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->P:Ljava/lang/Runnable;

    .line 682
    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->p:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic B(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->P:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic C(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic D(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic E(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->w:Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;
    .param p1, "x1"    # Landroid/widget/FrameLayout;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->c:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Laph$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->D:Laph$b;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;Laun;)Laun;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;
    .param p1, "x1"    # Laun;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->k:Laun;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;Lawn;)Lawn;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;
    .param p1, "x1"    # Lawn;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->x:Lawn;

    return-object p1
.end method

.method private a(I)V
    .locals 3
    .param p1, "calendarMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 870
    iput p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->A:I

    .line 871
    invoke-static {}, Lauo;->a()Lauo;

    invoke-static {p1}, Lauo;->a(I)V

    .line 872
    if-nez p1, :cond_0

    .line 873
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    .line 874
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->setVisibility(I)V

    .line 875
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->E:Laph$a;

    invoke-interface {v1}, Laph$a;->c()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->a(Ljava/util/Calendar;)V

    .line 4160
    const-string/jumbo v0, "ding_calendar_oneday_display"

    invoke-static {v0}, Lavw;->c(Ljava/lang/String;)V

    .line 888
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->E:Laph$a;

    invoke-interface {v0}, Laph$a;->f()V

    .line 889
    return-void

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    .line 880
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->setVisibility(I)V

    .line 881
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 882
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4164
    const-string/jumbo v0, "ding_calendar_list_display"

    invoke-static {v0}, Lavw;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Laph$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->E:Laph$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->b:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 193
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarNewTabFragmentImpl] refreshWhenVisible."

    aput-object v1, v0, v3

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->E:Laph$a;

    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->E:Laph$a;

    invoke-interface {v1}, Laph$a;->c()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lckq;->a(Ljava/util/Calendar;)Lckq;

    move-result-object v1

    invoke-interface {v0, v1}, Laph$a;->d(Lckq;)V

    .line 199
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->E:Laph$a;

    invoke-interface {v0}, Laph$a;->d()V

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->E:Laph$a;

    invoke-interface {v0}, Laph$a;->e()V

    .line 205
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->E:Laph$a;

    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->E:Laph$a;

    invoke-interface {v1}, Laph$a;->c()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lckq;->a(Ljava/util/Calendar;)Lckq;

    move-result-object v1

    invoke-interface {v0, v1}, Laph$a;->c(Lckq;)V

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->E:Laph$a;

    invoke-interface {v0}, Laph$a;->c()Ljava/util/Calendar;

    move-result-object v0

    .line 2300
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->d:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 2304
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 2305
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2308
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v1, :cond_1

    .line 2309
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2312
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 2313
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2316
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v1, :cond_3

    .line 2317
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2320
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->i:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4

    .line 2321
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2324
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->D:Laph$b;

    if-nez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    invoke-interface {v2, v0, v1}, Laph$b;->a(J)V

    .line 209
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->D:Laph$b;

    invoke-interface {v0}, Laph$b;->i()V

    .line 211
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->E:Laph$a;

    invoke-interface {v0}, Laph$a;->g()V

    .line 212
    return-void

    .line 2324
    :cond_6
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private g()F
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 899
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    .line 4409
    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->MONTH:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    .line 899
    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    int-to-float v0, v0

    return v0

    :cond_1
    move v1, v0

    .line 4409
    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Laun;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->k:Laun;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->A:I

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->C:Z

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->y:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->z:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->g()F

    move-result v0

    return v0
.end method

.method static synthetic o(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lawn;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->x:Lawn;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    .line 4892
    invoke-static {}, Lavq;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->z:Landroid/widget/LinearLayout;

    .line 4893
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4894
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->z:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 66
    :cond_0
    return-void
.end method

.method static synthetic t(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->a:Z

    return v0
.end method

.method static synthetic v(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->N:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->F:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->b:Z

    return v0
.end method

.method static synthetic y(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->O:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->M:Landroid/animation/ValueAnimator;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 260
    if-nez p1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 264
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->d:Landroid/view/View;

    .line 265
    sget v0, Laow$d;->tv_cancel_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->e:Landroid/widget/TextView;

    .line 266
    sget v0, Laow$d;->iv_clear:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 267
    sget v0, Laow$d;->tv_delete_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->h:Landroid/widget/TextView;

    .line 268
    sget v0, Laow$d;->iv_calendar_mode:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 269
    sget v0, Laow$d;->rl_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->i:Landroid/widget/RelativeLayout;

    .line 270
    sget v0, Laow$d;->v_setting_red_dot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->j:Landroid/view/View;

    .line 272
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->i:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final b(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 335
    return-void
.end method

.method public final c()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->E:Laph$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->E:Laph$a;

    invoke-interface {v0}, Laph$a;->c()Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 187
    :cond_0
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    .line 189
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->E:Laph$a;

    invoke-interface {v0}, Laph$a;->c()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final d()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    .line 2083
    iget-object v3, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->a:Ljava/util/Map;

    iget v4, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2086
    iget-object v3, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->a:Ljava/util/Map;

    iget v0, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    .line 2200
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2201
    invoke-virtual {v0, v2}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(Z)V

    move v0, v1

    .line 181
    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    move v0, v2

    .line 2204
    goto :goto_0

    :cond_1
    move v0, v2

    .line 181
    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 174
    new-instance v0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$a;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;B)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->D:Laph$b;

    .line 175
    new-instance v0, Lapi;

    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->D:Laph$b;

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lapi;-><init>(Laph$b;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->E:Laph$a;

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->B:Z

    .line 177
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/high16 v4, -0x3d380000    # -100.0f

    const/4 v9, -0x1

    const-wide/16 v10, 0x5dc

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 155
    .line 1150
    sget v2, Laow$e;->calendar_activity_ding_new_tab_calendar:I

    .line 155
    invoke-virtual {p1, v2, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->I:Landroid/view/View;

    .line 156
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 157
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 158
    const-string/jumbo v2, "calendar_mode"

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 159
    .local v1, "calendarMode":I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 160
    :cond_0
    iput v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->A:I

    .line 1338
    .end local v1    # "calendarMode":I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->I:Landroid/view/View;

    sget v3, Laow$d;->fl_calendar_layout_mode:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->l:Landroid/widget/FrameLayout;

    .line 1339
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->I:Landroid/view/View;

    sget v3, Laow$d;->iv_calendar_layout_mode:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->m:Landroid/widget/ImageView;

    .line 1340
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->I:Landroid/view/View;

    sget v3, Laow$d;->tv_today:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->n:Landroid/widget/TextView;

    .line 1341
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->I:Landroid/view/View;

    sget v3, Laow$d;->v_back_today:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->o:Landroid/view/View;

    .line 1342
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->I:Landroid/view/View;

    sget v3, Laow$d;->ll_diurnal_indicator_up:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->y:Landroid/widget/LinearLayout;

    .line 1343
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->I:Landroid/view/View;

    sget v3, Laow$d;->ll_diurnal_indicator_down:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->z:Landroid/widget/LinearLayout;

    .line 1345
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 1346
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 1348
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->I:Landroid/view/View;

    sget v3, Laow$d;->loading_indicator:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->p:Landroid/widget/ProgressBar;

    .line 1349
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->I:Landroid/view/View;

    sget v3, Laow$d;->layout_calendar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    iput-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    .line 1350
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->I:Landroid/view/View;

    sget v3, Laow$d;->calendar_month_pager:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    iput-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    .line 1351
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->I:Landroid/view/View;

    sget v3, Laow$d;->calendar_week_pager:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    iput-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    .line 1352
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->I:Landroid/view/View;

    sget v3, Laow$d;->calendar_day_events_pager:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    iput-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    .line 1354
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->I:Landroid/view/View;

    sget v3, Laow$d;->swipe_layout_ding_list:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 1355
    sget v2, Lcjj;->l:I

    .line 1356
    iget-object v3, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v4, 0x4

    new-array v4, v4, [I

    sget v5, Laow$a;->swipe_refresh_color1:I

    aput v5, v4, v8

    const/4 v5, 0x1

    sget v6, Laow$a;->swipe_refresh_color2:I

    aput v6, v4, v5

    sget v5, Laow$a;->swipe_refresh_color1:I

    aput v5, v4, v7

    const/4 v5, 0x3

    sget v6, Laow$a;->swipe_refresh_color2:I

    aput v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 1357
    iget-object v3, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    sget v4, Lcjj;->i:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v8, v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(ZII)V

    .line 1358
    iget-object v3, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    new-instance v2, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$18;

    invoke-direct {v2, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$18;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    const-class v4, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    .line 1364
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 1358
    invoke-static {v2, v4, v5}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;)V

    .line 1366
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->I:Landroid/view/View;

    sget v3, Laow$d;->calendar_list_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 1367
    new-instance v2, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$19;

    invoke-direct {v2, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$19;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    .line 1381
    iget-object v3, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1383
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->c(Landroid/content/Context;)Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->w:Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

    .line 1384
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->w:Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

    if-eqz v2, :cond_2

    .line 1385
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v3, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->w:Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addFooterView(Landroid/view/View;)V

    .line 1388
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->I:Landroid/view/View;

    new-instance v3, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$20;

    invoke-direct {v3, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$20;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1399
    new-array v2, v7, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->F:Landroid/animation/ValueAnimator;

    .line 1400
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->F:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$21;

    invoke-direct {v3, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$21;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1408
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1409
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->F:Landroid/animation/ValueAnimator;

    new-instance v3, Lapf;

    invoke-direct {v3}, Lapf;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1410
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1411
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 1413
    new-array v2, v7, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->M:Landroid/animation/ValueAnimator;

    .line 1414
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->M:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$22;

    invoke-direct {v3, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$22;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1422
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->M:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1423
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->M:Landroid/animation/ValueAnimator;

    new-instance v3, Lapf;

    invoke-direct {v3}, Lapf;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1424
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->M:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1425
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->M:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 1427
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->y:Landroid/widget/LinearLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v7, [F

    fill-array-data v4, :array_2

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->N:Landroid/animation/ObjectAnimator;

    .line 1428
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->N:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1430
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->z:Landroid/widget/LinearLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v7, [F

    fill-array-data v4, :array_3

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->O:Landroid/animation/ObjectAnimator;

    .line 1431
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->O:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1438
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v3, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$23;

    invoke-direct {v3, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$23;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1454
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v3, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$2;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1466
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->o:Landroid/view/View;

    new-instance v3, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$3;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1476
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->l:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$4;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1484
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    new-instance v3, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$5;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->setCalendarLayoutListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;)V

    .line 1515
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    new-instance v3, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$6;

    invoke-direct {v3, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$6;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->setCalendarLayoutDelegate(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$a;)V

    .line 1536
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    new-instance v3, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$7;

    invoke-direct {v3, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$7;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->setOnItemSelectListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;)V

    .line 1549
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    new-instance v3, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$8;

    invoke-direct {v3, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$8;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->setOnPageChangePreLoadListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager$a;)V

    .line 1562
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    new-instance v3, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$9;

    invoke-direct {v3, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$9;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setOnItemSelectListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;)V

    .line 1575
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    new-instance v3, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$10;

    invoke-direct {v3, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$10;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setOnPageChangePreLoadListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$a;)V

    .line 1588
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    new-instance v3, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$11;

    invoke-direct {v3, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$11;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->setCalendarDayEventsListener(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$a;)V

    .line 1598
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    new-instance v3, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;

    invoke-direct {v3, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$13;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->setViewPagerOnShowViewChangeListener(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$f;)V

    .line 1643
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    new-instance v3, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$14;

    invoke-direct {v3, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$14;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->setOnAllDayEventsListener(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$d;)V

    .line 1658
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    new-instance v3, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$15;

    invoke-direct {v3, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$15;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->setViewPagerOnHour12Or24ChangeListener(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$e;)V

    .line 1672
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    new-instance v3, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$16;

    invoke-direct {v3, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$16;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->setRequestCreateListener(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$b;)V

    .line 168
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->I:Landroid/view/View;

    return-object v2

    .line 162
    .restart local v1    # "calendarMode":I
    :cond_3
    iput v8, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->A:I

    goto/16 :goto_0

    .line 1399
    .line 1413
    .line 1427
    .line 1430
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 251
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->E:Laph$a;

    invoke-interface {v0}, Laph$a;->b()V

    .line 252
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->k:Laun;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->k:Laun;

    .line 3536
    iget-object v1, v0, Laun;->a:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v0, v0, Laun;->O:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 255
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->onDestroy()V

    .line 256
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->onResume()V

    .line 244
    iget-boolean v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->C:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->f()V

    .line 247
    :cond_0
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 150
    sget v0, Laow$e;->calendar_activity_ding_new_tab_calendar:I

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 2
    .param p1, "isVisibleToUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->setUserVisibleHint(Z)V

    .line 217
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->B:Z

    if-eqz v0, :cond_1

    .line 219
    iget-boolean v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->C:Z

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->E:Laph$a;

    invoke-interface {v0}, Laph$a;->a()V

    .line 221
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->E:Laph$a;

    invoke-interface {v1}, Laph$a;->c()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b(Ljava/util/Calendar;)V

    .line 222
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->t:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    new-instance v1, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$12;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$12;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->setDayEventsDelegate(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$c;)V

    .line 234
    iget v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->A:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->a(I)V

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->C:Z

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->f()V

    .line 239
    :cond_1
    return-void
.end method
