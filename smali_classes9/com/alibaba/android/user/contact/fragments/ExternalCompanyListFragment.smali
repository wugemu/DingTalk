.class public Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "ExternalCompanyListFragment.java"


# instance fields
.field public a:Landroid/support/v4/app/Fragment;

.field public b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;->a:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;->getChildFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lezg$h;->ll_container:I

    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 48
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_des:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;->b:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lezg$j;->external_company_list_activity:I

    return v0
.end method
