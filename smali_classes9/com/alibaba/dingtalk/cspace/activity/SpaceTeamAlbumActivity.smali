.class public Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;
.super Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;
.source "SpaceTeamAlbumActivity.java"


# instance fields
.field protected Q:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->c()Ljava/lang/String;

    .line 27
    sget v0, Lfzs$f;->loading_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->Q:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->Q:Landroid/view/View;

    invoke-static {v0, v11}, Lgpk;->a(Landroid/view/View;I)V

    .line 29
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->N:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 31
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->i:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->p:Z

    iget-boolean v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->l:Z

    iget v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->a:I

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->r:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->w:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->s:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v9}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .line 32
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->k:I

    .line 3709
    iput v1, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e:I

    .line 33
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v0, v11}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Z)V

    .line 34
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->m:J

    .line 3724
    iput-wide v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->f:J

    .line 35
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v10

    .line 37
    .local v10, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    sget v0, Lfzs$f;->fragment_container:I

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v10, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 38
    invoke-virtual {v10}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 39
    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 43
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->d()V

    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->Q:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 45
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->P:Landroid/view/View;

    sget v1, Lfzs$f;->btn_upload:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method public final v()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 57
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->v()V

    .line 58
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTeamAlbumActivity;->Q:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 59
    return-void
.end method

.method protected final w()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lfzs$g;->layout_team_album_empty:I

    return v0
.end method

.method protected final x()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method
