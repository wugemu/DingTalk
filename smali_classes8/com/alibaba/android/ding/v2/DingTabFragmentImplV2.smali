.class public Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;
.super Lcom/alibaba/android/ding/base/objects/DingTabFragment;
.source "DingTabFragmentImplV2.java"


# instance fields
.field private a:Lcom/alibaba/android/ding/widget/DingTabActionBar;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/HorizontalScrollView;

.field private f:Lcom/alibaba/android/ding/widget/DingFilterManager;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private j:Landroid/widget/FrameLayout;

.field private k:Lbkt;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/FrameLayout;

.field private n:Landroid/widget/FrameLayout;

.field private o:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

.field private p:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

.field private q:I

.field private r:Landroid/view/View;

.field private s:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

.field private t:Landroid/content/BroadcastReceiver;

.field private u:I

.field private v:I

.field private w:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/view/View$OnTouchListener;

.field private z:Lbkw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/alibaba/android/ding/base/objects/DingTabFragment;-><init>()V

    .line 108
    new-instance v0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$1;-><init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->w:Lckm$a;

    .line 122
    new-instance v0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$3;-><init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->x:Lckm$a;

    .line 628
    new-instance v0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$9;-><init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->y:Landroid/view/View$OnTouchListener;

    .line 643
    new-instance v0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$10;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$10;-><init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->z:Lbkw;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .prologue
    .line 67
    iget v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->u:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->u:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->r:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;
    .param p1, "x1"    # Landroid/widget/FrameLayout;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->j:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;
    .param p1, "x1"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->s:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    return-object p1
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3
    .param p0, "currentFilter"    # I

    .prologue
    .line 603
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

.method private a(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "selectedIndex"    # I
    .param p2, "dingFilterArray"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 607
    if-ltz p1, :cond_0

    array-length v0, p2

    if-lt p1, v0, :cond_1

    .line 608
    :cond_0
    const/4 p1, 0x0

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->h:Landroid/widget/TextView;

    aget-object v1, p2, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->l()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->b(Z)V

    .line 612
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3
    .param p1, "isVisibleToUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->f:Lcom/alibaba/android/ding/widget/DingFilterManager;

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->o:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .line 1362
    iget-object v0, v0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a:Landroid/view/View;

    .line 154
    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->o:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->a:Lcom/alibaba/android/ding/widget/DingTabActionBar;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Landroid/view/View;)V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->p:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->a:Lcom/alibaba/android/ding/widget/DingTabActionBar;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->a(Landroid/view/View;)V

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->p:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->b(Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->f:Lcom/alibaba/android/ding/widget/DingFilterManager;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingFilterManager;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->p:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->setUserVisibleHint(Z)V

    .line 168
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->r:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 169
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->r:Landroid/view/View;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->s:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->s:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Z)V

    .line 176
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->i()V

    goto :goto_0

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->o:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->setUserVisibleHint(Z)V

    goto :goto_1

    .line 169
    :cond_5
    const/16 v0, 0x8

    goto :goto_2
.end method

.method static synthetic b(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->v:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    .line 13701
    iget v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->v:I

    iget v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->u:I

    add-int/2addr v0, v1

    .line 13702
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "dingTabFragment updateNotifyCount totalCount="

    aput-object v2, v1, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, ", mTotalUnReadCount="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->v:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", mTotalCommentRemindCount="

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->u:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 13703
    if-gtz v0, :cond_0

    .line 13704
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    .line 13706
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->c:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 13707
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->d:Landroid/widget/TextView;

    sget v2, Laxp$i;->dt_ding_notice_count:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Lbkh;->g(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2
    .param p1, "isShowDown"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 615
    if-eqz p1, :cond_0

    .line 616
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laxp$i;->icon_act_close:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 620
    :goto_0
    return-void

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laxp$i;->icon_act_open:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .prologue
    .line 67
    iget v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->v:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-static {p1}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lcom/alibaba/android/ding/widget/DingFilterManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->f:Lcom/alibaba/android/ding/widget/DingFilterManager;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->p:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->o:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lbkt;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k:Lbkt;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k()V

    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->j:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private j()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 540
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->n()Z

    move-result v2

    if-nez v2, :cond_0

    .line 543
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->f:Lcom/alibaba/android/ding/widget/DingFilterManager;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/DingFilterManager;->c()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v1

    .line 544
    .local v1, "selectedSubFilterIndex":I
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 545
    .local v0, "res":Landroid/content/res/Resources;
    sget-object v2, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$2;->a:[I

    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->f:Lcom/alibaba/android/ding/widget/DingFilterManager;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/widget/DingFilterManager;->a()Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 571
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "selectedSubFilterIndex":I
    :goto_0
    return-void

    .line 547
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v1    # "selectedSubFilterIndex":I
    :pswitch_0
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 548
    sget v2, Laxp$b;->ding_dt_ding_sub_filter:I

    .line 549
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 548
    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->a(I[Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 553
    sget v2, Laxp$b;->ding_dt_task_sub_filter:I

    .line 554
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 553
    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->a(I[Ljava/lang/String;)V

    goto :goto_0

    .line 557
    :pswitch_2
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 558
    sget v2, Laxp$b;->ding_dt_meeting_sub_filter:I

    .line 559
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 558
    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->a(I[Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :pswitch_3
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 565
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "selectedSubFilterIndex":I
    :cond_0
    :pswitch_4
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic k(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->r:Landroid/view/View;

    return-object v0
.end method

.method private k()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 574
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->o:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->F_()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->o:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->F_()Landroid/widget/ListView;

    move-result-object v8

    .line 576
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 577
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move v6, v5

    .line 576
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 575
    invoke-virtual {v8, v0}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k:Lbkt;

    if-nez v0, :cond_1

    .line 583
    new-instance v0, Lbkt;

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->z:Lbkw;

    invoke-direct {v0, v1}, Lbkt;-><init>(Lbkw;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k:Lbkt;

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->j:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 587
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->j:Landroid/widget/FrameLayout;

    .line 590
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->j:Landroid/widget/FrameLayout;

    if-nez v0, :cond_3

    .line 596
    :goto_0
    return-void

    .line 594
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k:Lbkt;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->j:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->f:Lcom/alibaba/android/ding/widget/DingFilterManager;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingFilterManager;->c()I

    move-result v8

    .line 11674
    iget v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->q:I

    if-nez v0, :cond_5

    .line 11675
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getY()F

    move-result v0

    .line 11676
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move v2, v0

    .line 11677
    :goto_1
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->j:Landroid/widget/FrameLayout;

    if-eq v1, v0, :cond_4

    move-object v0, v1

    .line 11678
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getY()F

    move-result v0

    add-float/2addr v0, v2

    .line 11679
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move v2, v0

    goto :goto_1

    .line 11681
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->q:I

    .line 11683
    :cond_5
    iget v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->q:I

    .line 12037
    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    const/4 v0, 0x7

    if-eq v8, v0, :cond_7

    if-eq v8, v4, :cond_7

    const/4 v0, 0x5

    if-eq v8, v0, :cond_7

    .line 595
    :cond_6
    :goto_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->b(Z)V

    goto :goto_0

    .line 12044
    :cond_7
    iget-object v0, v3, Lbkt;->b:Landroid/view/View;

    if-nez v0, :cond_8

    .line 12045
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Laxp$g;->ding_layout_ding_sub_filter_drop_down:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v3, Lbkt;->b:Landroid/view/View;

    .line 12046
    iget-object v0, v3, Lbkt;->b:Landroid/view/View;

    new-instance v2, Lbkt$1;

    invoke-direct {v2, v3}, Lbkt$1;-><init>(Lbkt;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12054
    new-instance v0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;

    invoke-direct {v0, v5}, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lbkt;->c:Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;

    .line 12055
    iget-object v0, v3, Lbkt;->c:Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;

    iget-object v2, v3, Lbkt;->a:Lbkw;

    .line 13050
    iput-object v2, v0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;->a:Lbkw;

    .line 12056
    iget-object v0, v3, Lbkt;->b:Landroid/view/View;

    sget v2, Laxp$f;->listview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 12057
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 12058
    iget-object v4, v3, Lbkt;->b:Landroid/view/View;

    invoke-interface {v6, v4, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12059
    iget-object v2, v3, Lbkt;->c:Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 12062
    :cond_8
    iget-object v0, v3, Lbkt;->c:Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;

    invoke-static {v5, v8}, Lbkt;->a(Landroid/app/Activity;I)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;->a(Ljava/util/Collection;)V

    .line 12063
    iget-object v0, v3, Lbkt;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 12064
    iget-object v0, v3, Lbkt;->b:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 12065
    iget-object v0, v3, Lbkt;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_2
.end method

.method static synthetic l(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->s:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    return-object v0
.end method

.method private l()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 599
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k:Lbkt;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k:Lbkt;

    .line 13076
    iget-object v3, v2, Lbkt;->b:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lbkt;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 599
    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 13076
    goto :goto_0

    :cond_1
    move v0, v1

    .line 599
    goto :goto_1
.end method

.method static synthetic m(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)J
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .prologue
    const/16 v7, 0xe

    const/16 v6, 0xd

    const/16 v5, 0xb

    const/16 v4, 0xc

    .line 67
    .line 14368
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 14369
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->p:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 14371
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 14372
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 14374
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 14375
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 14376
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 14377
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 14379
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 14380
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x3c

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 14383
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 67
    return-wide v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k:Lbkt;

    invoke-virtual {v0}, Lbkt;->a()V

    .line 626
    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->j()V

    return-void
.end method

.method private n()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 687
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->f:Lcom/alibaba/android/ding/widget/DingFilterManager;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingFilterManager;->a()Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->CALENDAR:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic o(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->m()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 422
    instance-of v0, p1, Lcom/alibaba/android/ding/widget/DingTabActionBar;

    if-eqz v0, :cond_1

    .line 423
    check-cast p1, Lcom/alibaba/android/ding/widget/DingTabActionBar;

    .end local p1    # "view":Landroid/view/View;
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->a:Lcom/alibaba/android/ding/widget/DingTabActionBar;

    .line 424
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->o:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->o:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .line 10362
    iget-object v0, v0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a:Landroid/view/View;

    .line 424
    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->o:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->a:Lcom/alibaba/android/ding/widget/DingTabActionBar;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Landroid/view/View;)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->p:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->p:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->a:Lcom/alibaba/android/ding/widget/DingTabActionBar;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->a(Landroid/view/View;)V

    .line 431
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->v:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lbjz;->a(Z)V

    .line 400
    return-void

    .line 399
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 404
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->n()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->o:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    if-eqz v1, :cond_5

    .line 405
    iget-object v6, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->o:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .line 9315
    iget-boolean v1, v6, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->d:Z

    if-eqz v1, :cond_5

    iget-object v1, v6, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    if-eqz v1, :cond_5

    .line 9316
    const/4 v3, -0x1

    .line 9806
    iget-object v1, v6, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->c:Laxs;

    if-nez v1, :cond_0

    .line 9807
    const/4 v1, 0x0

    move-object v5, v1

    .line 9318
    :goto_0
    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 9320
    iget-object v1, v6, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getLastVisiblePosition()I

    move-result v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_9

    .line 9321
    iget-object v1, v6, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v2, v6, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9323
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, v6, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xf

    if-ge v1, v2, :cond_9

    .line 9324
    const/4 v1, 0x1

    .line 9329
    :goto_1
    if-nez v1, :cond_8

    .line 9331
    iget-object v1, v6, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getChildCount()I

    move-result v2

    move v1, v0

    .line 9333
    :goto_2
    if-ge v1, v2, :cond_1

    .line 9334
    iget-object v4, v6, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v4, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 9335
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-gtz v4, :cond_1

    .line 9333
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9809
    :cond_0
    iget-object v1, v6, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->c:Laxs;

    invoke-virtual {v1}, Laxs;->a()Ljava/util/List;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    .line 9339
    :cond_1
    iget-object v2, v6, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getFirstVisiblePosition()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v6, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 9340
    if-gez v1, :cond_2

    move v1, v0

    .line 9344
    :cond_2
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    move v4, v0

    .line 9345
    :goto_4
    if-ge v4, v7, :cond_7

    .line 9346
    add-int v0, v4, v1

    rem-int v2, v0, v7

    .line 9347
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 9348
    if-eqz v0, :cond_6

    .line 9349
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->A()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ag()Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->X()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-lez v0, :cond_6

    :cond_4
    move v0, v2

    .line 9355
    :goto_5
    if-ltz v0, :cond_5

    .line 9356
    iget-object v1, v6, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v2, v6, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lcpc;->a(Landroid/widget/AbsListView;I)V

    .line 407
    :cond_5
    return-void

    .line 9345
    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    :cond_7
    move v0, v3

    goto :goto_5

    :cond_8
    move v1, v0

    goto :goto_3

    :cond_9
    move v1, v0

    goto/16 :goto_1
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 411
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "DingListFragment"

    const-string/jumbo v2, "tab_ding_quickding_click"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 412
    new-instance v0, Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/ding/widget/QuickDingDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->show()V

    .line 413
    return-void
.end method

.method public final f()Landroid/view/View;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->a:Lcom/alibaba/android/ding/widget/DingTabActionBar;

    return-object v0
.end method

.method public final h()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 435
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->m()V

    .line 446
    :cond_0
    :goto_0
    return v0

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->s:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->s:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .line 10607
    iget-boolean v1, v1, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a:Z

    .line 439
    if-eqz v1, :cond_2

    .line 440
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->s:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Z)V

    goto :goto_0

    .line 443
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->o:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->o:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .line 11239
    iget v2, v1, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->e:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 11240
    invoke-virtual {v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->d()V

    move v1, v0

    .line 443
    :goto_1
    if-nez v1, :cond_0

    .line 446
    :cond_3
    invoke-super {p0}, Lcom/alibaba/android/ding/base/objects/DingTabFragment;->h()Z

    move-result v0

    goto :goto_0

    .line 11244
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 480
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->f:Lcom/alibaba/android/ding/widget/DingFilterManager;

    if-nez v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 486
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->j()V

    .line 487
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k:Lbkt;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k:Lbkt;

    invoke-virtual {v0}, Lbkt;->a()V

    goto :goto_0

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 493
    sget-object v0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$2;->a:[I

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->f:Lcom/alibaba/android/ding/widget/DingFilterManager;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/DingFilterManager;->a()Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 530
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->j()V

    .line 531
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k:Lbkt;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k:Lbkt;

    invoke-virtual {v0}, Lbkt;->a()V

    goto :goto_0

    .line 495
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->o:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(I)V

    .line 496
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->j()V

    .line 497
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k()V

    goto :goto_0

    .line 502
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->o:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(I)V

    .line 503
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->j()V

    .line 504
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k()V

    goto :goto_0

    .line 509
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->o:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(I)V

    .line 510
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->j()V

    .line 511
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k()V

    goto/16 :goto_0

    .line 516
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->o:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(I)V

    .line 517
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->j()V

    .line 518
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k:Lbkt;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k:Lbkt;

    invoke-virtual {v0}, Lbkt;->a()V

    goto/16 :goto_0

    .line 523
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->o:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(I)V

    .line 524
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->j()V

    .line 525
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k:Lbkt;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k:Lbkt;

    invoke-virtual {v0}, Lbkt;->a()V

    goto/16 :goto_0

    .line 493
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 252
    invoke-super {p0, p1}, Lcom/alibaba/android/ding/base/objects/DingTabFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 5691
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->w:Lckm$a;

    invoke-virtual {v0, v1}, Lbbp;->a(Lckm$a;)V

    .line 5692
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->x:Lckm$a;

    invoke-virtual {v0, v1}, Lbbp;->c(Lckm$a;)V

    .line 6450
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->t:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 6451
    new-instance v0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$8;-><init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->t:Landroid/content/BroadcastReceiver;

    .line 6465
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6466
    const-string/jumbo v1, "com.workapp.ding.filter.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6467
    const-string/jumbo v1, "action_set_current_filter"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6468
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 256
    :cond_0
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    invoke-virtual {v0}, Lbbp;->c()V

    .line 257
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    invoke-virtual {v0}, Lbbp;->b()V

    .line 259
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v0

    invoke-virtual {v0}, Lbbl;->b()V

    .line 261
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->b:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;-><init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 365
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v9, -0x2

    const/high16 v7, 0x40c00000    # 6.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 182
    .line 2140
    sget v1, Laxp$g;->ding_fragment_ding_tab_v2:I

    .line 182
    invoke-virtual {p1, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->b:Landroid/view/View;

    .line 184
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->b:Landroid/view/View;

    sget v2, Laxp$f;->rl_notice:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->c:Landroid/view/View;

    .line 185
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->b:Landroid/view/View;

    sget v2, Laxp$f;->tv_notice_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->d:Landroid/widget/TextView;

    .line 186
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->c:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$4;-><init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->b:Landroid/view/View;

    sget v2, Laxp$f;->ding_filter_tab_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->e:Landroid/widget/HorizontalScrollView;

    .line 201
    new-instance v1, Lcom/alibaba/android/ding/widget/DingFilterManager;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->e:Landroid/widget/HorizontalScrollView;

    invoke-direct {v1, v2}, Lcom/alibaba/android/ding/widget/DingFilterManager;-><init>(Landroid/widget/HorizontalScrollView;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->f:Lcom/alibaba/android/ding/widget/DingFilterManager;

    .line 202
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->f:Lcom/alibaba/android/ding/widget/DingFilterManager;

    new-instance v2, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$5;-><init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V

    .line 2231
    iput-object v2, v1, Lcom/alibaba/android/ding/widget/DingFilterManager;->f:Lcom/alibaba/android/ding/widget/DingFilterManager$b;

    .line 210
    iget-object v6, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->f:Lcom/alibaba/android/ding/widget/DingFilterManager;

    .line 3061
    iget-object v1, v6, Lcom/alibaba/android/ding/widget/DingFilterManager;->a:Landroid/widget/HorizontalScrollView;

    if-eqz v1, :cond_5

    .line 3064
    iget-object v1, v6, Lcom/alibaba/android/ding/widget/DingFilterManager;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3065
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lcom/alibaba/android/ding/widget/DingFilterManager;->b:Landroid/widget/LinearLayout;

    .line 3066
    iget-object v1, v6, Lcom/alibaba/android/ding/widget/DingFilterManager;->b:Landroid/widget/LinearLayout;

    invoke-static {v4, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v4, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 3067
    iget-object v1, v6, Lcom/alibaba/android/ding/widget/DingFilterManager;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v2, v3

    .line 3068
    :goto_0
    iget-object v1, v6, Lcom/alibaba/android/ding/widget/DingFilterManager;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 3069
    iget-object v1, v6, Lcom/alibaba/android/ding/widget/DingFilterManager;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/widget/DingFilterManager$a;

    .line 3070
    if-eqz v1, :cond_0

    .line 3073
    new-instance v7, Lcom/alibaba/android/ding/widget/DingTabItemView;

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v7, v4}, Lcom/alibaba/android/ding/widget/DingTabItemView;-><init>(Landroid/content/Context;)V

    .line 3074
    invoke-virtual {v7, v2}, Lcom/alibaba/android/ding/widget/DingTabItemView;->setPosition(I)V

    .line 3323
    iget v4, v1, Lcom/alibaba/android/ding/widget/DingFilterManager$a;->b:I

    .line 4056
    iget-object v8, v7, Lcom/alibaba/android/ding/widget/DingTabItemView;->a:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(I)V

    .line 3076
    iget v4, v6, Lcom/alibaba/android/ding/widget/DingFilterManager;->c:I

    if-ne v2, v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Lcom/alibaba/android/ding/widget/DingTabItemView;->a(Z)V

    .line 3077
    iget-object v4, v6, Lcom/alibaba/android/ding/widget/DingFilterManager;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3078
    iget-object v4, v6, Lcom/alibaba/android/ding/widget/DingFilterManager;->e:Ljava/util/Map;

    .line 4319
    iget-object v8, v1, Lcom/alibaba/android/ding/widget/DingFilterManager$a;->a:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 3078
    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3079
    new-instance v4, Lcom/alibaba/android/ding/widget/DingFilterManager$2;

    invoke-direct {v4, v6, v7, v1}, Lcom/alibaba/android/ding/widget/DingFilterManager$2;-><init>(Lcom/alibaba/android/ding/widget/DingFilterManager;Lcom/alibaba/android/ding/widget/DingTabItemView;Lcom/alibaba/android/ding/widget/DingFilterManager$a;)V

    invoke-virtual {v7, v4}, Lcom/alibaba/android/ding/widget/DingTabItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3068
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    move v4, v3

    .line 3076
    goto :goto_1

    .line 3102
    :cond_2
    iget-object v1, v6, Lcom/alibaba/android/ding/widget/DingFilterManager;->a:Landroid/widget/HorizontalScrollView;

    iget-object v2, v6, Lcom/alibaba/android/ding/widget/DingFilterManager;->b:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3103
    iget-object v1, v6, Lcom/alibaba/android/ding/widget/DingFilterManager;->a:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 3105
    iget-object v1, v6, Lcom/alibaba/android/ding/widget/DingFilterManager;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3106
    if-eqz v1, :cond_3

    .line 3109
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 3110
    if-eqz v1, :cond_3

    .line 3113
    sget-object v4, Lcom/alibaba/android/ding/widget/DingFilterManager$4;->a:[I

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .line 3127
    invoke-virtual {v6, v1, v3}, Lcom/alibaba/android/ding/widget/DingFilterManager;->a(Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;Z)V

    goto :goto_2

    .line 3115
    :pswitch_0
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v4

    invoke-virtual {v4, v5}, Lbbl;->c(I)Z

    move-result v4

    invoke-virtual {v6, v1, v4}, Lcom/alibaba/android/ding/widget/DingFilterManager;->a(Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;Z)V

    goto :goto_2

    .line 3118
    :pswitch_1
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v4

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Lbbl;->c(I)Z

    move-result v4

    invoke-virtual {v6, v1, v4}, Lcom/alibaba/android/ding/widget/DingFilterManager;->a(Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;Z)V

    goto :goto_2

    .line 3121
    :pswitch_2
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v4

    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Lbbl;->c(I)Z

    move-result v4

    invoke-virtual {v6, v1, v4}, Lcom/alibaba/android/ding/widget/DingFilterManager;->a(Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;Z)V

    goto :goto_2

    .line 3124
    :pswitch_3
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v4

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lbbl;->c(I)Z

    move-result v4

    invoke-virtual {v6, v1, v4}, Lcom/alibaba/android/ding/widget/DingFilterManager;->a(Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;Z)V

    goto :goto_2

    .line 5140
    :cond_4
    new-instance v1, Lcom/alibaba/android/ding/widget/DingFilterManager$3;

    invoke-direct {v1, v6}, Lcom/alibaba/android/ding/widget/DingFilterManager$3;-><init>(Lcom/alibaba/android/ding/widget/DingFilterManager;)V

    iput-object v1, v6, Lcom/alibaba/android/ding/widget/DingFilterManager;->g:Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;

    .line 5181
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v1

    iget-object v2, v6, Lcom/alibaba/android/ding/widget/DingFilterManager;->g:Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;

    invoke-virtual {v1, v2}, Lbbl;->a(Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;)V

    .line 211
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->e:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->y:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->b:Landroid/view/View;

    sget v2, Laxp$f;->ll_sub_filter_title_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->g:Landroid/widget/LinearLayout;

    .line 215
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->b:Landroid/view/View;

    sget v2, Laxp$f;->tv_sub_filter_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->h:Landroid/widget/TextView;

    .line 216
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->b:Landroid/view/View;

    sget v2, Laxp$f;->iv_sub_filter_arrow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 217
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->g:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$6;-><init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->g:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->y:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 233
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->b:Landroid/view/View;

    sget v2, Laxp$f;->icl_today_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->l:Landroid/view/View;

    .line 236
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->b:Landroid/view/View;

    sget v2, Laxp$f;->fl_ding:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->m:Landroid/widget/FrameLayout;

    .line 237
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->b:Landroid/view/View;

    sget v2, Laxp$f;->fl_calendar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->n:Landroid/widget/FrameLayout;

    .line 238
    new-instance v1, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-direct {v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->o:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .line 239
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->c()Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->p:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    .line 241
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->p:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->setArguments(Landroid/os/Bundle;)V

    .line 242
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->getChildFragmentManager()Lcn;

    move-result-object v1

    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 243
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    sget v1, Laxp$f;->fl_ding:I

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->o:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 244
    sget v1, Laxp$f;->fl_calendar:I

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->p:Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 245
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 247
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->b:Landroid/view/View;

    return-object v1

    .line 3113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 388
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->f:Lcom/alibaba/android/ding/widget/DingFilterManager;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->f:Lcom/alibaba/android/ding/widget/DingFilterManager;

    .line 7185
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v1

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/DingFilterManager;->g:Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;

    invoke-virtual {v1, v0}, Lbbl;->b(Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;)V

    .line 391
    :cond_0
    invoke-static {}, Lbbl;->a()Lbbl;

    invoke-static {}, Lbbl;->c()V

    .line 7696
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->w:Lckm$a;

    invoke-virtual {v0, v1}, Lbbp;->b(Lckm$a;)V

    .line 7697
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->x:Lckm$a;

    invoke-virtual {v0, v1}, Lbbp;->d(Lckm$a;)V

    .line 8473
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->t:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 8474
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 8475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->t:Landroid/content/BroadcastReceiver;

    .line 394
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/ding/base/objects/DingTabFragment;->onDestroy()V

    .line 395
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 140
    sget v0, Laxp$g;->ding_fragment_ding_tab_v2:I

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 0
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/alibaba/android/ding/base/objects/DingTabFragment;->setUserVisibleHint(Z)V

    .line 146
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->a(Z)V

    .line 147
    return-void
.end method
