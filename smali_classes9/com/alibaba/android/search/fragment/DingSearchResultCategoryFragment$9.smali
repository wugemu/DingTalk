.class final Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$9;
.super Ljava/lang/Object;
.source "DingSearchResultCategoryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$9;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 302
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$9;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$9;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$9;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)V

    .line 308
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$9;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->c(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;Z)Z

    .line 309
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$9;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;Z)Z

    .line 314
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$9;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->b(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$9;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->c(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 315
    .local v0, "isEmpty":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 316
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$9;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->d(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)V

    goto :goto_0

    .line 318
    :cond_3
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v2, "ding_list_search_result_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$9;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->e(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)V

    goto :goto_0
.end method
