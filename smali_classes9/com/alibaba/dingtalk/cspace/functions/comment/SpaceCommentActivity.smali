.class public Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SpaceCommentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$a;
    }
.end annotation


# instance fields
.field public a:Lgdp;

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$a;

.field private d:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

.field private e:Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

.field private g:J

.field private h:J

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->i:Z

    .line 233
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)J
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->g:J

    return-wide v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;
    .param p1, "x1"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->g:J

    return-wide v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;
    .param p1, "x1"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->g:J

    return-wide p1
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->d:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->i:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->h:J

    return-wide v0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->e:Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget v0, Lfzs$g;->activity_space_tab:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->hideToolbarDivide()V

    .line 74
    const-string/jumbo v2, ""

    .line 75
    .local v2, "objectId":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 76
    .local v3, "objectContainerId":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 77
    .local v5, "conversationId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 79
    .local v4, "objectType":I
    const-string/jumbo v13, ""

    .line 81
    .local v13, "objectName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "object_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "object_container_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conv_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "object_type"

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "object_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 90
    .local v12, "bundle":Landroid/os/Bundle;
    if-eqz v12, :cond_0

    .line 91
    const-string/jumbo v0, "intent_key_comment_like_count"

    invoke-virtual {v12, v0, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->h:J

    .line 92
    const-string/jumbo v0, "intent_key_comment_comment_count"

    invoke-virtual {v12, v0, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->g:J

    .line 97
    .end local v12    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v4, :cond_1

    .line 98
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    invoke-virtual {v0, v3}, Lfzv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1133
    :cond_1
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1134
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v13}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1143
    :goto_0
    sget v0, Lfzs$f;->view_pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->b:Landroid/support/v4/view/ViewPager;

    .line 1145
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$a;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$a;-><init>(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;Lcn;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->c:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$a;

    .line 1147
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->c:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 1149
    sget v0, Lfzs$f;->indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 1151
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    sget v1, Lfzs$c;->pure_white:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setTabBackground(I)V

    .line 1152
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1154
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->b:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1156
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 1191
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;->e()Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->e:Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;

    .line 106
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->m()Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->d:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    .line 108
    new-instance v0, Lgdp;

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->d:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lgdp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lgdn$b;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->a:Lgdp;

    .line 110
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->a:Lgdp;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)V

    .line 2104
    iput-object v1, v0, Lgdp;->j:Lgdp$a;

    .line 124
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->a:Lgdp;

    .line 2108
    const/4 v1, -0x1

    iput v1, v0, Lgdp;->g:I

    .line 126
    new-instance v6, Lgdr;

    iget-object v11, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->e:Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;

    move-object v7, p0

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v11}, Lgdr;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILgdq$b;)V

    .line 2195
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$3;-><init>(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)V

    .line 2228
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v6, Lcma;

    invoke-interface {v1, v0, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2230
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    invoke-virtual {v1, v2, v4, v0}, Lgon;->b(Ljava/lang/String;ILcma;)V

    .line 129
    return-void

    .line 1136
    :cond_2
    if-nez v4, :cond_3

    .line 1137
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lfzs$h;->dt_cspace_filecomment_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1139
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lfzs$h;->dt_msg_reaction_stats_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 271
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->d:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->d:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->g()V

    .line 274
    :cond_0
    invoke-static {}, Lcrc;->a()Lcrc;

    move-result-object v0

    invoke-virtual {v0}, Lcrc;->b()V

    .line 275
    return-void
.end method
