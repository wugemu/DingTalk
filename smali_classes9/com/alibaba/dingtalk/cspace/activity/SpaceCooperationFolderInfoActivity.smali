.class public Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;
.super Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;
.source "SpaceCooperationFolderInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/TextView;

.field private final B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:Ljava/lang/String;

.field private H:J

.field private I:Z

.field private J:Z

.field private K:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private L:Z

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:J

.field private r:I

.field private s:Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

.field private t:Landroid/widget/ToggleButton;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;-><init>()V

    .line 62
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->B:I

    .line 65
    iput v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->C:I

    .line 66
    iput v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->D:I

    .line 67
    iput v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->E:I

    .line 68
    iput v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->F:I

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->H:J

    .line 72
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->I:Z

    .line 73
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->J:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->L:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    .prologue
    .line 34
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->C:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->C:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;
    .param p1, "x1"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->H:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->G:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->I:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    .prologue
    .line 34
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->D:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->D:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->L:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    .prologue
    .line 34
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->E:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->E:I

    return p1
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->F:I

    return p1
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->G:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 97
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)V

    .line 136
    .local v0, "listener":Lcma;, "Lcma<Lgin;>;"
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Lgin;>;"
    check-cast v0, Lcma;

    .line 137
    .restart local v0    # "listener":Lcma;, "Lcma<Lgin;>;"
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->o:Ljava/lang/String;

    .line 3234
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lgop$17;

    invoke-direct {v3, v1, v0}, Lgop$17;-><init>(Ljava/lang/String;Lcma;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method private e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 385
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->J:Z

    .line 386
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->I:Z

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->t:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 391
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->J:Z

    .line 392
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->t:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->J:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    .prologue
    .line 34
    .line 3293
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_sharefile_set_urlshare_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 3294
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3295
    sget v0, Lfzs$h;->network_no_connection:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 3296
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->e()V

    .line 3359
    :goto_0
    return-void

    .line 3300
    :cond_0
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$3;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)V

    .line 3354
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3370
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->L:Z

    .line 3371
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$4;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3357
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->I:Z

    if-eqz v1, :cond_1

    .line 3359
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->o:Ljava/lang/String;

    .line 3855
    const-class v1, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    .line 3856
    new-instance v3, Lgop$13;

    invoke-direct {v3, v0}, Lgop$13;-><init>(Lcma;)V

    .line 3871
    invoke-interface {v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;->closeShare(Ljava/lang/String;Liyv;)V

    goto :goto_0

    .line 3362
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->o:Ljava/lang/String;

    .line 4830
    const-class v1, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    .line 4831
    new-instance v3, Lgop$12;

    invoke-direct {v3, v0}, Lgop$12;-><init>(Lcma;)V

    .line 4846
    invoke-interface {v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;->createShare(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->e()V

    return-void
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->I:Z

    return v0
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->z:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->L:Z

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public final a(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 239
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->a(Landroid/os/Message;)V

    .line 240
    invoke-static {p0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->dismissLoadingDialog()V

    .line 244
    if-eqz p1, :cond_0

    .line 248
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 250
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->k:Landroid/widget/TextView;

    new-array v1, v6, [Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->C:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string/jumbo v2, " "

    aput-object v2, v1, v4

    sget v2, Lfzs$h;->space_share_member_user:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->l:Landroid/widget/TextView;

    new-array v1, v6, [Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->D:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string/jumbo v2, " "

    aput-object v2, v1, v4

    sget v2, Lfzs$h;->space_share_member_user:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->m:Landroid/widget/TextView;

    new-array v1, v6, [Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->E:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string/jumbo v2, " "

    aput-object v2, v1, v4

    sget v2, Lfzs$h;->space_share_member_user:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3264
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->I:Z

    if-eqz v0, :cond_2

    .line 3265
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->t:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 3266
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->z:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3267
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3274
    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->K:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 3275
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->K:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 3283
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->t:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->K:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_0

    .line 3269
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->t:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 3270
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->z:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3271
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 233
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->b()V

    .line 234
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->d()V

    .line 235
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lfzs$f;->view_folder_managers:I

    if-ne v0, v1, :cond_1

    .line 399
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_filelist_setting_manage_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 401
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->q:J

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->o:Ljava/lang/String;

    iget v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->r:I

    const/16 v8, 0x65

    iget v9, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->F:I

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lfzu;->a(Landroid/content/Context;JLjava/lang/String;ILjava/util/List;III)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lfzs$f;->view_folder_uploaders:I

    if-ne v0, v1, :cond_2

    .line 405
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_filelist_setting_upload_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 407
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->q:J

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->o:Ljava/lang/String;

    iget v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->r:I

    const/16 v8, 0x66

    iget v9, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->F:I

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lfzu;->a(Landroid/content/Context;JLjava/lang/String;ILjava/util/List;III)V

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lfzs$f;->view_folder_browsers:I

    if-ne v0, v1, :cond_3

    .line 411
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_filelist_setting_download_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 413
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->q:J

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->o:Ljava/lang/String;

    iget v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->r:I

    const/16 v8, 0x67

    iget v9, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->F:I

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lfzu;->a(Landroid/content/Context;JLjava/lang/String;ILjava/util/List;III)V

    goto :goto_0

    .line 415
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lfzs$f;->tv_right_description:I

    if-ne v0, v1, :cond_5

    .line 417
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_filelist_setting_readme_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 419
    invoke-static {p0}, Lgpr;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 420
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v3

    const-string/jumbo v5, "https://tms.dingtalk.com/markets/dingtalk/public_area_permissions?wh_ttid=phone"

    move-object v4, p0

    move v8, v7

    invoke-virtual/range {v3 .. v8}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 422
    :cond_4
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v3

    const-string/jumbo v5, "https://tms.dingtalk.com/markets/dingtalk/spaceright?wh_ttid=phone"

    move-object v4, p0

    move v8, v7

    invoke-virtual/range {v3 .. v8}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 425
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lfzs$f;->view_link_share_copy:I

    if-ne v0, v1, :cond_6

    .line 427
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_sharefile_set_copyurl_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->G:Ljava/lang/String;

    sget v1, Lfzs$h;->dt_space_copy_text_success_message:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcnz;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 429
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lfzs$f;->view_link_share_share:I

    if-ne v0, v1, :cond_0

    .line 431
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_sharefile_set_share_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 432
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->G:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->p:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->H:J

    const-string/jumbo v6, "https://img.alicdn.com/tps/TB1djghNXXXXXawXFXXXXXXXXXX-64-64.png"

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lgpr;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    sget v0, Lfzs$g;->space_cooperation_folder_property:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->setContentView(I)V

    .line 1182
    sget v0, Lfzs$f;->view_folder_managers:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->w:Landroid/view/View;

    .line 1183
    sget v0, Lfzs$f;->view_folder_uploaders:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->x:Landroid/view/View;

    .line 1184
    sget v0, Lfzs$f;->view_folder_browsers:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->y:Landroid/view/View;

    .line 1186
    sget v0, Lfzs$f;->ll_link_share:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->z:Landroid/view/View;

    .line 1187
    sget v0, Lfzs$f;->view_toggle_link_share_open:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->s:Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

    .line 1188
    sget v0, Lfzs$f;->view_link_share_copy:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->u:Landroid/view/View;

    .line 1189
    sget v0, Lfzs$f;->view_link_share_share:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->v:Landroid/view/View;

    .line 1190
    sget v0, Lfzs$f;->tv_link_share_des:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->n:Landroid/widget/TextView;

    .line 1192
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->s:Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

    sget v1, Lfzs$f;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->t:Landroid/widget/ToggleButton;

    .line 1194
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->w:Landroid/view/View;

    sget v1, Lfzs$f;->tv_item_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->k:Landroid/widget/TextView;

    .line 1195
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->x:Landroid/view/View;

    sget v1, Lfzs$f;->tv_item_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->l:Landroid/widget/TextView;

    .line 1196
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->y:Landroid/view/View;

    sget v1, Lfzs$f;->tv_item_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->m:Landroid/widget/TextView;

    .line 1198
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->w:Landroid/view/View;

    sget v1, Lfzs$f;->tv_item_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1199
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->x:Landroid/view/View;

    sget v2, Lfzs$f;->tv_item_name:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1200
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->y:Landroid/view/View;

    sget v3, Lfzs$f;->tv_item_name:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1201
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->u:Landroid/view/View;

    sget v4, Lfzs$f;->tv_item_name:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1202
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->v:Landroid/view/View;

    sget v5, Lfzs$f;->tv_item_name:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1204
    sget v5, Lfzs$f;->tv_right_description:I

    invoke-virtual {p0, v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->A:Landroid/widget/TextView;

    .line 1206
    if-eqz v3, :cond_0

    .line 1207
    sget v5, Lfzs$h;->dt_cspace_fileshare_link_share_copy:I

    invoke-virtual {p0, v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1210
    :cond_0
    if-eqz v4, :cond_1

    .line 1211
    sget v3, Lfzs$h;->dt_cspace_fileshare_link_share_psw:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1214
    :cond_1
    if-eqz v0, :cond_2

    .line 1215
    sget v3, Lfzs$h;->dt_space_cooperation_info_manager:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1218
    :cond_2
    if-eqz v1, :cond_3

    .line 1219
    sget v0, Lfzs$h;->dt_space_cooperation_info_uploader:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1222
    :cond_3
    if-eqz v2, :cond_4

    .line 1223
    sget v0, Lfzs$h;->dt_space_cooperation_info_browser:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2150
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2151
    if-eqz v0, :cond_8

    .line 2155
    const-string/jumbo v1, "cooperation_folder_cid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->o:Ljava/lang/String;

    .line 2156
    const-string/jumbo v1, "cooperation_folder_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->p:Ljava/lang/String;

    .line 2157
    const-string/jumbo v1, "space_org_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->q:J

    .line 2158
    const-string/jumbo v1, "space_share_role"

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->r:I

    .line 2160
    const-string/jumbo v1, "space_link_share_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->G:Ljava/lang/String;

    .line 2161
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v6

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->I:Z

    .line 2163
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 2164
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2165
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->k:Landroid/widget/TextView;

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v7

    sget v2, Lfzs$h;->space_share_member_user:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2168
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 2169
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2170
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->l:Landroid/widget/TextView;

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v7

    sget v2, Lfzs$h;->space_share_member_user:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2173
    :cond_6
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 2174
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2175
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->m:Landroid/widget/TextView;

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v7

    sget v2, Lfzs$h;->space_share_member_user:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2178
    :cond_7
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lfzs$h;->dt_space_cooperation_info:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3141
    :cond_8
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->w:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3142
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->x:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3143
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->y:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3144
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3145
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->v:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3146
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->u:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->d()V

    .line 86
    return-void

    :cond_9
    move v0, v7

    .line 2161
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->onResume()V

    .line 91
    return-void
.end method
