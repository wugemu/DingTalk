.class public Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;
.super Lcom/alibaba/android/ding/base/objects/DingTabFragment;
.source "DingTabFragmentImplV3.java"


# instance fields
.field private a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private h:Lbku;

.field private i:I

.field private j:Landroid/widget/FrameLayout;

.field private k:Landroid/widget/FrameLayout;

.field private l:Landroid/widget/FrameLayout;

.field private m:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

.field private n:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

.field private o:Lcom/alibaba/android/ding/v3/DingETaskListFragment;

.field private p:Landroid/view/View;

.field private q:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

.field private r:Landroid/content/BroadcastReceiver;

.field private s:Lbkx;

.field private t:Landroid/view/View$OnTouchListener;

.field private u:Lbkw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/android/ding/base/objects/DingTabFragment;-><init>()V

    .line 99
    new-instance v0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$1;-><init>(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->s:Lbkx;

    .line 588
    new-instance v0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$5;-><init>(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->t:Landroid/view/View$OnTouchListener;

    .line 603
    new-instance v0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$6;-><init>(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->u:Lbkw;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->p:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;
    .param p1, "x1"    # Landroid/widget/FrameLayout;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->b:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;
    .param p1, "x1"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->q:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    return-object p1
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3
    .param p0, "currentFilter"    # I

    .prologue
    .line 563
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_key_sub_filter_ding_selected_index"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-static {p1}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "selectedIndex"    # I
    .param p2, "dingFilterArray"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 567
    if-ltz p1, :cond_0

    array-length v0, p2

    if-lt p1, v0, :cond_1

    .line 568
    :cond_0
    const/4 p1, 0x0

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->f:Landroid/widget/TextView;

    aget-object v1, p2, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->l()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->b(Z)V

    .line 572
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .param p1, "isVisibleToUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->n:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->o:Lcom/alibaba/android/ding/v3/DingETaskListFragment;

    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .line 1312
    iget-object v0, v0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .line 136
    if-nez v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(Landroid/view/View;)V

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->n:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->a(Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->o:Lcom/alibaba/android/ding/v3/DingETaskListFragment;

    .line 2045
    iget-object v0, v0, Lcom/alibaba/android/ding/v3/DingETaskListFragment;->c:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .line 144
    if-nez v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->o:Lcom/alibaba/android/ding/v3/DingETaskListFragment;

    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/v3/DingETaskListFragment;->a(Landroid/view/View;)V

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->n:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->b(Landroid/view/View;)V

    .line 150
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 151
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->n:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->setUserVisibleHint(Z)V

    .line 158
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    if-eqz v0, :cond_5

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->setShown(Z)V

    .line 162
    :cond_5
    if-eqz p1, :cond_9

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->p:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 164
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->p:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->i()V

    goto :goto_0

    .line 152
    :cond_7
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->setUserVisibleHint(Z)V

    goto :goto_1

    .line 154
    :cond_8
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->o:Lcom/alibaba/android/ding/v3/DingETaskListFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/v3/DingETaskListFragment;->setUserVisibleHint(Z)V

    goto :goto_1

    .line 169
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->p:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->p:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2
    .param p1, "isShowDown"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 575
    if-eqz p1, :cond_0

    .line 576
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laxp$i;->icon_act_close:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 580
    :goto_0
    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laxp$i;->icon_act_open:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->n:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->n()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/v3/DingETaskListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->o:Lcom/alibaba/android/ding/v3/DingETaskListFragment;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->i()V

    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lbku;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->h:Lbku;

    return-object v0
.end method

.method private i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 469
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->p()Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    move-result-object v0

    .line 470
    .local v0, "currentTabIndex":Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    sget-object v1, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    if-ne v0, v1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 472
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 473
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 475
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->j()V

    .line 476
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->h:Lbku;

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->h:Lbku;

    invoke-virtual {v1}, Lbku;->a()V

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 481
    sget-object v1, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->TASK:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    if-ne v0, v1, :cond_2

    .line 482
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 483
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 484
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(I)V

    .line 491
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->j()V

    .line 492
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->k()V

    goto :goto_0

    .line 486
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 487
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 488
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(I)V

    goto :goto_1
.end method

.method private j()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 499
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->n()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 500
    iget-object v3, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 526
    :goto_0
    return-void

    .line 504
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 505
    iget-object v3, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 508
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->p()Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    move-result-object v2

    .line 509
    .local v2, "tabIndex":Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    invoke-virtual {v2}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->getValue()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v1

    .line 510
    .local v1, "selectedSubFilterIndex":I
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 511
    .local v0, "res":Landroid/content/res/Resources;
    sget-object v3, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$7;->a:[I

    invoke-virtual {v2}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 513
    :pswitch_0
    iget-object v3, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 514
    sget v3, Laxp$b;->ding_dt_ding_sub_filter:I

    .line 515
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 514
    invoke-direct {p0, v1, v3}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a(I[Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :pswitch_1
    iget-object v3, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 519
    sget v3, Laxp$b;->ding_dt_task_sub_filter:I

    .line 520
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 519
    invoke-direct {p0, v1, v3}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a(I[Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic j(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->k()V

    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private k()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 529
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->F_()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->F_()Landroid/widget/ListView;

    move-result-object v8

    .line 531
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 532
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v7, 0x0

    move v6, v5

    .line 531
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 530
    invoke-virtual {v8, v0}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 537
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 555
    :cond_1
    :goto_0
    return-void

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->h:Lbku;

    if-nez v0, :cond_3

    .line 542
    new-instance v0, Lbku;

    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->u:Lbkw;

    invoke-direct {v0, v1}, Lbku;-><init>(Lbkw;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->h:Lbku;

    .line 545
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->b:Landroid/widget/FrameLayout;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 546
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->b:Landroid/widget/FrameLayout;

    .line 549
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 553
    iget-object v3, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->h:Lbku;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->b:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->p()Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    move-result-object v6

    .line 4634
    iget v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->i:I

    if-nez v0, :cond_6

    .line 4635
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getY()F

    move-result v0

    .line 4636
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move v2, v0

    .line 4637
    :goto_1
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->b:Landroid/widget/FrameLayout;

    if-eq v1, v0, :cond_5

    move-object v0, v1

    .line 4638
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getY()F

    move-result v0

    add-float/2addr v0, v2

    .line 4639
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move v2, v0

    goto :goto_1

    .line 4641
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->i:I

    .line 4643
    :cond_6
    iget v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->i:I

    .line 553
    invoke-virtual {v3, v4, v5, v6, v0}, Lbku;->a(Landroid/app/Activity;Landroid/view/ViewManager;Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;I)V

    .line 554
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->b(Z)V

    goto/16 :goto_0
.end method

.method static synthetic l(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->p:Landroid/view/View;

    return-object v0
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->h:Lbku;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->h:Lbku;

    invoke-virtual {v0}, Lbku;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic m(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->q:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    return-object v0
.end method

.method private m()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->p()Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic n(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    .line 63
    return-void
.end method

.method private n()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 651
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->p()Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->TASK:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic o(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)J
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    const/16 v7, 0xe

    const/16 v6, 0xd

    const/16 v5, 0xb

    const/16 v4, 0xc

    .line 63
    .line 5340
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 5341
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->n:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 5343
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 5344
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 5346
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 5347
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 5348
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 5349
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 5351
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 5352
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x3c

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 5355
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 63
    return-wide v0
.end method

.method private o()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 655
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->p()Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->DING:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    if-nez v0, :cond_0

    .line 661
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 664
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->getCurrentDingNewTabIndex()Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic p(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/widget/DingNewTabActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    .line 63
    .line 5583
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5584
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->h:Lbku;

    invoke-virtual {v0}, Lbku;->a()V

    .line 63
    :cond_0
    return-void
.end method

.method static synthetic r(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->p()Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 392
    instance-of v0, p1, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    if-eqz v0, :cond_2

    .line 393
    check-cast p1, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .end local p1    # "view":Landroid/view/View;
    iput-object p1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .line 395
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->s:Lbkx;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->setOnTabItemChangedListener(Lbkx;)V

    .line 397
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .line 3312
    iget-object v0, v0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .line 397
    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(Landroid/view/View;)V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->n:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->n:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->a(Landroid/view/View;)V

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->o:Lcom/alibaba/android/ding/v3/DingETaskListFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->o:Lcom/alibaba/android/ding/v3/DingETaskListFragment;

    .line 4045
    iget-object v0, v0, Lcom/alibaba/android/ding/v3/DingETaskListFragment;->c:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .line 403
    if-nez v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->o:Lcom/alibaba/android/ding/v3/DingETaskListFragment;

    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/v3/DingETaskListFragment;->a(Landroid/view/View;)V

    .line 407
    :cond_2
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-object v2, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->getTotalUnReadCount()I

    move-result v0

    .line 367
    .local v0, "totalUnReadCount":I
    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Lbjz;->a(Z)V

    .line 368
    return-void

    .end local v0    # "totalUnReadCount":I
    :cond_1
    move v0, v1

    .line 366
    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->d()V

    .line 377
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->n()Z

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 381
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "DingListFragment"

    const-string/jumbo v2, "tab_ding_quickding_click"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 382
    new-instance v0, Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/ding/widget/QuickDingDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->show()V

    .line 383
    return-void
.end method

.method public final f()Landroid/view/View;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    const/4 v0, 0x1

    .line 417
    :goto_0
    return v0

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->n()Z

    .line 417
    invoke-super {p0}, Lcom/alibaba/android/ding/base/objects/DingTabFragment;->h()Z

    move-result v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 227
    invoke-super {p0, p1}, Lcom/alibaba/android/ding/base/objects/DingTabFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2421
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->r:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 2422
    new-instance v0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$4;-><init>(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->r:Landroid/content/BroadcastReceiver;

    .line 2451
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2452
    const-string/jumbo v1, "com.workapp.ding.filter.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2453
    const-string/jumbo v1, "action_set_current_filter"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2454
    const-string/jumbo v1, "com.workapp.ding.new.tab.focus.and.recycle.hide.tips"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2455
    const-string/jumbo v1, "com.workapp.ding.focus.and.recycle.hide.tips"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2456
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 230
    :cond_0
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    invoke-virtual {v0}, Lbbp;->c()V

    .line 231
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    invoke-virtual {v0}, Lbbp;->b()V

    .line 233
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->c:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;-><init>(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 337
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 181
    .line 2122
    sget v1, Laxp$g;->ding_fragment_ding_tab_v3:I

    .line 181
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->c:Landroid/view/View;

    .line 183
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->c:Landroid/view/View;

    sget v2, Laxp$f;->icl_today_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->d:Landroid/view/View;

    .line 186
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->c:Landroid/view/View;

    sget v2, Laxp$f;->ll_sub_filter_title_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->e:Landroid/widget/LinearLayout;

    .line 187
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->c:Landroid/view/View;

    sget v2, Laxp$f;->tv_sub_filter_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->f:Landroid/widget/TextView;

    .line 188
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->c:Landroid/view/View;

    sget v2, Laxp$f;->iv_sub_filter_arrow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 189
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->e:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$2;-><init>(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->t:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->c:Landroid/view/View;

    sget v2, Laxp$f;->fl_ding:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->j:Landroid/widget/FrameLayout;

    .line 208
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->c:Landroid/view/View;

    sget v2, Laxp$f;->fl_calendar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->k:Landroid/widget/FrameLayout;

    .line 209
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->c:Landroid/view/View;

    sget v2, Laxp$f;->fl_task:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->l:Landroid/widget/FrameLayout;

    .line 211
    new-instance v1, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-direct {v1}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .line 212
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->c()Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->n:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    .line 213
    new-instance v1, Lcom/alibaba/android/ding/v3/DingETaskListFragment;

    invoke-direct {v1}, Lcom/alibaba/android/ding/v3/DingETaskListFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->o:Lcom/alibaba/android/ding/v3/DingETaskListFragment;

    .line 215
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->n:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->setArguments(Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getChildFragmentManager()Lcn;

    move-result-object v1

    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 217
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    sget v1, Laxp$f;->fl_ding:I

    iget-object v2, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 218
    sget v1, Laxp$f;->fl_calendar:I

    iget-object v2, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->n:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 219
    sget v1, Laxp$f;->fl_task:I

    iget-object v2, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->o:Lcom/alibaba/android/ding/v3/DingETaskListFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 220
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 222
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->c:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 360
    .line 2461
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->r:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2462
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->r:Landroid/content/BroadcastReceiver;

    .line 361
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/ding/base/objects/DingTabFragment;->onDestroy()V

    .line 362
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 122
    sget v0, Laxp$g;->ding_fragment_ding_tab_v3:I

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 0
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/alibaba/android/ding/base/objects/DingTabFragment;->setUserVisibleHint(Z)V

    .line 128
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a(Z)V

    .line 129
    return-void
.end method
