.class final Lcom/alibaba/android/search/activity/DingSearchActivity$3;
.super Ljava/lang/Object;
.source "DingSearchActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/activity/DingSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/activity/DingSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/activity/DingSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/activity/DingSearchActivity;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity$3;->a:Lcom/alibaba/android/search/activity/DingSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 167
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity$3;->a:Lcom/alibaba/android/search/activity/DingSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/search/activity/DingSearchActivity;->b(Lcom/alibaba/android/search/activity/DingSearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "ding_list_search_cancel_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity$3;->a:Lcom/alibaba/android/search/activity/DingSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/search/activity/DingSearchActivity;->b(Lcom/alibaba/android/search/activity/DingSearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 176
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 174
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity$3;->a:Lcom/alibaba/android/search/activity/DingSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/search/activity/DingSearchActivity;->b(Lcom/alibaba/android/search/activity/DingSearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method
