.class public Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;
.super Lcom/alibaba/android/search/fragment/DeptSearchFragment;
.source "DeptDetailSearchFragment.java"


# instance fields
.field private D:Leqt$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/DeptSearchFragment;-><init>()V

    .line 31
    new-instance v0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment$1;-><init>(Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;->D:Leqt$b;

    return-void
.end method


# virtual methods
.method protected final g()Z
    .locals 1

    .prologue
    .line 83
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
    .line 70
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/DeptSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;->z:Leqp$a;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;->z:Leqp$a;

    invoke-interface {v0}, Leqp$a;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;->b(Ljava/util/List;)V

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v1, Lequ;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;->D:Leqt$b;

    invoke-direct {v1, v0, v2}, Lequ;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqt$b;)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;->z:Leqp$a;

    new-instance v1, Leoe;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;->B:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v3

    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->SOURCE_HYBRID:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->getValue()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Leoe;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Leqp$a;->a(Leoe;)V

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;->z:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Leqp$a;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
