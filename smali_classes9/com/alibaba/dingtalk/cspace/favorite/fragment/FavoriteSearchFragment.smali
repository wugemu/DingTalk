.class public Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;
.super Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;
.source "FavoriteSearchFragment.java"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lgca;

.field public l:Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgcw;",
            ">;"
        }
    .end annotation
.end field

.field public n:I

.field public o:Ljava/lang/String;

.field p:Landroid/view/View$OnTouchListener;

.field q:Landroid/widget/AdapterView$OnItemClickListener;

.field r:Lgcv;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Landroid/widget/GridView;

.field private x:Landroid/widget/TextView;

.field private y:Ljava/lang/String;

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->n:I

    .line 110
    new-instance v0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->p:Landroid/view/View$OnTouchListener;

    .line 121
    new-instance v0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->q:Landroid/widget/AdapterView$OnItemClickListener;

    .line 268
    new-instance v0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$3;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->r:Lgcv;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->n:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)Lgca;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->B:Lgca;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    .line 7185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7188
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->m:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 7189
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgcw;

    .line 8052
    iget-object v2, v0, Lgcw;->a:Ljava/lang/String;

    .line 7190
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7191
    const/4 v2, 0x0

    .line 8056
    iput-boolean v2, v0, Lgcw;->e:Z

    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->l:Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    .prologue
    .line 41
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->n:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 310
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->v:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    return-void
.end method

.method public final a(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 300
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 307
    :goto_0
    return-void

    .line 302
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->f:Z

    .line 303
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->e:Z

    .line 304
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->h()V

    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lgcw;)V
    .locals 5
    .param p1, "checkTypeItem"    # Lgcw;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 166
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 167
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 168
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->x:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "checkType":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 2052
    iget-object v0, p1, Lgcw;->a:Ljava/lang/String;

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->m:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 175
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgcw;

    .line 3052
    .local v1, "typeItem":Lgcw;
    iget-object v2, v1, Lgcw;->a:Ljava/lang/String;

    .line 176
    if-eqz v2, :cond_1

    .line 4052
    iget-object v2, v1, Lgcw;->a:Ljava/lang/String;

    .line 176
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 4056
    :goto_1
    iput-boolean v2, v1, Lgcw;->e:Z

    goto :goto_0

    :cond_1
    move v2, v3

    .line 176
    goto :goto_1

    .line 178
    .end local v1    # "typeItem":Lgcw;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->l:Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter;

    if-eqz v2, :cond_3

    .line 179
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->l:Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter;->notifyDataSetChanged()V

    .line 182
    :cond_3
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;I)V
    .locals 8
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 225
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->A:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->A:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->z:Ljava/util/List;

    if-ne p1, v0, :cond_2

    if-nez p3, :cond_2

    .line 243
    :goto_0
    return-void

    .line 229
    :cond_2
    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->A:Ljava/lang/String;

    .line 230
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->z:Ljava/util/List;

    .line 231
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 232
    .local v7, "property":Ljava/util/Map;
    const-string/jumbo v1, "type"

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->o:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_1
    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string/jumbo v1, "word"

    if-nez p2, :cond_4

    const-string/jumbo v0, ""

    :goto_2
    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "collection_search_click"

    invoke-interface {v0, v1, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 238
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4265
    invoke-static {}, Lgas;->a()Lgas;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->y:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->n:I

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->r:Lgcv;

    .line 5110
    invoke-static {}, Lgcu;->a()Lgcu;

    move-result-object v3

    .line 5281
    iget-object v0, v3, Lgcu;->a:Ljava/lang/String;

    invoke-static {v0}, Lth;->b(Ljava/lang/String;)Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;

    move-result-object v0

    const/16 v5, 0xa

    invoke-virtual {v3, v2}, Lgcu;->a(Lgcv;)Lxv;

    move-result-object v6

    move-object v2, p2

    move-object v3, p1

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;->searchFavoriteFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IILxv;)V

    goto :goto_0

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->o:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v0, p2

    .line 233
    goto :goto_2

    .line 5295
    :cond_5
    invoke-static {}, Lgcu;->a()Lgcu;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->r:Lgcv;

    .line 6270
    iget-object v2, v0, Lgcu;->a:Ljava/lang/String;

    invoke-static {v2}, Lth;->b(Ljava/lang/String;)Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;

    move-result-object v2

    invoke-virtual {v0, v1}, Lgcu;->a(Lgcv;)Lxv;

    move-result-object v0

    invoke-interface {v2, p2, p1, v0}, Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;->searchFavoriteFromLocal(Ljava/lang/String;Ljava/util/List;Lxv;)V

    goto :goto_0
.end method

.method protected final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 220
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->d()V

    .line 221
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->z:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->A:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->n:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a(Ljava/util/List;Ljava/lang/String;I)V

    .line 222
    return-void
.end method

.method protected final h()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 317
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->h()V

    .line 318
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 320
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->c:Lgbd;

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Lgbd;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lgbd;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->c:Lgbd;

    .line 324
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->c:Lgbd;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 330
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->f()V

    .line 344
    :goto_1
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->c:Lgbd;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgbd;->a(Ljava/util/List;)V

    .line 327
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->c:Lgbd;

    invoke-virtual {v0}, Lgbd;->notifyDataSetChanged()V

    goto :goto_0

    .line 333
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->e:Z

    if-eqz v0, :cond_2

    .line 334
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->e()V

    .line 336
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->g()V

    goto :goto_1

    .line 341
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->m:Ljava/util/List;

    .line 1199
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->m:Ljava/util/List;

    new-instance v0, Lgcw;

    const-string/jumbo v1, "link"

    sget v2, Lfzs$h;->search_type_link:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lfzs$e;->favorite_link_normal:I

    sget v4, Lfzs$e;->favorite_link_pressed:I

    sget v5, Lfzs$e;->favorite_type_link:I

    invoke-direct/range {v0 .. v5}, Lgcw;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->m:Ljava/util/List;

    new-instance v0, Lgcw;

    const-string/jumbo v1, "pic"

    sget v2, Lfzs$h;->search_type_image:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lfzs$e;->favorite_pic_normal:I

    sget v4, Lfzs$e;->favorite_pic_pressed:I

    sget v5, Lfzs$e;->favorite_type_pic:I

    invoke-direct/range {v0 .. v5}, Lgcw;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1201
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->m:Ljava/util/List;

    new-instance v0, Lgcw;

    const-string/jumbo v1, "audio"

    sget v2, Lfzs$h;->search_type_audio:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lfzs$e;->favorite_audio_normal:I

    sget v4, Lfzs$e;->favorite_audio_pressed:I

    sget v5, Lfzs$e;->favorite_type_audio:I

    invoke-direct/range {v0 .. v5}, Lgcw;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1203
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->m:Ljava/util/List;

    new-instance v0, Lgcw;

    const-string/jumbo v1, "file"

    sget v2, Lfzs$h;->search_type_file:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lfzs$e;->favorite_file_normal:I

    sget v4, Lfzs$e;->favorite_file_pressed:I

    sget v5, Lfzs$e;->favorite_type_file:I

    invoke-direct/range {v0 .. v5}, Lgcw;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1205
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->m:Ljava/util/List;

    new-instance v0, Lgcw;

    const-string/jumbo v1, "video"

    sget v2, Lfzs$h;->search_type_video:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lfzs$e;->favorite_video_normal:I

    sget v4, Lfzs$e;->favorite_video_pressed:I

    sget v5, Lfzs$e;->favorite_type_video:I

    invoke-direct/range {v0 .. v5}, Lgcw;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1207
    new-instance v0, Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->l:Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter;

    .line 1208
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->l:Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter;->a(Ljava/util/List;)V

    .line 1209
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->w:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->l:Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a:Landroid/widget/ListView;

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->B:Lgca;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->B:Lgca;

    invoke-interface {v0}, Lgca;->d()V

    .line 108
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->onAttach(Landroid/app/Activity;)V

    .line 74
    :try_start_0
    check-cast p1, Lgca;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->B:Lgca;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "space_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->y:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "favorite_selection"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->g:I

    .line 68
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lfzs$g;->activity_favorite_search:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "view":Landroid/view/View;
    sget v1, Lfzs$f;->rl_type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->v:Landroid/widget/RelativeLayout;

    .line 86
    sget v1, Lfzs$f;->gv_type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->w:Landroid/widget/GridView;

    .line 87
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->w:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->q:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    sget v1, Lfzs$f;->listview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a:Landroid/widget/ListView;

    .line 89
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 91
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 92
    sget v1, Lfzs$f;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->x:Landroid/widget/TextView;

    .line 94
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->p:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->v:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->p:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    return-object v0
.end method
