.class public Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;
.super Lcom/alibaba/android/search/fragment/FunctionSearchFragment;
.source "FunctionDetailSearchFragment.java"


# instance fields
.field private D:Lenj;

.field private E:Lerc$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/FunctionSearchFragment;-><init>()V

    .line 90
    new-instance v0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment$1;-><init>(Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->E:Lerc$b;

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
    .line 70
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->D:Lenj;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->D:Lenj;

    invoke-interface {v0, p1}, Lenj;->a(Ljava/util/Collection;)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->D:Lenj;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->a(Ljava/util/Collection;Lenj;)V

    .line 74
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/FunctionSearchFragment;->b(Ljava/util/List;)V

    .line 75
    return-void
.end method

.method protected final g()Z
    .locals 1

    .prologue
    .line 87
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
    .line 42
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/FunctionSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 44
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->z:Leqp$a;

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->z:Leqp$a;

    invoke-interface {v0}, Leqp$a;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->b(Ljava/util/List;)V

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->c:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->D:Lenj;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leni;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    new-instance v0, Leni;

    iget v1, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->n:I

    invoke-direct {v0, p0, v1}, Leni;-><init>(Landroid/support/v4/app/Fragment;I)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->D:Lenj;

    .line 1064
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->D:Lenj;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->c:Landroid/widget/ListView;

    invoke-interface {v0, v1, v2}, Lenj;->a(Ljava/lang/String;Landroid/widget/ListView;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->D:Lenj;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->D:Lenj;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->m:Ljava/lang/String;

    invoke-interface {v0, v1}, Lenj;->a(Ljava/lang/String;)V

    .line 59
    :cond_1
    return-void

    .line 47
    :cond_2
    new-instance v1, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->E:Lerc$b;

    invoke-direct {v1, v0, v2}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerc$b;)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->z:Leqp$a;

    new-instance v1, Leoe;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->B:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v3

    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->SOURCE_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->getValue()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Leoe;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Leqp$a;->a(Leoe;)V

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->z:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Leqp$a;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcom/alibaba/android/search/fragment/FunctionSearchFragment;->onDestroy()V

    .line 83
    return-void
.end method
