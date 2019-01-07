.class public Lcom/alibaba/android/search/fragment/ExternalContactOrgDetailSearchFragment;
.super Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;
.source "ExternalContactOrgDetailSearchFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(ILjava/util/List;)V
    .locals 5
    .param p1, "totalCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    const/4 v4, 0x0

    .line 41
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgDetailSearchFragment;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgDetailSearchFragment;->u:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgDetailSearchFragment;->v:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgDetailSearchFragment;->u:Landroid/widget/TextView;

    sget v1, Lemt$g;->dt_search_external_org_search_result_des_at2:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/fragment/ExternalContactOrgDetailSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgDetailSearchFragment;->m:Ljava/lang/String;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgDetailSearchFragment;->v:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final g()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method protected final r()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 55
    new-instance v1, Leqy;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/ExternalContactOrgDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-wide v2, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgDetailSearchFragment;->D:J

    invoke-direct {v1, v0, p0, v2, v3}, Leqy;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqx$b;J)V

    .line 56
    return-void
.end method
