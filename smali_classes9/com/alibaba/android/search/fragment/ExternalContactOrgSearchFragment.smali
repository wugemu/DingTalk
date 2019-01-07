.class public Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;
.super Lcom/alibaba/android/search/fragment/BaseSearchFragment;
.source "ExternalContactOrgSearchFragment.java"

# interfaces
.implements Leqx$b;


# instance fields
.field protected D:J

.field public E:Lcbz;

.field private F:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 144
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->a(I)V

    .line 145
    return-void
.end method

.method protected a(ILjava/util/List;)V
    .locals 5
    .param p1, "total"    # I
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

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->t:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->v:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->u:Landroid/widget/TextView;

    sget v1, Lemt$g;->dt_search_result_org_count_at:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->t:Landroid/widget/TextView;

    sget v1, Lemt$g;->search_more_result:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->v:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)V
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
    .line 77
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->b(Ljava/util/List;)V

    .line 78
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->E:Lcbz;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->E:Lcbz;

    iget v1, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->F:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcbz;->a(ILjava/util/List;)V

    .line 154
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->a(I)V

    .line 140
    return-void
.end method

.method public final b(ILjava/util/List;)V
    .locals 2
    .param p1, "total"    # I
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

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 82
    .line 1077
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-virtual {p0, p2}, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->b(Ljava/util/List;)V

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->a(ILjava/util/List;)V

    .line 85
    iput p1, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->F:I

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->E:Lcbz;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->E:Lcbz;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcbz;->a(ILjava/util/List;)V

    .line 89
    :cond_0
    return-void
.end method

.method protected final b(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 112
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/search/external_org_search.html"

    new-instance v2, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment$1;-><init>(Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 121
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Lcom/alibaba/android/search/SearchGroupType;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->EXTERNAL_ORG:Lcom/alibaba/android/search/SearchGroupType;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->D:J

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->z:Leqp$a;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->z:Leqp$a;

    invoke-interface {v0}, Leqp$a;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->b(Ljava/util/List;)V

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->r()V

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->z:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Leqp$a;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected r()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 67
    new-instance v1, Leqy;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-wide v4, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->D:J

    const/4 v6, 0x3

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Leqy;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqx$b;JI)V

    .line 68
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Leqx$a;

    .line 2072
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->z:Leqp$a;

    .line 43
    return-void
.end method

.method protected final z_()I
    .locals 1

    .prologue
    .line 107
    sget v0, Lemt$g;->dt_search_result_org_count_at:I

    return v0
.end method
