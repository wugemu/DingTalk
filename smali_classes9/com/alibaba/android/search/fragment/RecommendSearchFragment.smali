.class public Lcom/alibaba/android/search/fragment/RecommendSearchFragment;
.super Lcom/alibaba/android/search/fragment/BaseSearchFragment;
.source "RecommendSearchFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 57
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->a(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/RecommendSearchFragment;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/RecommendSearchFragment;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/RecommendSearchFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/RecommendSearchFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_0
    return-void
.end method

.method protected final g()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Lcom/alibaba/android/search/SearchGroupType;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->RECOMMEND:Lcom/alibaba/android/search/SearchGroupType;

    return-object v0
.end method

.method protected final i()Z
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/RecommendSearchFragment;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/RecommendSearchFragment;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/RecommendSearchFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final z_()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lemt$g;->dt_search_group_most_seached_result:I

    return v0
.end method
