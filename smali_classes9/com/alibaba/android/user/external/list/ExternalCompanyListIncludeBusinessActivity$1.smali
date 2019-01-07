.class final Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$1;
.super Ljava/lang/Object;
.source "ExternalCompanyListIncludeBusinessActivity.java"

# interfaces
.implements Lcbz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;)V
    .locals 7
    .param p1, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->c(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    sget v5, Lezg$l;->dt_contact_contacts_with_count_at:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    invoke-static {v6, p1}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->a(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    .line 132
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->d(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;)Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 133
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->d(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;)Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    sget v5, Lezg$l;->dt_externalcontact_search_org_contact_title_AT:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-lez p1, :cond_3

    .line 1063
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;->isDetached()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1067
    if-eqz v1, :cond_4

    .line 1068
    iget-object v1, v3, Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1069
    iget-object v1, v3, Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    invoke-static {v1, p2}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->a(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;Ljava/util/List;)Ljava/util/List;

    .line 138
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->e(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/base/fragments/ArgumentsRefreshableFragment;

    if-eqz v1, :cond_0

    .line 139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "org_id"

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->f(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 142
    const-string/jumbo v1, "conversation_total_members_count"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    const-string/jumbo v1, "uid_list"

    invoke-static {p2}, Lcob;->c(Ljava/util/List;)[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 145
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->e(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/fragments/ArgumentsRefreshableFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkim/base/fragments/ArgumentsRefreshableFragment;->a(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    move v1, v2

    .line 133
    goto :goto_1

    .line 1071
    :cond_4
    iget-object v1, v3, Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
