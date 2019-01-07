.class public Lcom/alibaba/android/search/fragment/DingDetailSearchFragment;
.super Lcom/alibaba/android/search/fragment/DingSearchFragment;
.source "DingDetailSearchFragment.java"


# instance fields
.field private E:Leqv$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/DingSearchFragment;-><init>()V

    .line 61
    new-instance v0, Lcom/alibaba/android/search/fragment/DingDetailSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/DingDetailSearchFragment$1;-><init>(Lcom/alibaba/android/search/fragment/DingDetailSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingDetailSearchFragment;->E:Leqv$b;

    return-void
.end method


# virtual methods
.method protected final g()Z
    .locals 1

    .prologue
    .line 58
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
    .line 40
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/DingSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 42
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingDetailSearchFragment;->z:Leqp$a;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingDetailSearchFragment;->z:Leqp$a;

    invoke-interface {v0}, Leqp$a;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/fragment/DingDetailSearchFragment;->b(Ljava/util/List;)V

    .line 49
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v1, Leqw;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/DingDetailSearchFragment;->E:Leqv$b;

    invoke-direct {v1, v0, v2}, Leqw;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqv$b;)V

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingDetailSearchFragment;->z:Leqp$a;

    new-instance v1, Leoe;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/DingDetailSearchFragment;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/DingDetailSearchFragment;->B:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v3

    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->SOURCE_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->getValue()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Leoe;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Leqp$a;->a(Leoe;)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingDetailSearchFragment;->z:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingDetailSearchFragment;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Leqp$a;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
