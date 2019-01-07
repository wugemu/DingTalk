.class public Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;
.super Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;
.source "JobFeedActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Landroid/view/View;

.field private d:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

.field private e:Lgtx;

.field private f:Lgud;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private j:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->h:I

    .line 162
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    .prologue
    .line 36
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->h:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->h:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->b:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->d:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    .prologue
    .line 36
    .line 2242
    invoke-static {}, Lgug;->a()Lgug;

    move-result-object v1

    new-instance v0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)V

    const-class v2, Lcma;

    invoke-static {v0, v2, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3056
    iget-object v2, v1, Lgug;->a:Lgug$a;

    new-instance v3, Lgug$2;

    invoke-direct {v3, v1, v0}, Lgug$2;-><init>(Lgug;Lcma;)V

    invoke-virtual {v2, v3}, Lgug$a;->execute(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    .prologue
    .line 36
    .line 3291
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3292
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)Lgtx;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->e:Lgtx;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    .prologue
    .line 36
    .line 4285
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4286
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->b:Landroid/support/v7/widget/RecyclerView;

    iget v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->h:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lgtw;

    .line 74
    .local v0, "childViewHolder":Lgtw;
    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {v0}, Lgtw;->h()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v0, Lgtt$e;->recruitment_activity_job_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->setContentView(I)V

    .line 1081
    new-instance v2, Lcom/alibaba/dingtalk/recruitment/widget/JobFloatContainer;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/recruitment/widget/JobFloatContainer;-><init>(Landroid/content/Context;)V

    .line 1082
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;-><init>(Landroid/app/Activity;Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->f:Lgud;

    .line 1083
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->f:Lgud;

    invoke-interface {v0}, Lgud;->a()V

    .line 1084
    invoke-static {p0}, Lgvb;->a(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1085
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lgtt$e;->recruitment_layout_job_feed_title:I

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1086
    sget v1, Lgtt$d;->iv_back:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$1;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1092
    sget v1, Lgtt$d;->rl_title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1093
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1094
    invoke-static {p0}, Lcms;->a(Landroid/app/Activity;)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1095
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1096
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1097
    invoke-static {p0}, Lgvb;->a(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1100
    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/recruitment/widget/JobFloatContainer;->getVVideo()Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    .line 1101
    sget v0, Lgtt$d;->job_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->b:Landroid/support/v7/widget/RecyclerView;

    .line 1102
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->f:Lgud;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-interface {v0, v1}, Lgud;->b(Landroid/view/View;)V

    .line 1104
    sget v0, Lgtt$d;->v_empty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->c:Landroid/view/View;

    .line 1108
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$2;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->i:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 1124
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$3;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 1138
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;B)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 1142
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->d:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    .line 1143
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->d:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->g:Ljava/util/List;

    .line 1146
    new-instance v0, Lgtx;

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->g:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->f:Lgud;

    iget-object v5, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->i:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lgtx;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;Lgud;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->e:Lgtx;

    .line 1152
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->e:Lgtx;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1232
    sget v0, Lgtt$f;->loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->showLoadingDialog(I)V

    .line 1233
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$4;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->a(Ljava/lang/Runnable;)V

    .line 68
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "sw_recruit_job_feed_enter"

    invoke-interface {v0, v7, v1, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 69
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 310
    .line 2158
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->i:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 2159
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->j:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 311
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->clearOnScrollListeners()V

    .line 312
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->setMuted(Z)V

    .line 313
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->c()V

    .line 314
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->f:Lgud;

    invoke-interface {v0}, Lgud;->b()V

    .line 315
    invoke-super {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->onDestroy()V

    .line 316
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    .line 299
    invoke-super {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->onPause()V

    .line 300
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 304
    invoke-super {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->onResume()V

    .line 305
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    .line 306
    return-void
.end method
