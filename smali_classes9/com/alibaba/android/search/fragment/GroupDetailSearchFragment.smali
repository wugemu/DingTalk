.class public Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;
.super Lcom/alibaba/android/search/fragment/GroupSearchFragment;
.source "GroupDetailSearchFragment.java"


# instance fields
.field private D:Lenj;

.field private E:Lerl$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;-><init>()V

    .line 106
    new-instance v0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment$1;-><init>(Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->E:Lerl$b;

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;)V
    .locals 1
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
    .line 77
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->D:Lenj;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->D:Lenj;

    invoke-interface {v0, p1}, Lenj;->a(Ljava/util/Collection;)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->D:Lenj;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->a(Ljava/util/Collection;Lenj;)V

    .line 81
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->b(Ljava/util/List;)V

    .line 82
    return-void
.end method

.method protected final g()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->z:Leqp$a;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->z:Leqp$a;

    invoke-interface {v0}, Leqp$a;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->b(Ljava/util/List;)V

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->D:Lenj;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->D:Lenj;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->m:Ljava/lang/String;

    invoke-interface {v0, v1}, Lenj;->a(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void

    .line 91
    :cond_1
    new-instance v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->E:Lerl$b;

    invoke-direct {v1, v0, v2}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerl$b;)V

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->z:Leqp$a;

    new-instance v1, Leoe;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->B:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v3

    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->SOURCE_HYBRID:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->getValue()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Leoe;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Leqp$a;->a(Leoe;)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->z:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Leqp$a;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "count_limit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->p:I

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "count_limit_tips"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->q:I

    .line 50
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 1069
    .local v0, "result":Landroid/view/View;
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->D:Lenj;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Leni;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1070
    new-instance v1, Leni;

    iget v2, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->n:I

    invoke-direct {v1, p0, v2}, Leni;-><init>(Landroid/support/v4/app/Fragment;I)V

    iput-object v1, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->D:Lenj;

    .line 1071
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->D:Lenj;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;->c:Landroid/widget/ListView;

    invoke-interface {v1, v2, v3}, Lenj;->a(Ljava/lang/String;Landroid/widget/ListView;)V

    .line 65
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->onDestroy()V

    .line 58
    return-void
.end method
