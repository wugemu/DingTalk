.class public Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;
.super Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;
.source "FavoriteListFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;


# instance fields
.field l:Landroid/os/Handler;

.field private m:Landroid/view/ViewStub;

.field private n:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Lxe;

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->q:Z

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->r:Z

    .line 205
    new-instance v0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->l:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;Lxe;)Lxe;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;
    .param p1, "x1"    # Lxe;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->p:Lxe;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    .prologue
    .line 45
    .line 3051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 45
    return v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->q:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    .prologue
    .line 45
    .line 3154
    invoke-static {}, Lgcu;->a()Lgcu;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)V

    .line 4136
    iget-object v2, v0, Lgcu;->a:Ljava/lang/String;

    invoke-static {v2}, Lth;->b(Ljava/lang/String;)Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;

    move-result-object v2

    new-instance v3, Lgcu$4;

    invoke-direct {v3, v0, v1}, Lgcu$4;-><init>(Lgcu;Lgcv;)V

    invoke-interface {v2, v3}, Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;->getFavoriteList(Lxv;)V

    .line 45
    return-void
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    .prologue
    .line 45
    .line 5051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 45
    return v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->r:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    .prologue
    .line 45
    .line 5270
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->p:Lxe;

    if-eqz v0, :cond_3

    .line 5271
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->p:Lxe;

    .line 6043
    iget-boolean v0, v0, Lxe;->b:Z

    .line 5271
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->e:Z

    .line 5272
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->p:Lxe;

    .line 6055
    iget-object v0, v0, Lxe;->c:Ljava/util/List;

    .line 5272
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->p:Lxe;

    .line 7055
    iget-object v0, v0, Lxe;->c:Ljava/util/List;

    .line 5272
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 5273
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->p:Lxe;

    .line 8055
    iget-object v0, v0, Lxe;->c:Ljava/util/List;

    .line 5273
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/fav/model/FavoriteModel;

    .line 5274
    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-direct {v2, v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;-><init>(Lcom/alibaba/alimei/fav/model/FavoriteModel;)V

    .line 5275
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->h:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5276
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->h:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5277
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5278
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5282
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->c:Lgbd;

    if-eqz v0, :cond_2

    .line 5283
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->c:Lgbd;

    invoke-virtual {v0}, Lgbd;->notifyDataSetChanged()V

    .line 5286
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->g()V

    .line 45
    :cond_3
    return-void
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    .prologue
    .line 45
    .line 9051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 45
    return v0
.end method


# virtual methods
.method protected final D_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 195
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->D_()V

    .line 196
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->l:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 197
    return-void
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-static {}, Lgas;->a()Lgas;

    move-result-object v0

    invoke-virtual {v0}, Lgas;->c()V

    .line 340
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 338
    sget v0, Lfzs$h;->network_error:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 2
    .param p1, "syncResult"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->a(Ljava/lang/Object;)V

    .line 187
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->l:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 188
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    .line 189
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 191
    return-void
.end method

.method protected final b(Ljava/lang/Object;)V
    .locals 2
    .param p1, "loadMoreResult"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->b(Ljava/lang/Object;)V

    .line 172
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->l:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 173
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->what:I

    .line 174
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 175
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    return-void
.end method

.method protected final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 180
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->c()V

    .line 181
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->l:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 182
    return-void
.end method

.method protected final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 201
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->d()V

    .line 202
    invoke-static {}, Lgas;->a()Lgas;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->p:Lxe;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1080
    :goto_0
    invoke-static {}, Lgcu;->a()Lgcu;

    move-result-object v2

    new-instance v3, Lgas$3;

    invoke-direct {v3, v1, v0}, Lgas$3;-><init>(Lgas;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lgcu;->a(Lcma;)V

    .line 203
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->p:Lxe;

    .line 1035
    iget-object v0, v0, Lxe;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method protected final h()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 292
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->h()V

    .line 2051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 293
    if-nez v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->i:Lgbz;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->i:Lgbz;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lgbz;->a(ILjava/lang/String;)V

    .line 300
    :cond_1
    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->q:Z

    .line 301
    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->r:Z

    .line 302
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->m:Landroid/view/ViewStub;

    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    .line 307
    new-instance v0, Lgbd;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lgbd;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->c:Lgbd;

    .line 308
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->f()V

    .line 313
    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->c:Lgbd;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 314
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "favorite.list.appear"

    invoke-static {v0, v1, v2}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->e()V

    goto :goto_1

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->i:Lgbz;

    if-eqz v0, :cond_4

    .line 317
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->i:Lgbz;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->j:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Lgbz;->a(ILjava/lang/String;)V

    .line 319
    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->q:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 322
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->m:Landroid/view/ViewStub;

    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 327
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->r:Z

    .line 328
    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->q:Z

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 113
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$1;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)V

    const-class v3, Lcma;

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 113
    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 150
    .local v0, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lgar;->a(Lcma;Landroid/content/Context;)V

    .line 151
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->onAttach(Landroid/app/Activity;)V

    .line 84
    :try_start_0
    check-cast p1, Lgbz;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->i:Lgbz;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 73
    const-string/jumbo v1, "favorite_selection"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->g:I

    .line 76
    :cond_0
    sget-object v1, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "favorite.list.appear"

    invoke-static {v1, v2, v3}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 94
    sget v1, Lfzs$g;->favorite_list:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "view":Landroid/view/View;
    sget v1, Lfzs$f;->swipe_layout_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 96
    sget v1, Lfzs$f;->loading_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->m:Landroid/view/ViewStub;

    .line 97
    sget v1, Lfzs$f;->listview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->a:Landroid/widget/ListView;

    .line 98
    sget v1, Lfzs$f;->empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->o:Landroid/widget/RelativeLayout;

    .line 99
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 101
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 102
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;)V

    .line 103
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v3, 0x0

    sget v4, Lfzs$c;->swipe_refresh_color1:I

    aput v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lfzs$c;->swipe_refresh_color2:I

    aput v4, v2, v3

    const/4 v3, 0x2

    sget v4, Lfzs$c;->swipe_refresh_color1:I

    aput v4, v2, v3

    const/4 v3, 0x3

    sget v4, Lfzs$c;->swipe_refresh_color2:I

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorScheme([I)V

    .line 105
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->m:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 106
    return-object v0
.end method
