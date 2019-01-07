.class final Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$7;
.super Ljava/lang/Object;
.source "DingSearchResultCategoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 273
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$7;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 276
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "ding_list_search_result_sendermore_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$7;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/activity/DingSearchActivity;

    sget-object v1, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->SENDER:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/activity/DingSearchActivity;->a(Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;)V

    .line 278
    return-void
.end method
