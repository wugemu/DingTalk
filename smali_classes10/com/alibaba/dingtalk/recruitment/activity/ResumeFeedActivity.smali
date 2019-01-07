.class public Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;
.super Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;
.source "ResumeFeedActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;

.field private d:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Landroid/view/View;

.field private g:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

.field private h:Lgub;

.field private i:Lgud;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lguq;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private t:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private u:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;-><init>()V

    .line 71
    iput v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->j:I

    .line 81
    iput v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->r:I

    .line 427
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    .prologue
    .line 54
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->r:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->r:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->e:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 285
    sget v0, Lgtt$f;->loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->showLoadingDialog(I)V

    .line 286
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$5;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V

    invoke-super {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->a(Ljava/lang/Runnable;)V

    .line 292
    return-void
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->d:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    .prologue
    .line 54
    .line 1295
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->j:I

    if-nez v0, :cond_1

    .line 1303
    invoke-static {}, Lgug;->a()Lgug;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->m:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->l:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->o:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$6;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V

    const-class v7, Lcma;

    invoke-static {v0, v7, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcma;

    .line 2074
    iget-object v8, v1, Lgug;->a:Lgug$a;

    new-instance v0, Lgug$4;

    invoke-direct/range {v0 .. v7}, Lgug$4;-><init>(Lgug;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    invoke-virtual {v8, v0}, Lgug$a;->execute(Ljava/lang/Runnable;)V

    .line 1296
    :cond_0
    :goto_0
    return-void

    .line 1297
    :cond_1
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2341
    invoke-static {}, Lgug;->a()Lgug;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->k:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V

    const-class v3, Lcma;

    invoke-static {v0, v3, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3047
    iget-object v3, v1, Lgug;->a:Lgug$a;

    new-instance v4, Lgug$1;

    invoke-direct {v4, v1, v2, v0}, Lgug$1;-><init>(Lgug;Ljava/lang/String;Lcma;)V

    invoke-virtual {v3, v4}, Lgug$a;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    .prologue
    .line 54
    .line 3418
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3419
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_0

    .line 3420
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lgtt$b;->pure_white:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 3422
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 3423
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->b:Landroid/widget/TextView;

    sget v1, Lgtt$b;->pure_white:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)Lgub;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->h:Lgub;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    .prologue
    .line 54
    .line 4271
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->e:Landroid/support/v7/widget/RecyclerView;

    iget v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->r:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lguc;

    .line 4272
    if-eqz v0, :cond_0

    .line 4273
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lguc;->a(Z)V

    .line 54
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    .prologue
    .line 54
    .line 4408
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4409
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_0

    .line 4410
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lgtt$b;->ui_common_level1_button_bg_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 4412
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 4413
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->b:Landroid/widget/TextView;

    sget v1, Lgtt$b;->ui_common_level1_text_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    :cond_1
    return-void
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->g:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    .prologue
    const/4 v1, 0x1

    .line 54
    .line 4497
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->e:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 4500
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->j:I

    if-ne v0, v1, :cond_0

    .line 4504
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4508
    sget v0, Lgtt$f;->dt_recruitment_no_more_feed:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 54
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    .prologue
    .line 54
    .line 5278
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->e:Landroid/support/v7/widget/RecyclerView;

    iget v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->r:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lguc;

    .line 5279
    if-eqz v0, :cond_0

    .line 5280
    invoke-virtual {v0}, Lguc;->b()V

    .line 54
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
    .line 111
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->e:Landroid/support/v7/widget/RecyclerView;

    iget v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->r:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lguc;

    .line 112
    .local v0, "resumeFeedHolder":Lguc;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lguc;->h()V

    .line 115
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    sget v0, Lgtt$e;->recruitment_activity_resume_feed:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->setContentView(I)V

    .line 92
    sget v0, Lgtt$b;->ui_common_content_fg_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->setImmersiveStatusBarBackgroundColor(I)V

    .line 1118
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "resume_feed_model"

    invoke-static {v0, v1, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->j:I

    .line 1119
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "corpId"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->k:Ljava/lang/String;

    .line 1120
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "resumeId"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->l:Ljava/lang/String;

    .line 1121
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "encUid"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->m:Ljava/lang/String;

    .line 1122
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "jobId"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->n:Ljava/lang/String;

    .line 1123
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->o:Ljava/lang/String;

    .line 1124
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "preview"

    invoke-static {v0, v1, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->p:Z

    .line 1126
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->p:Z

    if-eqz v0, :cond_2

    .line 1127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1128
    const-string/jumbo v1, "resumeId"

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "sw_recruit_resume_preview_enter"

    invoke-interface {v1, v3, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1140
    :goto_0
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->c:Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;

    .line 1141
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->c:Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;-><init>(Landroid/app/Activity;Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->i:Lgud;

    .line 1142
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->i:Lgud;

    invoke-interface {v0}, Lgud;->a()V

    .line 1143
    invoke-static {p0}, Lgvb;->a(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1144
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lgtt$e;->recruitment_layout_resume_feed_title:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1145
    sget v0, Lgtt$d;->iv_back:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1146
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v2, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$1;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1152
    sget v0, Lgtt$d;->tv_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->b:Landroid/widget/TextView;

    .line 1153
    sget v0, Lgtt$d;->rl_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1154
    sget v0, Lgtt$d;->tv_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1155
    iget v3, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->j:I

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->p:Z

    if-eqz v3, :cond_0

    .line 1156
    sget v3, Lgtt$f;->dt_recruitment_title_resume_preview:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1158
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1159
    invoke-static {p0}, Lcms;->a(Landroid/app/Activity;)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1160
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1161
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1162
    invoke-static {p0}, Lgvb;->a(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1165
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->c:Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;->getVVideo()Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->d:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    .line 1166
    sget v0, Lgtt$d;->list_video:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->e:Landroid/support/v7/widget/RecyclerView;

    .line 1167
    sget v0, Lgtt$d;->v_empty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->f:Landroid/view/View;

    .line 1169
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->i:Lgud;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-interface {v0, v1}, Lgud;->b(Landroid/view/View;)V

    .line 1173
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$2;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->s:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 1188
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$3;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->t:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 1202
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$4;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->u:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;

    .line 1226
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;

    invoke-direct {v1, p0, v4}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$a;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;B)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 1230
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    invoke-direct {v0, p0, v9}, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->g:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    .line 1231
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->g:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->q:Ljava/util/List;

    .line 1234
    new-instance v0, Lgub;

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->q:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->c:Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;

    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->d:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v5, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->i:Lgud;

    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->s:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    iget-object v7, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->t:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v8, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->u:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lgub;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;Lgud;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->h:Lgub;

    .line 1242
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->h:Lgub;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1245
    new-instance v0, Landroid/support/v7/widget/PagerSnapHelper;

    invoke-direct {v0}, Landroid/support/v7/widget/PagerSnapHelper;-><init>()V

    .line 1246
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1248
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->j:I

    if-nez v0, :cond_4

    .line 1249
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1253
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->b()V

    .line 1259
    :goto_1
    return-void

    .line 1130
    :cond_2
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->j:I

    if-nez v0, :cond_3

    .line 1131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1132
    const-string/jumbo v1, "resumeId"

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "sw_recruit_resume_info_enter"

    invoke-interface {v1, v3, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1135
    :cond_3
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "sw_recruit_resume_feed_enter"

    invoke-interface {v0, v3, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1254
    :cond_4
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->j:I

    if-ne v0, v9, :cond_5

    .line 1255
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1259
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->b()V

    goto :goto_1

    .line 1261
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->finish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    .line 1266
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->d:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->s:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 1267
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->d:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->t:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->clearOnScrollListeners()V

    .line 103
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->d:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->setMuted(Z)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->d:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->c()V

    .line 105
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->i:Lgud;

    invoke-interface {v0}, Lgud;->b()V

    .line 106
    invoke-super {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->onDestroy()V

    .line 107
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->d:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    .line 514
    invoke-super {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->onPause()V

    .line 515
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 519
    invoke-super {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->onResume()V

    .line 520
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->d:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    .line 521
    return-void
.end method
