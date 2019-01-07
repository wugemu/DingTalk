.class public Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;
.super Lcom/alibaba/android/search/fragment/ContactSearchFragment;
.source "ContactDetailSearchFragment.java"


# instance fields
.field private N:I

.field private O:Lenj;

.field private P:Leqr$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;-><init>()V

    .line 113
    new-instance v0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment$1;-><init>(Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->P:Leqr$b;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 73
    instance-of v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 78
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->O:Lenj;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->O:Lenj;

    invoke-interface {v0, p1}, Lenj;->a(Ljava/util/Collection;)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->O:Lenj;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->a(Ljava/util/Collection;Lenj;)V

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->b(Ljava/util/List;)V

    .line 83
    return-void
.end method

.method protected final g()Z
    .locals 1

    .prologue
    .line 110
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
    .line 87
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->z:Leqp$a;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->z:Leqp$a;

    invoke-interface {v0}, Leqp$a;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->b(Ljava/util/List;)V

    .line 1066
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->O:Lenj;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leni;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    new-instance v0, Leni;

    iget v1, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->n:I

    invoke-direct {v0, p0, v1}, Leni;-><init>(Landroid/support/v4/app/Fragment;I)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->O:Lenj;

    .line 1068
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->O:Lenj;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->c:Landroid/widget/ListView;

    invoke-interface {v0, v1, v2}, Lenj;->a(Ljava/lang/String;Landroid/widget/ListView;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->O:Lenj;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->O:Lenj;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->m:Ljava/lang/String;

    invoke-interface {v0, v1}, Lenj;->a(Ljava/lang/String;)V

    .line 106
    :cond_1
    return-void

    .line 92
    :cond_2
    new-instance v1, Leqs;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->P:Leqr$b;

    invoke-direct {v1, v0, v2}, Leqs;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqr$b;)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->z:Leqp$a;

    check-cast v0, Leqs;

    iget v1, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->N:I

    invoke-virtual {v0, v1}, Leqs;->b(I)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->z:Leqp$a;

    check-cast v0, Leqs;

    iget-wide v2, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->E:J

    invoke-virtual {v0, v2, v3}, Leqs;->a(J)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->z:Leqp$a;

    iget v1, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->n:I

    invoke-interface {v0, v1}, Leqp$a;->a(I)V

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->z:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->C:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-interface {v0, v1}, Leqp$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->z:Leqp$a;

    new-instance v1, Leoe;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->B:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v3

    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->SOURCE_HYBRID:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->getValue()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Leoe;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Leqp$a;->a(Leoe;)V

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->z:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Leqp$a;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "intent_key_contact_search_kind_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->N:I

    .line 55
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->onDestroy()V

    .line 63
    return-void
.end method
