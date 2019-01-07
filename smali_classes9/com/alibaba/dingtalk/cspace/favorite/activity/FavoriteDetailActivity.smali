.class public Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;
.super Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;
.source "FavoriteDetailActivity.java"

# interfaces
.implements Lgby;


# instance fields
.field private a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

.field private b:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->b:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V
    .locals 0
    .param p1, "favViewModel"    # Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->b:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->supportInvalidateOptionsMenu()V

    .line 142
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 45
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->e()V

    .line 50
    sget v1, Lfzs$g;->activity_space_blank:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->setContentView(I)V

    .line 52
    sget v1, Lfzs$f;->fragment_container:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->f:Landroid/view/View;

    .line 54
    sget v1, Lfzs$h;->favorite_detail_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "fav_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->c:J

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "org_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->d:J

    .line 60
    :cond_0
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->c:J

    invoke-static {v2, v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;->a(J)Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 62
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    sget v1, Lfzs$f;->fragment_container:I

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 63
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 65
    invoke-static {}, Lcji;->a()V

    .line 66
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 71
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->b:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    if-eqz v3, :cond_2

    .line 72
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->b:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v3

    if-eq v3, v7, :cond_0

    .line 73
    const/4 v3, 0x1

    sget v4, Lfzs$h;->forward_action:I

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 74
    .local v1, "menuItemForward":Landroid/view/MenuItem;
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 77
    .end local v1    # "menuItemForward":Landroid/view/MenuItem;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->b:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v3

    if-ne v3, v8, :cond_1

    invoke-static {}, Lfzu;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    sget v3, Lfzs$h;->space_save:I

    invoke-interface {p1, v5, v7, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 79
    .local v2, "menuItemSave":Landroid/view/MenuItem;
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 82
    .end local v2    # "menuItemSave":Landroid/view/MenuItem;
    :cond_1
    sget v3, Lfzs$h;->space_file_delete:I

    invoke-interface {p1, v5, v8, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 83
    .local v0, "menuItemDelete":Landroid/view/MenuItem;
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 85
    .end local v0    # "menuItemDelete":Landroid/view/MenuItem;
    :cond_2
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 133
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 92
    :pswitch_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v1, "property":Ljava/util/Map;
    const-string/jumbo v2, "status"

    const-string/jumbo v3, "detail"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "collection_send_click"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 99
    new-instance v0, Lgaq;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->b:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-direct {v0, v2}, Lgaq;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V

    .line 100
    .local v0, "forwardManager":Lgaq;
    invoke-virtual {v0, p0}, Lgaq;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 103
    .end local v0    # "forwardManager":Lgaq;
    .end local v1    # "property":Ljava/util/Map;
    :pswitch_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 104
    .restart local v1    # "property":Ljava/util/Map;
    const-string/jumbo v2, "status"

    const-string/jumbo v3, "detail"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "collection_save_click"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 110
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->b:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->d:J

    invoke-static {p0, v2, v4, v5}, Lgar;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;J)V

    goto :goto_0

    .line 113
    .end local v1    # "property":Ljava/util/Map;
    :pswitch_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 114
    .restart local v1    # "property":Ljava/util/Map;
    const-string/jumbo v2, "status"

    const-string/jumbo v3, "detail"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "collection_delete_click"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 120
    invoke-static {}, Lgcu;->a()Lgcu;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->b:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getId()J

    move-result-wide v4

    new-instance v3, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;)V

    invoke-virtual {v2, v4, v5, v3}, Lgcu;->a(JLgcv;)V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
