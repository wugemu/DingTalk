.class public Lcom/alibaba/android/user/crm/activity/AddCustomerActivity;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;
.source "AddCustomerActivity.java"

# interfaces
.implements Lfio;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/Serializable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 83
    .local p1, "object":Ljava/io/Serializable;, "TT;"
    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 84
    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 86
    .local v1, "contact":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 87
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    sget-object v3, Lezh;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, "primaryKey="

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->cid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&corpId="

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/crm/activity/AddCustomerActivity;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v2, v4}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/AddCustomerActivity;->finish()V

    .line 91
    .end local v0    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v1    # "contact":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/AddCustomerActivity;->f:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/AddCustomerActivity;->f:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lezg$h;->ll_search:I

    return v0
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "isRemove"    # Z

    .prologue
    .line 79
    return-void
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lezg$j;->activity_add_customer:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;-><init>(Lfio;)V

    aput-object v1, v0, v3

    .line 1110
    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->c:[Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/AddCustomerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "corp_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/AddCustomerActivity;->e:Ljava/lang/String;

    .line 2058
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2059
    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2061
    new-instance v1, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    invoke-direct {v1}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/crm/activity/AddCustomerActivity;->f:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    .line 2062
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/AddCustomerActivity;->f:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2063
    new-instance v0, Lcoi;

    sget v1, Lezg$h;->ll_fragment_container:I

    invoke-direct {v0, p0, v1}, Lcoi;-><init>(Landroid/support/v4/app/FragmentActivity;I)V

    .line 2064
    const-class v1, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/AddCustomerActivity;->f:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    .line 2082
    invoke-virtual {v0, v1, v2, v3}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/AddCustomerActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->tab_local_contact:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 55
    return-void
.end method
