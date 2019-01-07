.class public Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;
.super Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;
.source "CalendarFragmentImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Laph$b;

.field private C:Laph$a;

.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/view/View;

.field private l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private m:Landroid/widget/ProgressBar;

.field private n:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

.field private o:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

.field private p:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

.field private q:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

.field private r:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private s:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private t:Landroid/widget/LinearLayout;

.field private u:Lcom/alibaba/android/ding/base/objects/IDingAdsView;

.field private v:Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

.field private w:Lawn;

.field private x:Landroid/view/View;

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;-><init>()V

    .line 90
    invoke-static {}, Lauo;->a()Lauo;

    invoke-static {}, Lauo;->b()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->y:I

    .line 503
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Laph$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->C:Laph$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;Lawn;)Lawn;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;
    .param p1, "x1"    # Lawn;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->w:Lawn;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;Lcom/alibaba/android/ding/base/objects/IDingAdsView;)Lcom/alibaba/android/ding/base/objects/IDingAdsView;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/IDingAdsView;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->u:Lcom/alibaba/android/ding/base/objects/IDingAdsView;

    return-object p1
.end method

.method private a(I)V
    .locals 4
    .param p1, "calendarMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 484
    iput p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->y:I

    .line 485
    invoke-static {}, Lauo;->a()Lauo;

    invoke-static {p1}, Lauo;->a(I)V

    .line 486
    iget v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->y:I

    if-nez v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laow$f;->icon_workmore:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->q:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->q:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->C:Laph$a;

    invoke-interface {v1}, Laph$a;->c()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->a(Ljava/util/Calendar;)V

    .line 501
    :goto_0
    return-void

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_2

    .line 495
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laow$f;->icon_calendar:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->q:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->C:Laph$a;

    invoke-interface {v0}, Laph$a;->f()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 58
    .line 2476
    iget v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->y:I

    if-nez v0, :cond_0

    .line 2477
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->a(I)V

    :goto_0
    return-void

    .line 2479
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->a(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->x:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->g()V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lawn;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->w:Lawn;

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

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->C:Laph$a;

    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->C:Laph$a;

    invoke-interface {v1}, Laph$a;->c()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lckq;->a(Ljava/util/Calendar;)Lckq;

    move-result-object v1

    invoke-interface {v0, v1}, Laph$a;->d(Lckq;)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->C:Laph$a;

    invoke-interface {v0}, Laph$a;->d()V

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->C:Laph$a;

    invoke-interface {v0}, Laph$a;->e()V

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->C:Laph$a;

    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->C:Laph$a;

    invoke-interface {v1}, Laph$a;->c()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lckq;->a(Ljava/util/Calendar;)Lckq;

    move-result-object v1

    invoke-interface {v0, v1}, Laph$a;->c(Lckq;)V

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->C:Laph$a;

    invoke-interface {v0}, Laph$a;->c()Ljava/util/Calendar;

    move-result-object v0

    .line 2245
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->a:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 2249
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 2250
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2253
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 2254
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2257
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v1, :cond_2

    .line 2258
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2261
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 2262
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2265
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->c:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    .line 2266
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2269
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v1, :cond_5

    .line 2270
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2273
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->j:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_6

    .line 2274
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2277
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v1, :cond_7

    .line 2278
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2281
    :cond_7
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->B:Laph$b;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    invoke-interface {v2, v0, v1}, Laph$b;->a(J)V

    .line 143
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->B:Laph$b;

    invoke-interface {v0}, Laph$b;->i()V

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->B:Laph$b;

    invoke-interface {v0}, Laph$b;->j()V

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->C:Laph$a;

    invoke-interface {v0}, Laph$a;->g()V

    .line 148
    return-void

    .line 2281
    :cond_9
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method private g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->x:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->x:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 58
    iget v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->y:I

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->q:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->m:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->t:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/ding/base/objects/IDingAdsView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->u:Lcom/alibaba/android/ding/base/objects/IDingAdsView;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->v:Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic F_()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 58
    .line 2291
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 58
    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 198
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->a:Landroid/view/View;

    .line 199
    sget v0, Laow$d;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->b:Landroid/widget/TextView;

    .line 200
    sget v0, Laow$d;->ll_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->c:Landroid/widget/LinearLayout;

    .line 201
    sget v0, Laow$d;->tv_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->d:Landroid/widget/TextView;

    .line 202
    sget v0, Laow$d;->iv_date_arrow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 203
    sget v0, Laow$d;->tv_cancel_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->f:Landroid/widget/TextView;

    .line 204
    sget v0, Laow$d;->iv_clear:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 205
    sget v0, Laow$d;->tv_delete_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->h:Landroid/widget/TextView;

    .line 207
    sget v0, Laow$d;->iv_calendar_mode:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 208
    sget v0, Laow$d;->rl_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->j:Landroid/widget/RelativeLayout;

    .line 209
    sget v0, Laow$d;->v_setting_red_dot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->k:Landroid/view/View;

    .line 211
    sget v0, Laow$d;->iv_search:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 213
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v1, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$8;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->j:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$9;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$10;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public final b()Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    return-object v0
.end method

.method public final b(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 296
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->x:Landroid/view/View;

    .line 297
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->x:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->x:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$11;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$11;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    :cond_0
    return-void
.end method

.method public final c()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->C:Laph$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->C:Laph$a;

    invoke-interface {v0}, Laph$a;->c()Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    .line 125
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->C:Laph$a;

    invoke-interface {v0}, Laph$a;->c()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 115
    new-instance v0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$a;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;B)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->B:Laph$b;

    .line 116
    new-instance v0, Lapi;

    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->B:Laph$b;

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lapi;-><init>(Laph$b;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->C:Laph$a;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->z:Z

    .line 118
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 106
    .line 1101
    sget v0, Laow$e;->calendar_activity_ding_calendar:I

    .line 106
    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->I:Landroid/view/View;

    .line 1318
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->I:Landroid/view/View;

    sget v1, Laow$d;->loading_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->m:Landroid/widget/ProgressBar;

    .line 1319
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->I:Landroid/view/View;

    sget v1, Laow$d;->layout_calendar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    .line 1320
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->I:Landroid/view/View;

    sget v1, Laow$d;->calendar_month_pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    .line 1321
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->I:Landroid/view/View;

    sget v1, Laow$d;->calendar_week_pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    .line 1322
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->I:Landroid/view/View;

    sget v1, Laow$d;->calendar_day_events_pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->q:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    .line 1324
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->I:Landroid/view/View;

    sget v1, Laow$d;->swipe_layout_ding_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 1325
    sget v0, Lcjj;->l:I

    .line 1326
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v2, 0x4

    new-array v2, v2, [I

    sget v3, Laow$a;->swipe_refresh_color1:I

    aput v3, v2, v5

    sget v3, Laow$a;->swipe_refresh_color2:I

    aput v3, v2, v6

    const/4 v3, 0x2

    sget v4, Laow$a;->swipe_refresh_color1:I

    aput v4, v2, v3

    const/4 v3, 0x3

    sget v4, Laow$a;->swipe_refresh_color2:I

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 1327
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    sget v2, Lcjj;->i:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v5, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(ZII)V

    .line 1328
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    new-instance v0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$12;

    invoke-direct {v0, p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$12;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V

    const-class v2, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    .line 1333
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 1328
    invoke-static {v0, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;)V

    .line 1335
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1337
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1340
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->I:Landroid/view/View;

    sget v1, Laow$d;->calendar_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 1342
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->t:Landroid/widget/LinearLayout;

    .line 1343
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1344
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1345
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->t:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1346
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1347
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addHeaderView(Landroid/view/View;)V

    .line 1349
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->c(Landroid/content/Context;)Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->v:Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

    .line 1350
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->v:Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

    if-eqz v0, :cond_1

    .line 1351
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->v:Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addFooterView(Landroid/view/View;)V

    .line 1359
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v1, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$13;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$13;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1371
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v1, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$14;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$14;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1382
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    new-instance v1, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$15;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->setCalendarLayoutListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$b;)V

    .line 1408
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;

    new-instance v1, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$2;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout;->setCalendarLayoutDelegate(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$a;)V

    .line 1427
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    new-instance v1, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$3;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->setOnItemSelectListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;)V

    .line 1436
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;

    new-instance v1, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$4;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager;->setOnPageChangePreLoadListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthViewPager$a;)V

    .line 1446
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    new-instance v1, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$5;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setOnItemSelectListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;)V

    .line 1455
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;

    new-instance v1, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$6;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager;->setOnPageChangePreLoadListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekViewPager$a;)V

    .line 1465
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->q:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    new-instance v1, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$7;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->setCalendarDayEventsListener(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$a;)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->I:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->C:Laph$a;

    invoke-interface {v0}, Laph$a;->b()V

    .line 189
    invoke-super {p0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->onDestroy()V

    .line 190
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->onResume()V

    .line 181
    iget-boolean v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->A:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->f()V

    .line 184
    :cond_0
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 101
    sget v0, Laow$e;->calendar_activity_ding_calendar:I

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 2
    .param p1, "isVisibleToUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->setUserVisibleHint(Z)V

    .line 153
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->z:Z

    if-eqz v0, :cond_1

    .line 155
    iget-boolean v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->A:Z

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->C:Laph$a;

    invoke-interface {v0}, Laph$a;->a()V

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->q:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->C:Laph$a;

    invoke-interface {v1}, Laph$a;->c()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b(Ljava/util/Calendar;)V

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->q:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    new-instance v1, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$1;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->setDayEventsDelegate(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$c;)V

    .line 169
    iget v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->y:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->a(I)V

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->A:Z

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->f()V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->g()V

    goto :goto_0
.end method
