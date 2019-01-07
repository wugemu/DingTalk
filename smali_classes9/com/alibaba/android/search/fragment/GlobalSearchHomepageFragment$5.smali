.class final Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$5;
.super Ljava/lang/Object;
.source "GlobalSearchHomepageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$5;->a:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    if-eqz v2, :cond_0

    .line 419
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    .line 420
    .local v0, "historyItem":Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;
    iget-object v1, v0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    .line 421
    .local v1, "historyModel":Lcom/alibaba/android/search/model/BaseModel;
    if-nez v1, :cond_1

    .line 441
    .end local v0    # "historyItem":Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;
    .end local v1    # "historyModel":Lcom/alibaba/android/search/model/BaseModel;
    :cond_0
    :goto_0
    return-void

    .line 425
    .restart local v0    # "historyItem":Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;
    .restart local v1    # "historyModel":Lcom/alibaba/android/search/model/BaseModel;
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Msg:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    if-eq v2, v3, :cond_2

    .line 426
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/search/model/BaseModel$ModelType;->SuggestionGuide:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    if-ne v2, v3, :cond_5

    .line 427
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$5;->a:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->e(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 428
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$5;->a:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->e(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;->a(Ljava/lang/String;)V

    .line 431
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$5;->a:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;ILjava/lang/String;)V

    .line 437
    :goto_1
    invoke-static {}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a()Lcom/alibaba/android/search/service/SearchHistoryManager;

    move-result-object v2

    .line 1680
    if-eqz v0, :cond_4

    iget-object v3, v2, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1681
    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->timestamp:J

    .line 1682
    iget-object v3, v2, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    iget-object v4, v2, Lcom/alibaba/android/search/service/SearchHistoryManager;->i:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1683
    invoke-static {}, Lcom/alibaba/android/search/service/SearchHistoryManager;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 438
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$5;->a:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)V

    goto :goto_0

    .line 433
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$5;->a:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/android/search/model/BaseModel;->onClick(Landroid/app/Activity;Landroid/view/View;)V

    .line 434
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$5;->a:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;ILjava/lang/String;)V

    goto :goto_1
.end method
