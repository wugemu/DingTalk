.class public Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;
.super Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
.source "SpaceListActivity.java"


# instance fields
.field protected N:Landroid/view/View;

.field protected O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

.field protected P:Landroid/view/View;

.field private Q:Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;

.field private R:Ljava/lang/String;

.field private S:I

.field private T:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->R:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->R:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;Ljava/util/List;Z)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 55
    .line 6497
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$3;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;Ljava/util/List;)V

    .line 6520
    const-class v1, Lxv;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 6521
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lth;->a(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->updateConflictType(Ljava/util/List;ZLxv;)V

    .line 55
    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;Ljava/util/List;Z)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 55
    const/4 v0, 0x1

    .line 6525
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    if-eqz v1, :cond_0

    .line 6528
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 6529
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/util/List;Z)V

    .line 6530
    :cond_0
    :goto_0
    return-void

    .line 6532
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$4;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;Ljava/util/List;Z)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private e(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x6

    .line 225
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a:I

    if-ne v1, v3, :cond_5

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->k()V

    .line 228
    invoke-static {}, Lgqd;->a()Lgqd;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->q:Ljava/lang/String;

    const-string/jumbo v2, "modifyAllFile"

    invoke-static {v1, v2}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->i()V

    .line 232
    :cond_1
    invoke-static {}, Lgqd;->a()Lgqd;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->q:Ljava/lang/String;

    const-string/jumbo v2, "addFile"

    invoke-static {v1, v2}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a:I

    if-eq v1, v3, :cond_2

    .line 233
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i(Z)V

    .line 236
    :cond_2
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a:I

    if-ne v1, v3, :cond_3

    .line 237
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->j()V

    .line 249
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 250
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->m:J

    invoke-virtual {p0, p1, v4, v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a(Landroid/view/Menu;IJ)V

    .line 253
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a(Landroid/view/Menu;)V

    .line 254
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->S:I

    if-lez v2, :cond_7

    :goto_1
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->j(Z)V

    .line 255
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e()V

    .line 256
    return-void

    .line 239
    :cond_5
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a:I

    if-ne v1, v4, :cond_3

    .line 240
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->j()V

    .line 242
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->x:I

    if-ne v1, v3, :cond_6

    .line 243
    invoke-static {p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->c(Landroid/view/Menu;)V

    goto :goto_0

    .line 245
    :cond_6
    invoke-static {p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->b(Landroid/view/Menu;)V

    goto :goto_0

    .line 254
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 556
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->S:I

    .line 557
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->supportInvalidateOptionsMenu()V

    .line 558
    return-void
.end method

.method protected b()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->c()Ljava/lang/String;

    move-result-object v11

    .line 286
    .local v11, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->Q:Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->Q:Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .line 288
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .line 289
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v10

    .line 290
    .local v10, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    sget v0, Lfzs$f;->fragment_container:I

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v10, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 291
    invoke-virtual {v10}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 308
    :goto_0
    return-void

    .line 295
    .end local v10    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->i:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->p:Z

    iget-boolean v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->l:Z

    iget v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a:I

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->r:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->w:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->s:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v9}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .line 296
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->k:I

    .line 4709
    iput v1, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e:I

    .line 297
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Z)V

    .line 298
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->n:Z

    .line 4717
    iput-boolean v1, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->g:Z

    .line 299
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->m:J

    .line 4724
    iput-wide v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->f:J

    .line 300
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->R:Ljava/lang/String;

    .line 4898
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->h:Ljava/lang/String;

    .line 301
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v0, v11}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->q:Ljava/lang/String;

    .line 4902
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->d:Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4906
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 304
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .line 305
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v10

    .line 306
    .restart local v10    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    sget v0, Lfzs$f;->fragment_container:I

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v10, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 307
    invoke-virtual {v10}, Landroid/support/v4/app/FragmentTransaction;->c()I

    goto :goto_0
.end method

.method protected final c()Ljava/lang/String;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v4, 0x1

    .line 311
    sget v5, Lfzs$h;->dt_cspace_space:I

    invoke-virtual {p0, v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->R:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 313
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->h:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "/"

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->h:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v1, v4

    .line 314
    .local v1, "isRoot":Z
    :cond_1
    if-eqz v1, :cond_7

    .line 315
    iget v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->k:I

    if-ne v5, v4, :cond_4

    .line 316
    sget v4, Lfzs$h;->org_public_share:I

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 356
    .end local v1    # "isRoot":Z
    :cond_2
    :goto_0
    iget v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a:I

    if-eq v4, v7, :cond_3

    iget v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a:I

    if-eq v4, v9, :cond_3

    iget v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a:I

    if-eq v4, v8, :cond_3

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .line 357
    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->k()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 358
    :cond_3
    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->c(Ljava/lang/String;)V

    .line 364
    :goto_1
    return-object v3

    .line 317
    .restart local v1    # "isRoot":Z
    :cond_4
    iget v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->k:I

    if-ne v4, v8, :cond_6

    .line 318
    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->n:Z

    if-eqz v4, :cond_5

    .line 319
    sget v4, Lfzs$h;->file_string:I

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 321
    :cond_5
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->R:Ljava/lang/String;

    goto :goto_0

    .line 324
    :cond_6
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->R:Ljava/lang/String;

    goto :goto_0

    .line 327
    :cond_7
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->R:Ljava/lang/String;

    .line 329
    goto :goto_0

    .end local v1    # "isRoot":Z
    :cond_8
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->h:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 330
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->h:Ljava/lang/String;

    .line 331
    .local v2, "tempPath":Ljava/lang/String;
    const-string/jumbo v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 332
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 334
    :cond_9
    const-string/jumbo v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 335
    .local v0, "index":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_a

    .line 336
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->R:Ljava/lang/String;

    .line 337
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->R:Ljava/lang/String;

    goto :goto_0

    .line 339
    :cond_a
    iget v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a:I

    if-ne v5, v7, :cond_b

    .line 340
    invoke-static {}, Lgle;->a()Lgle;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lgle;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->R:Ljava/lang/String;

    .line 341
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->R:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 342
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->R:Ljava/lang/String;

    goto/16 :goto_0

    .line 344
    :cond_b
    iget v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a:I

    if-ne v5, v4, :cond_2

    .line 345
    iget v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->k:I

    if-eq v5, v9, :cond_c

    iget v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->k:I

    if-eq v5, v7, :cond_c

    iget v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->k:I

    if-ne v5, v8, :cond_d

    .line 346
    :cond_c
    sget v4, Lfzs$h;->file_string:I

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 347
    :cond_d
    iget v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->k:I

    if-ne v5, v4, :cond_e

    .line 348
    sget v4, Lfzs$h;->org_public_share:I

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 349
    :cond_e
    iget v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->k:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 350
    sget v4, Lfzs$h;->org_personal:I

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 360
    .end local v0    # "index":I
    .end local v2    # "tempPath":Ljava/lang/String;
    :cond_f
    const-string/jumbo v4, ""

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->c(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->t()V

    goto/16 :goto_1
.end method

.method protected final c(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 403
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    if-nez v1, :cond_0

    .line 420
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 408
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v0, :cond_1

    .line 412
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthFlag(Ljava/lang/String;)V

    goto :goto_1

    .line 415
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_2
    invoke-static {}, Lglr;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5426
    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;Ljava/util/List;)V

    .line 5492
    const-class v2, Lcma;

    invoke-static {v1, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 5493
    invoke-static {}, Lgpe;->a()Lgpe;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->i:Ljava/lang/String;

    invoke-static {v2, v3, p1, v1}, Lgpe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcma;)V

    goto :goto_0

    .line 418
    :cond_3
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->w()I

    move-result v1

    if-gtz v1, :cond_0

    .line 380
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->P:Landroid/view/View;

    if-nez v1, :cond_1

    .line 373
    sget v1, Lfzs$f;->view_stub_empty:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 374
    .local v0, "emptyViewStub":Landroid/view/ViewStub;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->w()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 375
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->P:Landroid/view/View;

    .line 378
    .end local v0    # "emptyViewStub":Landroid/view/ViewStub;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->P:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 379
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->N:Landroid/view/View;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected final d(I)V
    .locals 2
    .param p1, "mode"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 542
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a:I

    .line 543
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(I)V

    .line 546
    :cond_0
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->c()Ljava/lang/String;

    .line 551
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->supportInvalidateOptionsMenu()V

    .line 552
    return-void

    .line 549
    :cond_1
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->x:I

    goto :goto_0
.end method

.method public final e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 81
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e()V

    .line 82
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->K:I

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->J:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(ZILcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 85
    :cond_0
    return-void
.end method

.method protected final g()Lgoa;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    if-nez v0, :cond_0

    .line 575
    const/4 v0, 0x0

    .line 577
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->d()Lgoa;

    move-result-object v0

    goto :goto_0
.end method

.method protected final n()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 275
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->n()V

    .line 276
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conv_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->R:Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_args"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->Q:Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;

    .line 278
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->Q:Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->Q:Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->getConversationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->R:Ljava/lang/String;

    .line 281
    :cond_0
    return-void
.end method

.method protected final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    sget v0, Lfzs$g;->activity_space_blank:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->setContentView(I)V

    .line 74
    sget v0, Lfzs$f;->fragment_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->N:Landroid/view/View;

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->b()V

    .line 3088
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->T:Landroid/content/BroadcastReceiver;

    .line 3121
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3122
    const-string/jumbo v1, "com.alibaba.dingtalk.space.share.delete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3123
    const-string/jumbo v1, "com.alibaba.dingtalk.space.share.updatetitle"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3124
    const-string/jumbo v1, "com.alibaba.dingtalk.space.file.lock.release"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3125
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->T:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 77
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x6

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 135
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    if-nez v2, :cond_0

    .line 195
    :goto_0
    return v1

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->f()V

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->h()V

    .line 141
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v2, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i(Z)V

    .line 3199
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->x()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->k:I

    invoke-static {v2}, Lgqu;->h(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v2, v1

    .line 143
    :goto_1
    if-eqz v2, :cond_4

    .line 144
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0

    .line 3203
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->h()V

    .line 3204
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->e(Landroid/view/Menu;)V

    .line 3205
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a:I

    if-ne v2, v0, :cond_3

    .line 3207
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i(Z)V

    :cond_3
    move v2, v0

    .line 3209
    goto :goto_1

    .line 3213
    :cond_4
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->k:I

    invoke-static {v2}, Lgqu;->d(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3214
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_conf_space_acl_permission_setting_enable"

    .line 4083
    invoke-virtual {v2, v3, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 3214
    if-nez v2, :cond_6

    :cond_5
    move v2, v1

    .line 147
    :goto_2
    if-eqz v2, :cond_7

    .line 148
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0

    .line 3218
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->h()V

    .line 3219
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->e(Landroid/view/Menu;)V

    move v2, v0

    .line 3220
    goto :goto_2

    .line 152
    :cond_7
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a:I

    if-ne v2, v0, :cond_d

    .line 153
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->k()V

    .line 154
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->p:Z

    if-eqz v2, :cond_a

    .line 156
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i(Z)V

    .line 157
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->S:I

    if-lez v2, :cond_8

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->i()V

    .line 187
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->j()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 188
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->m:J

    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a(Landroid/view/Menu;IJ)V

    .line 191
    :cond_9
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a(Landroid/view/Menu;)V

    .line 192
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->S:I

    if-lez v3, :cond_10

    :goto_4
    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->j(Z)V

    .line 193
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e()V

    .line 195
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto/16 :goto_0

    .line 162
    :cond_a
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->k:I

    if-eq v2, v0, :cond_c

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->k:I

    if-ne v2, v4, :cond_b

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->o:I

    const/16 v3, 0x67

    if-eq v2, v3, :cond_c

    .line 166
    :cond_b
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i(Z)V

    .line 169
    :cond_c
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->j()V

    goto :goto_3

    .line 172
    :cond_d
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a:I

    if-ne v2, v4, :cond_e

    .line 174
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->k()V

    .line 175
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->j()V

    goto :goto_3

    .line 177
    :cond_e
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a:I

    if-ne v2, v5, :cond_8

    .line 178
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->j()V

    .line 180
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->x:I

    if-ne v2, v4, :cond_f

    .line 181
    invoke-static {p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->c(Landroid/view/Menu;)V

    goto :goto_3

    .line 183
    :cond_f
    invoke-static {p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->b(Landroid/view/Menu;)V

    goto :goto_3

    :cond_10
    move v0, v1

    .line 192
    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 397
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onDestroy()V

    .line 398
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->T:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 399
    return-void
.end method

.method protected final s()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 562
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->s()V

    .line 563
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 564
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->x:I

    .line 5894
    iput v1, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->k:I

    .line 566
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->x:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b(Z)V

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->supportInvalidateOptionsMenu()V

    .line 570
    :cond_1
    return-void

    .line 566
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 383
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->P:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 384
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->N:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 385
    return-void
.end method

.method protected w()I
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method protected x()Z
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method
