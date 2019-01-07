.class public abstract Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "CreateOrgFragment.java"


# instance fields
.field a:Z

.field private b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->a:Z

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;)V
.end method

.method public abstract b(Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;)V
.end method

.method public final c()J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 80
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getMaxDeptId()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    .line 81
    .local v0, "id":J
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->setMaxDeptId(J)V

    .line 82
    return-wide v0
.end method

.method public final d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 87
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->F()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, "view":Landroid/view/View;
    const-string/jumbo v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 90
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 94
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {}, Lfku;->a()Lfku;

    move-result-object v0

    invoke-virtual {v0}, Lfku;->b()Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    .line 44
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    invoke-direct {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->setOrgDeptList(Ljava/util/List;)V

    .line 47
    invoke-static {}, Lfku;->a()Lfku;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    .line 1062
    iput-object v1, v0, Lfku;->a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    .line 1063
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    iput-wide v2, v0, Lfku;->b:J

    .line 49
    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onHiddenChanged(Z)V

    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->a(Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;)V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->a:Z

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->b(Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onStart()V

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->b(Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;)V

    .line 55
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onStop()V

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->a(Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;)V

    .line 61
    return-void
.end method
