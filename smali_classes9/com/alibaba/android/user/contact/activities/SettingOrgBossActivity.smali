.class public Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "SettingOrgBossActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private b:Lfgv;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/Button;

.field private o:J

.field private p:Landroid/content/BroadcastReceiver;

.field private final q:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 91
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->h:Z

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->i:I

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->j:I

    .line 195
    new-instance v0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->p:Landroid/content/BroadcastReceiver;

    .line 439
    iput v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->q:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->i:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;Ljava/util/List;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 71
    .line 4273
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$4;-><init>(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)V

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Z)V

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;Ljava/util/List;Z)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 71
    .line 4356
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->j:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->j:I

    .line 4358
    if-nez p2, :cond_3

    .line 4359
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->b:Lfgv;

    .line 5058
    iget-object v1, v0, Lfge;->a:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 5059
    iget-object v1, v0, Lfge;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5063
    :goto_0
    if-eqz p1, :cond_0

    .line 5064
    iget-object v1, v0, Lfge;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5065
    :cond_0
    invoke-virtual {v0}, Lfge;->notifyDataSetChanged()V

    .line 4360
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->c()V

    .line 4361
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->b:Lfgv;

    invoke-virtual {v0}, Lfgv;->notifyDataSetChanged()V

    .line 4368
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->b()V

    .line 5255
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 5256
    const-class v0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 71
    :cond_1
    return-void

    .line 5061
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lfge;->a:Ljava/util/List;

    goto :goto_0

    .line 4363
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4364
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->b:Lfgv;

    .line 5069
    if-eqz p1, :cond_4

    .line 5070
    iget-object v1, v0, Lfge;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5071
    :cond_4
    invoke-virtual {v0}, Lfge;->notifyDataSetChanged()V

    .line 4365
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->b:Lfgv;

    invoke-virtual {v0}, Lfgv;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 8
    .param p1, "getMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 304
    if-eqz p1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :goto_0
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->o:J

    iget v4, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->j:I

    const/16 v5, 0x14

    const-string/jumbo v0, "EVENTBUTLER"

    .line 311
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$5;

    invoke-direct {v6, p0, p1}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$5;-><init>(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;Z)V

    const-class v7, Lcma;

    invoke-interface {v0, v6, v7, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 310
    invoke-interface/range {v1 .. v6}, Lezt;->a(JIILcma;)V

    .line 347
    return-void

    .line 2377
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2378
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 2379
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->c:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2380
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->c:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    .prologue
    .line 71
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->e:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->f:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    .prologue
    .line 71
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->f:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->e:I

    return p1
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 387
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 389
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    .prologue
    .line 71
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->g:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->g:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    .prologue
    .line 71
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->i:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->j:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->o:J

    return-wide v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->c()V

    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)Lfgv;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->b:Lfgv;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    .prologue
    const/16 v2, 0x8

    .line 71
    .line 5396
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5397
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 5398
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->c:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5399
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->c:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$6;-><init>(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5406
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->c:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->load_error_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    .prologue
    .line 71
    .line 5471
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org_contact.html"

    new-instance v2, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$9;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$9;-><init>(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 71
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 410
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->b:Lfgv;

    .line 3112
    iget-object v0, v0, Lfge;->a:Ljava/util/List;

    .line 411
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->b:Lfgv;

    .line 4112
    iget-object v0, v0, Lfge;->a:Ljava/util/List;

    .line 411
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->setVisibility(I)V

    .line 416
    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;

    sget v1, Lezg$g;->icon_empty_setting_boss:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->setEmptyImageResource(I)V

    .line 421
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;

    sget v1, Lezg$l;->org_boss_empty_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->setEmptyTextContent(I)V

    .line 422
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;

    sget v1, Lezg$l;->org_boss_empty_second_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->setEmptyDescription(I)V

    .line 423
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->o:J

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;

    sget v1, Lezg$l;->org_boss_empty_third_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->setExtendedDescription(I)V

    .line 425
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->getExtendedTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$7;-><init>(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    goto :goto_0

    .line 419
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;

    sget v1, Lezg$g;->icon_empty_setting_boss_en:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;->setEmptyImageResource(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 109
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    sget v0, Lezg$j;->activity_setting_org_boss:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->setContentView(I)V

    .line 1125
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "display_enterprise_oid"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->o:J

    .line 1132
    sget v0, Lezg$h;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 1133
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setDividerHeight(I)V

    .line 1134
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1169
    sget v0, Lezg$h;->rl_progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->c:Landroid/view/View;

    .line 1170
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->footer_loading_view:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->d:Landroid/view/View;

    .line 1171
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1172
    sget v0, Lezg$h;->list_empty_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ContactEmptyView;

    .line 1173
    sget v0, Lezg$h;->arrow_right_guide_no_concern:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->l:Landroid/widget/ImageView;

    .line 1175
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addFooterView(Landroid/view/View;)V

    .line 1176
    new-instance v0, Lfgv;

    invoke-direct {v0, p0}, Lfgv;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->b:Lfgv;

    .line 1177
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1178
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 1179
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1180
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$f;->uidic_global_text_size_s12:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1181
    sget v1, Lezg$l;->org_boss_list_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1182
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->uidic_global_color_6_2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1183
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addHeaderView(Landroid/view/View;)V

    .line 1185
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->b:Lfgv;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1452
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->actbar_button:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->m:Landroid/view/View;

    .line 1453
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->m:Landroid/view/View;

    sget v1, Lezg$h;->btn_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->n:Landroid/widget/Button;

    .line 1454
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->n:Landroid/widget/Button;

    sget v1, Lezg$l;->concern_add:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1455
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->n:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$8;-><init>(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2189
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2190
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2191
    const-string/jumbo v1, "com.workapp.SETTING_ORG_BOSS_REMOVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2192
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 116
    invoke-direct {p0, v4}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->a(Z)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->org_boss_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 119
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 443
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->m:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 444
    const/4 v1, 0x1

    sget v2, Lezg$l;->concern_add:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 445
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->m:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 446
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 448
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 513
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 514
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 515
    return-void
.end method
