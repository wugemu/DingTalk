.class public Lgdw;
.super Ljava/lang/Object;
.source "DentryListPresenter.java"

# interfaces
.implements Lgdu$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgdw$a;
    }
.end annotation


# instance fields
.field final a:Lgdx;

.field final b:Lgdy;

.field protected c:Lgdu$b;

.field protected d:Landroid/content/Context;

.field protected e:Landroid/os/Bundle;

.field protected f:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

.field protected g:Lged$a;

.field protected h:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

.field protected i:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

.field protected j:Ljava/lang/String;

.field protected k:I

.field protected l:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Z

.field protected p:I

.field protected q:I

.field protected r:I

.field protected s:I

.field private t:Landroid/content/BroadcastReceiver;


# direct methods
.method protected constructor <init>(Lgdu$b;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Lgdu$b;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v0, p0, Lgdw;->p:I

    .line 79
    iput v0, p0, Lgdw;->q:I

    .line 80
    iput v0, p0, Lgdw;->r:I

    .line 81
    iput v2, p0, Lgdw;->s:I

    .line 118
    iput-object p1, p0, Lgdw;->c:Lgdu$b;

    .line 119
    iput-object p2, p0, Lgdw;->d:Landroid/content/Context;

    .line 120
    iput-object p3, p0, Lgdw;->e:Landroid/os/Bundle;

    .line 121
    new-instance v0, Lgdx;

    iget-object v1, p0, Lgdw;->d:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lgdx;-><init>(Lgdw;Landroid/content/Context;)V

    iput-object v0, p0, Lgdw;->a:Lgdx;

    .line 122
    new-instance v0, Lgdy;

    iget-object v1, p0, Lgdw;->d:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lgdy;-><init>(Lgdw;Landroid/content/Context;)V

    iput-object v0, p0, Lgdw;->b:Lgdy;

    .line 123
    iget-object v0, p0, Lgdw;->d:Landroid/content/Context;

    invoke-static {v0}, Lgpr;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lgdw;->p:I

    .line 124
    iget-object v0, p0, Lgdw;->d:Landroid/content/Context;

    invoke-static {v0, v2}, Lgpr;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lgdw;->s:I

    .line 126
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, p0}, Lgdu$b;->setPresenter(Lcjd;)V

    .line 127
    return-void
.end method

.method private D()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 288
    .line 4296
    iget-object v0, p0, Lgdw;->h:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getSpace()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v0

    iput-object v0, p0, Lgdw;->i:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    .line 4297
    iget-object v0, p0, Lgdw;->i:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgdw;->j:Ljava/lang/String;

    .line 4298
    iget-object v0, p0, Lgdw;->i:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getType()I

    move-result v0

    iput v0, p0, Lgdw;->k:I

    .line 4299
    iget-object v0, p0, Lgdw;->h:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    iput-object v0, p0, Lgdw;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4300
    iget-object v0, p0, Lgdw;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgdw;->m:Ljava/lang/String;

    .line 4301
    iget-object v0, p0, Lgdw;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgdw;->n:Ljava/lang/String;

    .line 4303
    iget-object v0, p0, Lgdw;->f:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    if-eqz v0, :cond_0

    .line 4304
    iget-object v0, p0, Lgdw;->f:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->isAdmin()Z

    move-result v0

    iput-boolean v0, p0, Lgdw;->o:Z

    .line 4306
    :cond_0
    iget-boolean v0, p0, Lgdw;->o:Z

    if-nez v0, :cond_1

    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v1, p0, Lgdw;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfzv;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4307
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v1, p0, Lgdw;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfzv;->f(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgdw;->o:Z

    .line 4309
    :cond_1
    iget-object v0, p0, Lgdw;->h:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    iget-boolean v1, p0, Lgdw;->o:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->checkAdmin(Z)Z

    move-result v0

    iput-boolean v0, p0, Lgdw;->o:Z

    .line 289
    invoke-virtual {p0}, Lgdw;->a()V

    .line 291
    iget-object v0, p0, Lgdw;->g:Lged$a;

    iget-object v1, p0, Lgdw;->h:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    iget-boolean v2, p0, Lgdw;->o:Z

    invoke-interface {v0, v1, v2}, Lged$a;->a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;Z)V

    .line 292
    iget-object v0, p0, Lgdw;->g:Lged$a;

    invoke-interface {v0}, Lged$a;->e()V

    .line 293
    return-void
.end method

.method public static a(Lgdu$b;Landroid/content/Context;Landroid/os/Bundle;)Lgdw;
    .locals 4
    .param p0, "view"    # Lgdu$b;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 86
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    :cond_0
    new-instance v3, Lgdw;

    invoke-direct {v3, p0, p1, p2}, Lgdw;-><init>(Lgdu$b;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 114
    :goto_0
    return-object v3

    .line 90
    :cond_1
    const-string/jumbo v3, "intent_key_args"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    .line 91
    .local v1, "dentryListArgs":Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;
    if-nez v1, :cond_2

    .line 92
    new-instance v3, Lgdw;

    invoke-direct {v3, p0, p1, p2}, Lgdw;-><init>(Lgdu$b;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->getCsDentry()Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v0

    .line 96
    .local v0, "csDentry":Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getSpace()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v3

    if-nez v3, :cond_4

    .line 97
    :cond_3
    new-instance v3, Lgdw;

    invoke-direct {v3, p0, p1, p2}, Lgdw;-><init>(Lgdu$b;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getSpace()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getType()I

    move-result v2

    .line 101
    .local v2, "spaceType":I
    invoke-static {v2}, Lgqu;->b(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 102
    new-instance v3, Lgea;

    invoke-direct {v3, p0, p1, p2}, Lgea;-><init>(Lgdu$b;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 104
    :cond_5
    invoke-static {v2}, Lgqu;->d(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 105
    new-instance v3, Lgds;

    invoke-direct {v3, p0, p1, p2}, Lgds;-><init>(Lgdu$b;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 107
    :cond_6
    invoke-static {v2}, Lgqu;->h(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 108
    new-instance v3, Lgeb;

    invoke-direct {v3, p0, p1, p2}, Lgeb;-><init>(Lgdu$b;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 110
    :cond_7
    invoke-static {v2}, Lgqu;->g(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 111
    new-instance v3, Lgdz;

    invoke-direct {v3, p0, p1, p2}, Lgdz;-><init>(Lgdu$b;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 114
    :cond_8
    new-instance v3, Lgdw;

    invoke-direct {v3, p0, p1, p2}, Lgdw;-><init>(Lgdu$b;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic a(Lgdw;)V
    .locals 0
    .param p0, "x0"    # Lgdw;

    .prologue
    .line 57
    invoke-direct {p0}, Lgdw;->D()V

    return-void
.end method

.method static synthetic a(Lgdw;I)V
    .locals 3
    .param p0, "x0"    # Lgdw;
    .param p1, "x1"    # I

    .prologue
    .line 57
    .line 5633
    iget-object v1, p0, Lgdw;->c:Lgdu$b;

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lgdu$b;->d(ZLjava/lang/String;)V

    .line 57
    return-void

    .line 5633
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lgdw;Landroid/content/Intent;)V
    .locals 3
    .param p0, "x0"    # Lgdw;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 57
    .line 5215
    if-eqz p1, :cond_0

    .line 5218
    const-string/jumbo v0, "dentry_model"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 5219
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgdw;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lgpx;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5221
    :cond_0
    :goto_0
    return-void

    .line 5223
    :cond_1
    iget-object v1, p0, Lgdw;->g:Lged$a;

    invoke-interface {v1, v0}, Lged$a;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto :goto_0
.end method

.method static synthetic a(Lgdw;Lcom/alibaba/dingtalk/cspace/model/CsDentry;)V
    .locals 6
    .param p0, "x0"    # Lgdw;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .prologue
    .line 57
    .line 5378
    iget-object v0, p0, Lgdw;->d:Landroid/content/Context;

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5379
    sget v0, Lfzs$h;->network_no_connection:I

    invoke-static {v0}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 5383
    :cond_0
    :goto_0
    return-void

    .line 5382
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5385
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 5386
    iget-object v1, p0, Lgdw;->d:Landroid/content/Context;

    iget v2, p0, Lgdw;->k:I

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getOrgId()J

    move-result-wide v4

    invoke-static {v1, v0, v2, v4, v5}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;IJ)V

    goto :goto_0
.end method

.method static synthetic a(Lgdw;Z)V
    .locals 4
    .param p0, "x0"    # Lgdw;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    .line 5689
    if-nez p1, :cond_0

    .line 5690
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-interface {v0, v1, v2, v3}, Lgdu$b;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 5691
    :goto_0
    return-void

    .line 5695
    :cond_0
    iget v0, p0, Lgdw;->k:I

    invoke-static {v0}, Lgqu;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5696
    sget v0, Lfzs$h;->dt_cspace_no_file_in_the_pulic_area:I

    invoke-static {v0}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 5704
    :goto_1
    const-string/jumbo v1, ""

    .line 5705
    iget v2, p0, Lgdw;->q:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lgdw;->d:Landroid/content/Context;

    invoke-static {v2}, Lgoj;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5706
    sget v1, Lfzs$h;->cspace_no_file_guide_2:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 5709
    :cond_1
    iget-object v2, p0, Lgdw;->c:Lgdu$b;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1}, Lgdu$b;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5697
    :cond_2
    iget v0, p0, Lgdw;->k:I

    invoke-static {v0}, Lgqu;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgdw;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lgpv;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lgdw;->q:I

    if-nez v0, :cond_3

    .line 5699
    sget v0, Lfzs$h;->dt_cspace_personal_file_empty_tip:I

    invoke-static {v0}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5701
    :cond_3
    sget v0, Lfzs$h;->cspace_no_file_guide_1:I

    invoke-static {v0}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;I)Z
    .locals 12
    .param p1, "csDentry"    # Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    .param p2, "selectCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 611
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v5

    if-nez v5, :cond_1

    .line 624
    :cond_0
    :goto_0
    return v4

    .line 614
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 615
    .local v0, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryExtModel()Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    move-result-object v1

    .line 616
    .local v1, "dentryExt":Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;
    invoke-static {v0}, Lgpv;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->getEditor()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_0

    .line 617
    iget-object v5, p0, Lgdw;->d:Landroid/content/Context;

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_3

    .line 618
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->getEditor()J

    move-result-wide v2

    .line 619
    .local v2, "editor":J
    if-le p2, v6, :cond_2

    move v4, v6

    .line 620
    .local v4, "multiFiles":Z
    :cond_2
    iget-object v5, p0, Lgdw;->d:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-static {v5, v2, v3, v4, v0}, Lgfg;->a(Landroid/app/Activity;JZLcom/alibaba/alimei/cspace/model/DentryModel;)V

    .end local v2    # "editor":J
    .end local v4    # "multiFiles":Z
    :cond_3
    move v4, v6

    .line 622
    goto :goto_0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lgdw;->o:Z

    return v0
.end method

.method public final B()Lcom/alibaba/dingtalk/cspace/model/CsSpace;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lgdw;->i:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    return-object v0
.end method

.method public final C()Lged$a;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lgdw;->g:Lged$a;

    return-object v0
.end method

.method protected a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 313
    invoke-virtual {p0}, Lgdw;->b()V

    .line 315
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->a(Z)V

    .line 316
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lgdu$b;->b(Z)V

    .line 317
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    iget v1, p0, Lgdw;->q:I

    invoke-interface {v0, v1}, Lgdu$b;->a(I)V

    .line 318
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0}, Lgdu$b;->f()V

    .line 319
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->l(Z)V

    .line 320
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->m(Z)V

    .line 321
    return-void
.end method

.method public final a(I)V
    .locals 1
    .param p1, "sortType"    # I

    .prologue
    .line 408
    iget-object v0, p0, Lgdw;->g:Lged$a;

    invoke-interface {v0, p1}, Lged$a;->a(I)V

    .line 409
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 343
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    sget v1, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 356
    :goto_0
    return-void

    .line 347
    :cond_0
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;-><init>()V

    .line 348
    .local v0, "args":Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;
    iput-object p1, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->fileTypeId:Ljava/lang/String;

    .line 349
    iget-object v1, p0, Lgdw;->h:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getSpace()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->spaceId:Ljava/lang/String;

    .line 350
    iget-object v1, p0, Lgdw;->h:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getSpace()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getType()I

    move-result v1

    iput v1, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->spaceType:I

    .line 351
    iget-object v1, p0, Lgdw;->h:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->parentId:Ljava/lang/String;

    .line 352
    iget-object v1, p0, Lgdw;->h:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->parentPath:Ljava/lang/String;

    .line 353
    iget-object v1, p0, Lgdw;->h:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getOrgId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->orgId:J

    .line 354
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->spaceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lfzv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->convId:Ljava/lang/String;

    .line 355
    iget-object v1, p0, Lgdw;->d:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;Lcma;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "selectAll"    # Z

    .prologue
    .line 497
    iget-object v0, p0, Lgdw;->g:Lged$a;

    invoke-interface {v0, p1}, Lged$a;->a(Z)V

    .line 498
    return-void
.end method

.method public b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 325
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    iget-object v1, p0, Lgdw;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgdu$b;->a(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->e(Z)V

    .line 327
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    const-string/jumbo v1, ""

    invoke-interface {v0, v2, v1}, Lgdu$b;->a(ZLjava/lang/String;)V

    .line 328
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v3}, Lgdu$b;->h(Z)V

    .line 329
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v3}, Lgdu$b;->i(Z)V

    .line 330
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    iget v1, p0, Lgdw;->s:I

    invoke-interface {v0, v1}, Lgdu$b;->b(I)V

    .line 331
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v3}, Lgdu$b;->j(Z)V

    .line 332
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    iget v1, p0, Lgdw;->p:I

    invoke-interface {v0, v1}, Lgdu$b;->c(I)V

    .line 333
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->k(Z)V

    .line 334
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 391
    sget v0, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 392
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 396
    sget v0, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 397
    return-void
.end method

.method public final e()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 132
    iget-object v0, p0, Lgdw;->t:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1143
    new-instance v0, Lgdw$1;

    invoke-direct {v0, p0}, Lgdw$1;-><init>(Lgdw;)V

    iput-object v0, p0, Lgdw;->t:Landroid/content/BroadcastReceiver;

    .line 1163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1164
    iget-object v1, p0, Lgdw;->a:Lgdx;

    .line 2077
    iget-object v1, v1, Lgdx;->c:Ljava/lang/String;

    .line 1164
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1165
    iget-object v1, p0, Lgdw;->a:Lgdx;

    .line 2081
    iget-object v1, v1, Lgdx;->d:Ljava/lang/String;

    .line 1165
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1166
    const-string/jumbo v1, "com.alibaba.dingtalk.space.file.create"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1167
    iget-object v1, p0, Lgdw;->d:Landroid/content/Context;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lgdw;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0}, Lgdu$b;->h()Lged$b;

    move-result-object v0

    invoke-interface {v0}, Lged$b;->a()Lged$a;

    move-result-object v0

    invoke-static {v0}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lged$a;

    iput-object v0, p0, Lgdw;->g:Lged$a;

    .line 137
    iget-object v0, p0, Lgdw;->g:Lged$a;

    new-instance v1, Lgdw$a;

    invoke-direct {v1, p0, v4}, Lgdw$a;-><init>(Lgdw;B)V

    invoke-interface {v0, v1}, Lged$a;->a(Lged$a$a;)V

    .line 138
    iget-object v0, p0, Lgdw;->g:Lged$a;

    invoke-interface {v0}, Lged$a;->a()V

    .line 2227
    iget-object v0, p0, Lgdw;->e:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgdw;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2245
    :cond_1
    :goto_0
    return-void

    .line 2231
    :cond_2
    iget-object v0, p0, Lgdw;->e:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_args"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    iput-object v0, p0, Lgdw;->f:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    .line 2232
    iget-object v0, p0, Lgdw;->f:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    if-eqz v0, :cond_1

    .line 2236
    iget-object v0, p0, Lgdw;->f:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->getCsDentry()Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v0

    iput-object v0, p0, Lgdw;->h:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 2237
    iget-object v0, p0, Lgdw;->h:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgdw;->h:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getSpace()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2238
    invoke-direct {p0}, Lgdw;->D()V

    goto :goto_0

    .line 2242
    :cond_3
    iget-object v0, p0, Lgdw;->f:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    .line 2243
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2244
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    const-string/jumbo v1, ""

    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgdu$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2248
    :cond_4
    iget-object v0, p0, Lgdw;->f:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->getDentryId()Ljava/lang/String;

    move-result-object v0

    .line 2249
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2250
    const-string/jumbo v0, "0"

    .line 2253
    :cond_5
    iget-object v2, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v2}, Lgdu$b;->b()V

    .line 3054
    new-instance v2, Lgaf$a;

    invoke-direct {v2}, Lgaf$a;-><init>()V

    .line 3067
    iput-object v1, v2, Lgaf$a;->a:Ljava/lang/String;

    .line 3076
    iput-object v0, v2, Lgaf$a;->b:Ljava/lang/String;

    .line 3112
    iput-boolean v3, v2, Lgaf$a;->e:Z

    .line 4103
    iput-boolean v3, v2, Lgaf$a;->d:Z

    .line 4121
    iput-boolean v3, v2, Lgaf$a;->f:Z

    .line 4130
    iput-boolean v4, v2, Lgaf$a;->g:Z

    .line 2261
    new-instance v0, Lgdw$2;

    invoke-direct {v0, p0}, Lgdw$2;-><init>(Lgdw;)V

    .line 2283
    const-class v1, Lcma;

    iget-object v3, p0, Lgdw;->d:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lgpr;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2284
    invoke-static {v2, v0}, Lgaf;->a(Lgaf$a;Lcma;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 427
    iget v0, p0, Lgdw;->q:I

    if-ne v0, v3, :cond_0

    .line 453
    :goto_0
    return-void

    .line 431
    :cond_0
    iget v0, p0, Lgdw;->q:I

    iput v0, p0, Lgdw;->r:I

    .line 432
    iput v3, p0, Lgdw;->q:I

    .line 434
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->b(Z)V

    .line 435
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->a(Z)V

    .line 436
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v3}, Lgdu$b;->c(Z)V

    .line 437
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->d(Z)V

    .line 438
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    iget v1, p0, Lgdw;->q:I

    invoke-interface {v0, v1}, Lgdu$b;->a(I)V

    .line 439
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0}, Lgdu$b;->f()V

    .line 441
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->f(Z)V

    .line 442
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->g(Z)V

    .line 443
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->h(Z)V

    .line 444
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->i(Z)V

    .line 445
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->l(Z)V

    .line 447
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v3}, Lgdu$b;->m(Z)V

    .line 448
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    sget v1, Lfzs$h;->cspace_operate_delete:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lgdu$b;->b(ZLjava/lang/String;)V

    .line 449
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    sget v1, Lfzs$h;->cspace_operate_repath:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lgdu$b;->c(ZLjava/lang/String;)V

    .line 450
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lgdu$b;->d(ZLjava/lang/String;)V

    .line 452
    iget-object v0, p0, Lgdw;->g:Lged$a;

    invoke-interface {v0}, Lged$a;->l()V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 717
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 722
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 726
    .line 5171
    iget-object v0, p0, Lgdw;->t:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 5174
    iget-object v0, p0, Lgdw;->d:Landroid/content/Context;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lgdw;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 5175
    const/4 v0, 0x0

    iput-object v0, p0, Lgdw;->t:Landroid/content/BroadcastReceiver;

    .line 727
    :cond_0
    iget-object v0, p0, Lgdw;->g:Lged$a;

    invoke-interface {v0}, Lged$a;->i()V

    .line 728
    return-void
.end method

.method public final j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 457
    iget v0, p0, Lgdw;->q:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 464
    :goto_0
    return-void

    .line 461
    :cond_0
    iget v0, p0, Lgdw;->r:I

    iput v0, p0, Lgdw;->q:I

    .line 462
    invoke-virtual {p0}, Lgdw;->a()V

    .line 463
    iget-object v0, p0, Lgdw;->g:Lged$a;

    invoke-interface {v0}, Lged$a;->m()V

    goto :goto_0
.end method

.method public final k()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 468
    iget-object v1, p0, Lgdw;->d:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 493
    :goto_0
    return-void

    .line 472
    :cond_0
    new-instance v0, Lgoa;

    invoke-direct {v0}, Lgoa;-><init>()V

    .line 473
    .local v0, "param":Lgoa;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgoa;->d:Z

    .line 474
    iget-object v1, p0, Lgdw;->j:Ljava/lang/String;

    iput-object v1, v0, Lgoa;->a:Ljava/lang/String;

    .line 475
    iget-object v1, p0, Lgdw;->m:Ljava/lang/String;

    iput-object v1, v0, Lgoa;->b:Ljava/lang/String;

    .line 476
    iget-object v1, p0, Lgdw;->n:Ljava/lang/String;

    iput-object v1, v0, Lgoa;->c:Ljava/lang/String;

    .line 477
    iget v1, p0, Lgdw;->k:I

    iput v1, v0, Lgoa;->e:I

    .line 478
    iget-boolean v1, p0, Lgdw;->o:Z

    iput-boolean v1, v0, Lgoa;->j:Z

    .line 479
    iget-object v1, p0, Lgdw;->f:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->isFromConversation()Z

    move-result v1

    iput-boolean v1, v0, Lgoa;->h:Z

    .line 480
    iget-object v1, p0, Lgdw;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getOrgId()J

    move-result-wide v2

    iput-wide v2, v0, Lgoa;->f:J

    .line 481
    iget-object v1, p0, Lgdw;->f:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->getConversationName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgoa;->i:Ljava/lang/String;

    .line 482
    iget-object v1, v0, Lgoa;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    iget-object v1, p0, Lgdw;->i:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgoa;->i:Ljava/lang/String;

    .line 486
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;->a()Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;

    iget-object v1, p0, Lgdw;->d:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lgdw$3;

    invoke-direct {v2, p0, v0}, Lgdw$3;-><init>(Lgdw;Lgoa;)V

    invoke-static {v1, v2}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;)V

    goto :goto_0
.end method

.method public final l()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 401
    iget-object v0, p0, Lgdw;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lgdw;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x2

    iget-object v2, p0, Lgdw;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getOrgId()J

    move-result-wide v2

    iget-object v4, p0, Lgdw;->j:Ljava/lang/String;

    iget-object v5, p0, Lgdw;->m:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lfzu;->a(Landroid/app/Activity;IJLjava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_0
    return-void
.end method

.method public final m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 413
    iget v0, p0, Lgdw;->p:I

    if-nez v0, :cond_0

    .line 414
    const/4 v0, 0x1

    iput v0, p0, Lgdw;->p:I

    .line 415
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_filelist_switch_grid"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 420
    :goto_0
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    iget v1, p0, Lgdw;->p:I

    invoke-interface {v0, v1}, Lgdu$b;->c(I)V

    .line 422
    iget-object v0, p0, Lgdw;->g:Lged$a;

    invoke-interface {v0}, Lged$a;->k()V

    .line 423
    return-void

    .line 417
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lgdw;->p:I

    .line 418
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_filelist_switch_linear"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final n()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 512
    iget-object v6, p0, Lgdw;->g:Lged$a;

    invoke-interface {v6}, Lged$a;->d()Ljava/util/List;

    move-result-object v1

    .line 513
    .local v1, "csDentryList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/model/CsDentry;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    const/4 v4, 0x0

    .line 518
    .local v4, "hasFolder":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 519
    .local v2, "dentryList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 520
    .local v0, "csDentry":Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 523
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {p0, v0, v7}, Lgdw;->a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 526
    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v7

    invoke-static {v7}, Lgpv;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 527
    const/4 v4, 0x1

    .line 529
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 532
    .end local v0    # "csDentry":Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    :cond_4
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v6, p0, Lgdw;->d:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 534
    .local v3, "dialogBuilder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v5, Lfzs$h;->space_delete_alert:I

    .line 535
    .local v5, "msgResId":I
    if-eqz v4, :cond_5

    .line 536
    sget v6, Lfzs$h;->space_delete_folder_alert_title:I

    invoke-virtual {v3, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 537
    sget v5, Lfzs$h;->space_delete_folder_alert_msg:I

    .line 539
    :cond_5
    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 541
    sget v6, Lfzs$h;->cancel:I

    new-instance v7, Lgdw$4;

    invoke-direct {v7, p0}, Lgdw$4;-><init>(Lgdw;)V

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 548
    sget v6, Lfzs$h;->sure:I

    new-instance v7, Lgdw$5;

    invoke-direct {v7, p0, v2}, Lgdw$5;-><init>(Lgdw;Ljava/util/List;)V

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 584
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method public final o()V
    .locals 20

    .prologue
    .line 589
    move-object/from16 v0, p0

    iget-object v3, v0, Lgdw;->g:Lged$a;

    invoke-interface {v3}, Lged$a;->d()Ljava/util/List;

    move-result-object v19

    .line 590
    .local v19, "csDentryList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/model/CsDentry;>;"
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 595
    .local v10, "dentryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 596
    .local v2, "csDentry":Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 599
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lgdw;->a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 602
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 605
    .end local v2    # "csDentry":Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lgdw;->d:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lgdw;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getOrgId()J

    move-result-wide v4

    const/4 v6, 0x4

    move-object/from16 v0, p0

    iget-object v7, v0, Lgdw;->j:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgdw;->k:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v3 .. v18}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLjava/lang/String;Lcma;IZLjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 338
    iget-object v0, p0, Lgdw;->c:Lgdu$b;

    iget-object v1, p0, Lgdw;->h:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lgdu$b;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 339
    return-void
.end method

.method public final q()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 360
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;-><init>()V

    .line 361
    .local v0, "args":Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;
    iget-object v1, p0, Lgdw;->h:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getSpace()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;->spaceId:Ljava/lang/String;

    .line 362
    iget-object v1, p0, Lgdw;->h:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;->parentPath:Ljava/lang/String;

    .line 363
    iget-object v1, p0, Lgdw;->h:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;->authFlag:Ljava/lang/String;

    .line 364
    iget-object v1, p0, Lgdw;->d:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;Lcma;)V

    .line 365
    return-void
.end method

.method public final r()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 369
    iget-object v1, p0, Lgdw;->a:Lgdx;

    .line 5085
    iget-object v0, v1, Lgdx;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 5088
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5089
    const-string/jumbo v0, "completed_back_to_target_action"

    iget-object v3, v1, Lgdx;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5090
    const-string/jumbo v0, "send_origin_picture"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5091
    const-string/jumbo v0, "album_choose_num"

    const/16 v3, 0x1e

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5092
    const-string/jumbo v0, "album_show_video"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5093
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    .line 5094
    iget-object v0, v1, Lgdx;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, v1, Lgdx;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1, v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 370
    :cond_0
    return-void
.end method

.method public final s()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 374
    iget-object v1, p0, Lgdw;->a:Lgdx;

    .line 5098
    iget-object v0, v1, Lgdx;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 5101
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    .line 5102
    iget-object v0, v1, Lgdx;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v3, v1, Lgdx;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lgdx;->d:Ljava/lang/String;

    const/16 v4, 0x1e

    invoke-virtual {v2, v0, v3, v1, v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 375
    :cond_0
    return-void
.end method

.method public final t()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lgdw;->g:Lged$a;

    invoke-interface {v0}, Lged$a;->j()V

    .line 630
    return-void
.end method

.method public final u()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lgdw;->f:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lgdw;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final w()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lgdw;->k:I

    return v0
.end method

.method public final x()Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lgdw;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lgdw;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lgdw;->n:Ljava/lang/String;

    return-object v0
.end method
