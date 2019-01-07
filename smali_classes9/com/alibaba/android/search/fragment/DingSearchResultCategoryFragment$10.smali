.class final Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;
.super Ljava/lang/Object;
.source "DingSearchResultCategoryFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/search/model/DingSearchResultModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    iput-object p2, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/DingSearchResultModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "resultModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/DingSearchResultModel;>;"
    const/4 v9, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 391
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->f(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;I)I

    .line 392
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->g(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)I

    move-result v4

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->a:Ljava/util/List;

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    add-int/2addr v0, v4

    invoke-static {v3, v0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->b(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;I)I

    .line 393
    if-eqz p1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->h(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->a:Ljava/util/List;

    .line 397
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .line 398
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->h(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v9, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .line 399
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->f(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_4

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->c(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;Z)Z

    .line 401
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->h(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v0, v1}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->d(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;Z)Z

    .line 402
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->h(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .line 403
    invoke-static {v2}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->i(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .line 404
    invoke-static {v3}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->j(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .line 405
    invoke-static {v4}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->k(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .line 406
    invoke-static {v5}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->l(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .line 407
    invoke-static {v6}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->m(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/widget/ListView;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .line 408
    invoke-static {v7}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->n(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .line 409
    invoke-static {v8}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->o(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Lemw;

    move-result-object v8

    .line 402
    invoke-static/range {v0 .. v9}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/ListView;Landroid/view/View;Lemw;I)V

    .line 414
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->r(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)V

    .line 415
    return-void

    .line 392
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto/16 :goto_0

    .line 412
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->g(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)I

    move-result v0

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->p(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->b:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->q(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Lcca;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lenu;->b(IILjava/lang/String;Lcca;)V

    goto :goto_1
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 382
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[DingSearchResultCategory]processSenderResult failed, code:"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 1050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->a(Ljava/util/List;)V

    .line 384
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 374
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 374
    check-cast p1, Ljava/util/List;

    .line 1377
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;->a(Ljava/util/List;)V

    .line 374
    return-void
.end method
