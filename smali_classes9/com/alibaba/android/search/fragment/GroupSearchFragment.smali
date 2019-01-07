.class public Lcom/alibaba/android/search/fragment/GroupSearchFragment;
.super Lcom/alibaba/android/search/fragment/BaseSearchFragment;
.source "GroupSearchFragment.java"


# instance fields
.field private D:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
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
    .line 152
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->a(Landroid/view/View;)V

    .line 153
    sget v0, Lemt$e;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lemt$g;->dt_global_search_network_group:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 154
    sget v0, Lemt$e;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_search_public_group:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    return-void
.end method

.method protected final a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V
    .locals 1
    .param p1, "clickLogModel"    # Lcom/alibaba/android/search/model/SearchClickLogModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 109
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_MY_GROUP_MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionCode(I)V

    .line 110
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->b(Ljava/util/List;)V

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->j()V

    .line 96
    return-void
.end method

.method protected final c(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 139
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/search/search_more.html"

    new-instance v2, Lcom/alibaba/android/search/fragment/GroupSearchFragment$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/fragment/GroupSearchFragment$2;-><init>(Lcom/alibaba/android/search/fragment/GroupSearchFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 148
    return-void
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Lcom/alibaba/android/search/SearchGroupType;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->MY_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    return-object v0
.end method

.method protected final l()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 134
    iget v0, p0, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    new-instance v1, Lcom/alibaba/android/search/fragment/GroupSearchFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/GroupSearchFragment$1;-><init>(Lcom/alibaba/android/search/fragment/GroupSearchFragment;)V

    iput-object v1, p0, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->D:Landroid/content/BroadcastReceiver;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.alibaba.android.rimet.search.groupid.join"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 83
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->j()V

    .line 89
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->D:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->D:Landroid/content/BroadcastReceiver;

    .line 104
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->onDestroy()V

    .line 105
    return-void
.end method

.method protected final z_()I
    .locals 1

    .prologue
    .line 114
    sget v0, Lemt$g;->search_group_group:I

    return v0
.end method
