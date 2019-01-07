.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$1;
.super Ljava/lang/Object;
.source "CSpaceSearchFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Landroid/view/View;

    move-result-object v5

    if-ne v5, p2, :cond_3

    .line 194
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Landroid/widget/ProgressBar;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 198
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->getCount()I

    move-result v0

    .line 199
    .local v0, "count":I
    if-gtz v0, :cond_2

    .line 200
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v6}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->e(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)V

    goto :goto_0

    .line 206
    .end local v0    # "count":I
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 207
    .local v3, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "position"

    add-int/lit8 v6, p3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string/jumbo v5, "total_no"

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v6}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string/jumbo v5, "kw"

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v6}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "space_search_sort_click"

    invoke-interface {v5, v6, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 213
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 214
    .local v2, "object":Ljava/lang/Object;
    instance-of v5, v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v5, :cond_0

    move-object v1, v2

    .line 215
    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 216
    .local v1, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-static {v1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v4

    .line 217
    .local v4, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v4}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    goto :goto_0
.end method
