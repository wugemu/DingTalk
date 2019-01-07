.class public Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;
.super Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
.source "SpaceGroupActivity.java"

# interfaces
.implements Lgde;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

.field private O:J

.field private P:Ljava/lang/String;

.field private Q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;",
            ">;"
        }
    .end annotation
.end field

.field private R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->Q:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->Q:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->R:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->R:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 230
    return-void
.end method

.method public final a(Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;)V
    .locals 13
    .param p1, "groupModel"    # Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "conversationModel":Lcem;
    if-eqz p1, :cond_1

    .line 95
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->O:J

    invoke-virtual {v0, v2, v4, v5}, Lfzv;->a(Ljava/lang/String;J)V

    .line 96
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcem;

    .line 97
    .local v12, "orgConversationModel":Lcem;
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->getConversionId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v12, Lcem;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    move-object v1, v12

    .line 103
    .end local v12    # "orgConversationModel":Lcem;
    :cond_1
    if-nez v1, :cond_2

    .line 130
    :goto_0
    return-void

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->showLoadingDialog()V

    .line 107
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "space_group_folder_click"

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lgle;->a()Lgle;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    sget v3, Lfzs$h;->org_conv:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lgle;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)V

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcma;

    .line 126
    .local v8, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->O:J

    iget v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->a:I

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->r:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->getGroupName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->w:Ljava/util/ArrayList;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    iget-object v11, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->s:Ljava/util/ArrayList;

    move-object v0, p0

    .line 126
    invoke-static/range {v0 .. v11}, Lfzu;->a(Landroid/content/Context;Lcem;JILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcma;ZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 134
    .line 2153
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2157
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    if-eqz v0, :cond_0

    .line 2158
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    .line 2381
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2382
    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2161
    :cond_0
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2162
    sget v0, Lfzs$h;->cspace_network_error:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 2165
    :cond_1
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2224
    invoke-static {}, Lgon;->a()Lgon;

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->O:J

    const/16 v1, 0x64

    invoke-static {v2, v3, v4, v1, v0}, Lgon;->a(JIILcma;)V

    .line 135
    :cond_2
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->supportInvalidateOptionsMenu()V

    .line 150
    return-void
.end method

.method protected final c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    return-void
.end method

.method protected final d(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 79
    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->a(Ljava/util/List;)V

    .line 145
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v0, Lfzs$g;->activity_space_blank:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "space_org_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->O:J

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conv_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->P:Ljava/lang/String;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lfzs$h;->org_conv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->b:Z

    .line 1082
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->a:I

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;->a(I)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    .line 1083
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1084
    sget v1, Lfzs$f;->fragment_container:I

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1085
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 1086
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->f:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupListFragment;

    .line 60
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

    const/4 v2, 0x1

    .line 65
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->a:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->Q:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1719
    const-string/jumbo v0, "pref_space_sort_type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 1710
    if-ne v0, v2, :cond_1

    .line 1711
    const/16 v0, 0x9

    sget v1, Lfzs$h;->space_sort_time:I

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1715
    :goto_0
    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 68
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1713
    :cond_1
    const/16 v0, 0xa

    sget v1, Lfzs$h;->space_sort_letter:I

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0
.end method
