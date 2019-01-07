.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity$2;
.super Ljava/lang/Object;
.source "MiniAppListActivity.java"

# interfaces
.implements Lhmc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/util/List;)V
    .locals 8
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "listItemModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 77
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;)Lheq;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 78
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;)Lheq;

    move-result-object v3

    .line 1269
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1270
    :cond_0
    iput-boolean v0, v3, Lheq;->m:Z

    .line 2235
    :cond_1
    :goto_0
    iget-object v2, v3, Lheq;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2236
    iget-object v2, v3, Lheq;->l:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x3

    iget-object v5, v3, Lheq;->g:Landroid/app/Activity;

    iget-object v6, v3, Lheq;->h:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-static {v2, v4, v5, v6}, Lhfa;->a(Landroid/view/ViewGroup;ILandroid/app/Activity;Landroid/support/v7/widget/RecyclerView$LayoutManager;)Lhes;

    move-result-object v4

    .line 3146
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lhes;->a()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_a

    .line 4251
    :cond_2
    :goto_1
    iget-object v2, v3, Lheq;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 5162
    iget-object v2, v3, Lhek;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_e

    move v2, v1

    .line 4251
    :goto_2
    if-nez v2, :cond_3

    iget-boolean v2, v3, Lheq;->o:Z

    if-nez v2, :cond_f

    .line 1212
    :cond_3
    :goto_3
    invoke-virtual {v3}, Lheq;->notifyDataSetChanged()V

    .line 80
    :cond_4
    return-void

    .line 1274
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v4, 0x14

    if-ge v2, v4, :cond_9

    .line 1275
    iput-boolean v0, v3, Lheq;->m:Z

    .line 1281
    :goto_4
    iget v2, v3, Lheq;->j:I

    if-eqz v2, :cond_6

    if-eqz p1, :cond_7

    .line 1282
    :cond_6
    iget-object v2, v3, Lheq;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1283
    iput v0, v3, Lheq;->j:I

    .line 1284
    const/4 v2, -0x1

    iput v2, v3, Lheq;->k:I

    .line 1287
    :cond_7
    invoke-virtual {v3}, Lheq;->c()V

    .line 1288
    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1289
    invoke-virtual {v3}, Lheq;->b()V

    .line 1291
    :cond_8
    iget-object v2, v3, Lheq;->i:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1292
    iget v2, v3, Lheq;->j:I

    iget-object v4, v3, Lheq;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v3, Lheq;->j:I

    .line 1293
    iget v2, v3, Lheq;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Lheq;->k:I

    .line 1295
    iget v2, v3, Lheq;->n:I

    if-lez v2, :cond_1

    iget v2, v3, Lheq;->j:I

    iget v4, v3, Lheq;->n:I

    if-lt v2, v4, :cond_1

    .line 1296
    iput-boolean v0, v3, Lheq;->m:Z

    goto :goto_0

    .line 1277
    :cond_9
    iput-boolean v1, v3, Lheq;->m:Z

    goto :goto_4

    .line 3149
    :cond_a
    invoke-virtual {v4}, Lhes;->a()Landroid/view/View;

    move-result-object v2

    .line 4048
    iget-object v5, v3, Lhek;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4073
    iget-object v6, v3, Lhek;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    if-gez v5, :cond_c

    :cond_b
    move v2, v0

    .line 3149
    :goto_5
    if-eqz v2, :cond_2

    .line 3150
    iget-object v2, v3, Lhek;->e:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lhes;->a()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 4077
    :cond_c
    iget-object v6, v3, Lhek;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4078
    iget-object v6, v3, Lhek;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 4079
    iget-object v6, v3, Lhek;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4080
    invoke-virtual {v3, v5}, Lhek;->notifyItemInserted(I)V

    :goto_6
    move v2, v1

    .line 4085
    goto :goto_5

    .line 4082
    :cond_d
    iget-object v5, v3, Lhek;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4083
    iget-object v2, v3, Lhek;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Lhek;->notifyItemInserted(I)V

    goto :goto_6

    :cond_e
    move v2, v0

    .line 5162
    goto/16 :goto_2

    .line 4254
    :cond_f
    iget-object v2, v3, Lheq;->l:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x4

    iget-object v5, v3, Lheq;->g:Landroid/app/Activity;

    iget-object v6, v3, Lheq;->h:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-static {v2, v4, v5, v6}, Lhfa;->a(Landroid/view/ViewGroup;ILandroid/app/Activity;Landroid/support/v7/widget/RecyclerView$LayoutManager;)Lhes;

    move-result-object v2

    .line 6126
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lhes;->a()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 6129
    invoke-virtual {v2}, Lhes;->a()Landroid/view/View;

    move-result-object v4

    .line 7110
    iget-object v5, v3, Lhek;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 6129
    :goto_7
    if-eqz v0, :cond_3

    .line 6130
    iget-object v0, v3, Lhek;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lhes;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 7113
    :cond_10
    iget-object v0, v3, Lhek;->d:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7114
    iget-object v0, v3, Lhek;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7115
    invoke-virtual {v3}, Lhek;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Lhek;->notifyItemInserted(I)V

    move v0, v1

    .line 7116
    goto :goto_7
.end method
