.class public Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;
.super Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;
.source "ExternalContactDetailSearchFragment.java"


# instance fields
.field public D:Lcbz;

.field private S:Leqz$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;-><init>()V

    .line 60
    new-instance v0, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment$1;-><init>(Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;->S:Leqz$b;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;)Lcbz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;->D:Lcbz;

    return-object v0
.end method


# virtual methods
.method protected final g()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;->z:Leqp$a;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;->z:Leqp$a;

    invoke-interface {v0}, Leqp$a;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;->b(Ljava/util/List;)V

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v0, Lera;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-wide v2, p0, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;->F:J

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v5, "intent_key_search_exactly"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p0, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;->S:Leqz$b;

    invoke-direct/range {v0 .. v5}, Lera;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;JZLeqz$b;)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;->z:Leqp$a;

    new-instance v1, Leoe;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;->B:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v3

    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->SOURCE_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->getValue()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Leoe;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Leqp$a;->a(Leoe;)V

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;->z:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Leqp$a;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
