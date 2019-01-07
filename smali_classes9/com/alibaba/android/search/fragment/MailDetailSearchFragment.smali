.class public Lcom/alibaba/android/search/fragment/MailDetailSearchFragment;
.super Lcom/alibaba/android/search/fragment/MailSearchFragment;
.source "MailDetailSearchFragment.java"


# instance fields
.field private D:Leri$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/MailSearchFragment;-><init>()V

    .line 55
    new-instance v0, Lcom/alibaba/android/search/fragment/MailDetailSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/MailDetailSearchFragment$1;-><init>(Lcom/alibaba/android/search/fragment/MailDetailSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/MailDetailSearchFragment;->D:Leri$b;

    return-void
.end method


# virtual methods
.method protected final g()Z
    .locals 1

    .prologue
    .line 52
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
    .line 39
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/MailSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 41
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MailDetailSearchFragment;->z:Leqp$a;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MailDetailSearchFragment;->z:Leqp$a;

    invoke-interface {v0}, Leqp$a;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/fragment/MailDetailSearchFragment;->b(Ljava/util/List;)V

    .line 48
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v1, Lerj;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/MailDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MailDetailSearchFragment;->D:Leri$b;

    invoke-direct {v1, v0, v2}, Lerj;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leri$b;)V

    .line 45
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MailDetailSearchFragment;->z:Leqp$a;

    new-instance v1, Leoe;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MailDetailSearchFragment;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/MailDetailSearchFragment;->B:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v3

    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->SOURCE_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->getValue()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Leoe;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Leqp$a;->a(Leoe;)V

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MailDetailSearchFragment;->z:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/MailDetailSearchFragment;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Leqp$a;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
