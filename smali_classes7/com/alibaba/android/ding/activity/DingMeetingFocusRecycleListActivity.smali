.class public Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DingMeetingFocusRecycleListActivity.java"


# instance fields
.field a:I

.field b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Lbaj;

.field private d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private k:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

.field private l:Landroid/widget/ProgressBar;

.field private m:I

.field private n:Laxs;

.field private o:J

.field private p:Landroid/widget/AbsListView$OnScrollListener;

.field private q:Lbiz;

.field private r:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->a:I

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->b:Ljava/util/Set;

    .line 74
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->o:J

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->a:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;IZ)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 55
    .line 3229
    if-eqz p2, :cond_1

    .line 3230
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->k:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setVisibility(I)V

    .line 3231
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 3232
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->k:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v1, Laxp$i;->icon_ping_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 3233
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->k:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v1, Laxp$i;->dt_ding_empty_pinned_tips:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyTextContent(I)V

    .line 3234
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->k:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v1, Laxp$i;->dt_ding_empty_pinned_tips_message:I

    sget v2, Laxp$c;->ui_common_level4_text_color:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(IILandroid/view/View$OnClickListener;)V

    .line 3235
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->k:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(ILandroid/view/View$OnClickListener;)V

    .line 3240
    :goto_0
    return-void

    .line 3237
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->k:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v1, Laxp$i;->icon_delete_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 3238
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->k:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v1, Laxp$i;->dt_ding_empty_deleted_tips:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyTextContent(I)V

    .line 3239
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->k:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v1, Laxp$i;->dt_ding_empty_deleted_tips2:I

    sget v2, Laxp$c;->ui_common_level4_text_color:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(IILandroid/view/View$OnClickListener;)V

    .line 3240
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->k:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 3244
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->k:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->l:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)Laxs;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->n:Laxs;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)Lbaj;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->c:Lbaj;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->b:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    .prologue
    .line 55
    .line 3327
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3328
    sget v1, Laxp$i;->ding_clear_deleted:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3329
    sget v1, Laxp$i;->ding_clear_cannot_undo:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3330
    sget v1, Laxp$i;->sure:I

    new-instance v2, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$14;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$14;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3341
    sget v1, Laxp$i;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3342
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 55
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->o:J

    return-wide v0
.end method

.method static synthetic j(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->a:I

    return v0
.end method

.method static synthetic k(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)Lbiz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->q:Lbiz;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 371
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 372
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->h:Landroid/widget/TextView;

    sget v1, Laxp$i;->ding_home_menu_delete_all:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->h:Landroid/widget/TextView;

    sget v1, Laxp$i;->ding_home_menu_delete:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->b:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->c:Lbaj;

    .line 3149
    iget v0, v0, Lbaj;->b:I

    .line 383
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 384
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 388
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 394
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->a:I

    .line 395
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 396
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->n:Laxs;

    iget v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->a:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->b:Ljava/util/Set;

    invoke-virtual {v0, v1, v2, v3}, Laxs;->a(ILbiz;Ljava/util/Set;)V

    .line 397
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->a()V

    .line 398
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    sget v0, Laxp$g;->ding_activity_meeting_focus_recycle_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->setContentView(I)V

    .line 1098
    sget v0, Laxp$f;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1099
    sget v0, Laxp$f;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->e:Landroid/widget/TextView;

    .line 1100
    sget v0, Laxp$f;->tv_cancel_delete:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->f:Landroid/widget/TextView;

    .line 1101
    sget v0, Laxp$f;->iv_clear:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1102
    sget v0, Laxp$f;->tv_delete_all:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->h:Landroid/widget/TextView;

    .line 1104
    sget v0, Laxp$f;->swipe_layout_ding_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 1105
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v1, 0x4

    new-array v1, v1, [I

    sget v2, Laxp$c;->swipe_refresh_color1:I

    aput v2, v1, v4

    const/4 v2, 0x1

    sget v3, Laxp$c;->swipe_refresh_color2:I

    aput v3, v1, v2

    const/4 v2, 0x2

    sget v3, Laxp$c;->swipe_refresh_color1:I

    aput v3, v1, v2

    const/4 v2, 0x3

    sget v3, Laxp$c;->swipe_refresh_color2:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorScheme([I)V

    .line 1106
    sget v0, Laxp$f;->home_ding_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 1107
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laxp$d;->ding_list_default_header_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->m:I

    .line 1108
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iget v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->m:I

    const/16 v2, 0x40

    invoke-virtual {v0, v4, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(ZII)V

    .line 1109
    sget v0, Laxp$f;->list_empty_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->k:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    .line 1110
    sget v0, Laxp$f;->loading_indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->l:Landroid/widget/ProgressBar;

    .line 1112
    new-instance v0, Laxz;

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->a:I

    iget-wide v4, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->o:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Laxz;-><init>(Landroid/app/Activity;Landroid/widget/ListView;IJ)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->n:Laxs;

    .line 1113
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->n:Laxs;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1250
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    new-instance v0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$7;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)V

    const-class v2, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    invoke-static {v0, v2, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;)V

    .line 1269
    new-instance v0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$8;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->p:Landroid/widget/AbsListView$OnScrollListener;

    .line 1282
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->p:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1284
    new-instance v0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$9;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->q:Lbiz;

    .line 1298
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$10;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1304
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$11;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$11;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1310
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$12;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$12;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1316
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$13;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$13;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2117
    new-instance v0, Lbaj;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$1;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)V

    invoke-direct {v0, v1, v2}, Lbaj;-><init>(Landroid/content/Intent;Lbai$b;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->c:Lbaj;

    .line 2347
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->r:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 2348
    new-instance v0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$2;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->r:Landroid/content/BroadcastReceiver;

    .line 2364
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.workapp.ding.choose.mode.change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2365
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 94
    :cond_0
    return-void
.end method
