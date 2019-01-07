.class final Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "SelectedContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$7;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 519
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$7;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    const-string/jumbo v5, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 526
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$7;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->b(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "activity_identify"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 527
    const-string/jumbo v5, "choose_user_identities"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 528
    .local v1, "identityObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$7;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-static {v5, v1}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->a(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 532
    .end local v1    # "identityObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$7;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->c(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getIdentifyFlag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$7;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->c(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getIdentifyFlag()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "activity_identify"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 537
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "choose_user_identities"

    .line 538
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 539
    .restart local v1    # "identityObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$7;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->e(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 542
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "choose_department_array"

    .line 543
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 544
    .local v0, "deptObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$7;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->e(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 545
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$7;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$7;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->e(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v6

    .line 2053
    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 545
    invoke-static {v5, v6}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->a(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 547
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$7;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->k(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)V

    goto/16 :goto_0

    .line 548
    .end local v0    # "deptObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v1    # "identityObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_4
    const-string/jumbo v5, "com.workapp.org.employee.add"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 549
    const-string/jumbo v5, "SelectedContactsAddStaff"

    const-string/jumbo v6, "activity_identify"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 553
    const-string/jumbo v5, "employee_info"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 554
    .local v2, "newStaff":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v2, :cond_0

    .line 555
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    .line 556
    .local v4, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$7;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->c(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedUserList()Ljava/util/ArrayList;

    move-result-object v3

    .line 557
    .local v3, "selectedUserList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-nez v3, :cond_5

    .line 558
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "selectedUserList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .restart local v3    # "selectedUserList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_5
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$7;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->e(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 562
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$7;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$7;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->e(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v6

    .line 3053
    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 562
    invoke-static {v5, v6}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->a(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 564
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$7;->a:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->k(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)V

    goto/16 :goto_0
.end method
