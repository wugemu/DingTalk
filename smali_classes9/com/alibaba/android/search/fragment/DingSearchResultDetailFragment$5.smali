.class final Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;
.super Ljava/lang/Object;
.source "DingSearchResultDetailFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;
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

.field final synthetic b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    iput-object p2, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 7
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

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "resultModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/DingSearchResultModel;>;"
    const/4 v1, 0x0

    .line 259
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->g(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)I

    move-result v3

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->a:Ljava/util/List;

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-static {v2, v0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->c(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;I)I

    .line 260
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->h(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->d(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;I)I

    .line 261
    if-eqz p1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 263
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->i(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->e(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;I)I

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->a:Ljava/util/List;

    if-nez v0, :cond_6

    move v6, v1

    .line 267
    .local v6, "allResultSize":I
    :goto_1
    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->i(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)I

    move-result v0

    const/16 v2, 0xf

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->h(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_7

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->j(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)V

    .line 269
    if-nez v6, :cond_2

    .line 270
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;Z)Z

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 273
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->k(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    move-result-object v0

    sget-object v2, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->BODY:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    if-ne v0, v2, :cond_3

    .line 274
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/search/model/DingSearchResultModel$a;

    invoke-direct {v2}, Lcom/alibaba/android/search/model/DingSearchResultModel$a;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 276
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->l(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)Lemw;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lemw;->a(Ljava/util/List;)V

    .line 278
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->m(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)V

    .line 279
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->b(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;Z)Z

    .line 283
    :goto_2
    return-void

    .line 259
    .end local v6    # "allResultSize":I
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto/16 :goto_0

    .line 266
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_1

    .line 281
    .restart local v6    # "allResultSize":I
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->g(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)I

    move-result v1

    const/16 v2, 0x14

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->n(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v4}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->k(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->b:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v5}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->o(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)Lcca;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;IILjava/lang/String;Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;Lcca;)V

    goto :goto_2
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

    .line 250
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[DingSearchResultDetail]processResult failed, code:"

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

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->a(Ljava/util/List;)V

    .line 252
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 242
    check-cast p1, Ljava/util/List;

    .line 1245
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;->a(Ljava/util/List;)V

    .line 242
    return-void
.end method
