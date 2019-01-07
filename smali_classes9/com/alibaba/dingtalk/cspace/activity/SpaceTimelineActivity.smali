.class public Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;
.super Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
.source "SpaceTimelineActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

.field private O:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 110
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
    .line 100
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    return-void
.end method

.method protected final d(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 105
    return-void
.end method

.method protected final n()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 61
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->n()V

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conv_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->O:Ljava/lang/String;

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v0, Lfzs$g;->activity_space_blank:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->setContentView(I)V

    .line 1066
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1087
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1088
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->i:Ljava/lang/String;

    const/4 v4, 0x1

    iget v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->a:I

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->r:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->w:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->s:Ljava/util/ArrayList;

    .line 1087
    invoke-static/range {v0 .. v9}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .line 1089
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v0, v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Z)V

    .line 1090
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .line 1091
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1092
    sget v1, Lfzs$f;->fragment_container:I

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1093
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 50
    return-void

    .line 1068
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->h:Ljava/lang/String;

    .line 1070
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1071
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1073
    :cond_2
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1074
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1075
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->O:Ljava/lang/String;

    .line 1076
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1078
    :cond_3
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1079
    invoke-static {}, Lgle;->a()Lgle;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgle;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->O:Ljava/lang/String;

    .line 1080
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTimelineActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 54
    const/4 v1, 0x1

    sget v2, Lfzs$h;->space_upload:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 55
    .local v0, "menuItemUpload":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 56
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method
