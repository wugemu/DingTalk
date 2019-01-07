.class final Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$5;
.super Landroid/content/BroadcastReceiver;
.source "ManageOrgMemberFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$5;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 296
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$5;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->F()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$5;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->c(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Lfjt;

    move-result-object v5

    if-nez v5, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    const-string/jumbo v5, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 301
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$5;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->d(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "activity_identify"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 304
    const-string/jumbo v5, "choose_user_identities"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 305
    .local v0, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$5;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v5, v0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->a(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;Ljava/util/List;)V

    goto :goto_0

    .line 306
    .end local v0    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_2
    const-string/jumbo v5, "com.workapp.choose.people.from.dept"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 307
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$5;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->d(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "activity_identify"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 310
    new-instance v2, Lfrt;

    invoke-direct {v2}, Lfrt;-><init>()V

    .line 311
    .local v2, "orgDeptExtensionObject":Lfrt;
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$5;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->e(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$5;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->e(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v5, :cond_0

    .line 314
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$5;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->e(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iput-object v5, v2, Lfrt;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 315
    const-string/jumbo v5, "choose_user_identities"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 316
    .local v3, "selectEmployeeLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v5, v2, Lfrt;->e:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 317
    iget-object v5, v2, Lfrt;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 321
    :goto_1
    if-eqz v3, :cond_4

    .line 322
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 323
    .local v4, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;-><init>()V

    .line 324
    .local v1, "newModel":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    iget-object v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    iput-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    .line 325
    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    .line 326
    iget-object v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    iput-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserMobile:Ljava/lang/String;

    .line 327
    iget-object v6, v2, Lfrt;->e:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 319
    .end local v1    # "newModel":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    .end local v4    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lfrt;->e:Ljava/util/List;

    goto :goto_1

    .line 330
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$5;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v5, v2}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->a(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;Lfrt;)V

    goto/16 :goto_0

    .line 335
    .end local v2    # "orgDeptExtensionObject":Lfrt;
    .end local v3    # "selectEmployeeLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_5
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$5;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->a(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;Z)V

    goto/16 :goto_0
.end method
