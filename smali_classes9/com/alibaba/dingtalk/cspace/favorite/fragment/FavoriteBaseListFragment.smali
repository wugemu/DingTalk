.class public Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;
.super Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;
.source "FavoriteBaseListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field protected a:Landroid/widget/ListView;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lgbd;

.field protected d:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

.field protected e:Z

.field protected f:Z

.field protected g:I

.field protected h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Lgbz;

.field protected j:Ljava/lang/String;

.field k:Lyb;

.field private l:I

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;-><init>()V

    .line 62
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->m:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->e:Z

    .line 65
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->f:Z

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->h:Ljava/util/HashMap;

    .line 84
    new-instance v0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->k:Lyb;

    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 448
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-nez v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 451
    if-eqz v0, :cond_2

    .line 452
    sget v0, Lfzs$h;->cspace_network_error:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    goto :goto_0

    .line 457
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->getCurrentPageType()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->f:Z

    if-nez v0, :cond_3

    .line 458
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->f:Z

    .line 459
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->d()V

    .line 461
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    .line 464
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->e:Z

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    .prologue
    .line 48
    .line 3359
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3360
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "long"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3361
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "collection_delete_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 3367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->m:Z

    .line 3368
    if-nez p1, :cond_0

    .line 3369
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendEmptyMessage(I)Z

    .line 3370
    :goto_0
    return-void

    .line 3372
    :cond_0
    invoke-static {}, Lgcu;->a()Lgcu;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getId()J

    move-result-wide v2

    new-instance v1, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$9;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$9;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V

    invoke-virtual {v0, v2, v3, v1}, Lgcu;->a(JLgcv;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    .prologue
    .line 48
    .line 3416
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3417
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3418
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "long"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3419
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "collection_save_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 3424
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getOrgId()J

    move-result-wide v2

    invoke-static {v0, p1, v2, v3}, Lgar;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;J)V

    .line 48
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    .prologue
    .line 48
    .line 3433
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3434
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "long"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3435
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "collection_send_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 3440
    new-instance v0, Lgaq;

    invoke-direct {v0, p1}, Lgaq;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V

    .line 3441
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaq;->a(Landroid/content/Context;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected D_()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public final a(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 389
    .line 1051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 389
    if-eqz v1, :cond_3

    .line 390
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->b:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 391
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    .line 392
    .local v0, "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getId()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 393
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 397
    .end local v0    # "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->c:Lgbd;

    if-eqz v1, :cond_2

    .line 398
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->c:Lgbd;

    invoke-virtual {v1}, Lgbd;->notifyDataSetChanged()V

    .line 400
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 401
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->h()V

    .line 405
    :cond_3
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 491
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 493
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 494
    .local v0, "id":J
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->a(J)V

    goto :goto_0

    .line 3051
    .end local v0    # "id":J
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    .line 497
    if-eqz v2, :cond_0

    .line 498
    sget v2, Lfzs$h;->delete_error:I

    invoke-static {v2}, Lcms;->a(I)V

    goto :goto_0

    .line 491
    nop

    :pswitch_data_0
    .packed-switch 0x6a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .param p1, "syncResult"    # Ljava/lang/Object;

    .prologue
    .line 127
    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .param p1, "loadMoreResult"    # Ljava/lang/Object;

    .prologue
    .line 133
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method protected final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->g()V

    .line 150
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->f()V

    goto :goto_0
.end method

.method protected final f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 153
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-eqz v2, :cond_0

    .line 155
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 156
    .local v1, "listAdapter":Landroid/widget/ListAdapter;
    if-eqz v1, :cond_2

    .line 157
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_1

    .line 158
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .end local v1    # "listAdapter":Landroid/widget/ListAdapter;
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v1, v2}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 160
    .restart local v1    # "listAdapter":Landroid/widget/ListAdapter;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->a:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    .end local v1    # "listAdapter":Landroid/widget/ListAdapter;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "listAdapter":Landroid/widget/ListAdapter;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->a:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-eqz v0, :cond_0

    .line 173
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->e:Z

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    goto :goto_0
.end method

.method protected h()V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 203
    :try_start_0
    check-cast p1, Lgbz;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->i:Lgbz;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static {}, Lth;->a()Lya;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->k:Lyb;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "favorite_update"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "favorite_sync"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "favorite_loadmore"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 506
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onDestroy()V

    .line 507
    invoke-static {}, Lth;->a()Lya;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->k:Lyb;

    invoke-interface {v0, v1}, Lya;->a(Lyb;)V

    .line 508
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-ne p2, v1, :cond_1

    .line 184
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->a()V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    .line 188
    .local v0, "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    if-eqz v0, :cond_0

    .line 189
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->g:I

    if-nez v1, :cond_2

    .line 190
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lgar;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V

    goto :goto_0

    .line 191
    :cond_2
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->g:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 192
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->i:Lgbz;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->i:Lgbz;

    invoke-interface {v1, v0}, Lgbz;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 211
    iget v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->g:I

    if-ne v4, v6, :cond_1

    .line 351
    :cond_0
    :goto_0
    return v6

    .line 214
    :cond_1
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-eq p2, v4, :cond_0

    .line 217
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    .line 218
    .local v1, "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    if-eqz v1, :cond_0

    .line 221
    const/4 v2, 0x0

    .line 222
    .local v2, "fromDing":Z
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "DING"

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 223
    const/4 v2, 0x1

    .line 225
    :cond_2
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 229
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 230
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_3

    .line 231
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    .line 232
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v4

    if-nez v4, :cond_4

    .line 235
    :cond_3
    sget v4, Lfzs$b;->favorite_operate_common:I

    new-instance v5, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$2;

    invoke-direct {v5, p0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 350
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 247
    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    .line 248
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_5

    .line 249
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_5

    .line 250
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_8

    .line 251
    :cond_5
    invoke-static {}, Lfzu;->c()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 253
    if-eqz v2, :cond_6

    .line 254
    sget v4, Lfzs$b;->favorite_operate_delete_save:I

    new-instance v5, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$3;

    invoke-direct {v5, p0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$3;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_1

    .line 268
    :cond_6
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    .line 269
    .local v3, "model":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;
    if-eqz v3, :cond_7

    .line 270
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;

    if-eqz v4, :cond_7

    .line 271
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->isEncrypt()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 272
    sget v4, Lfzs$b;->favorite_operate_common_forward:I

    new-instance v5, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$4;

    invoke-direct {v5, p0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$4;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_1

    .line 287
    :cond_7
    sget v4, Lfzs$b;->favorite_operate_common_save:I

    new-instance v5, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$5;

    invoke-direct {v5, p0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$5;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_1

    .line 305
    .end local v3    # "model":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;
    :cond_8
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_9

    .line 306
    sget v4, Lfzs$b;->favorite_operate_delete_save:I

    new-instance v5, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$6;

    invoke-direct {v5, p0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$6;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_1

    .line 320
    :cond_9
    if-eqz v2, :cond_a

    .line 322
    sget v4, Lfzs$b;->favorite_operate_common:I

    new-instance v5, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$7;

    invoke-direct {v5, p0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$7;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 334
    :cond_a
    sget v4, Lfzs$b;->favorite_operate_common_forward:I

    new-instance v5, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$8;

    invoke-direct {v5, p0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$8;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 485
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onPause()V

    .line 486
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    invoke-virtual {v0}, Lctj;->c()V

    .line 487
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 476
    add-int v0, p2, p3

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->l:I

    .line 478
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->l:I

    if-ne v0, p4, :cond_0

    .line 479
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->a()V

    .line 481
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 472
    return-void
.end method
