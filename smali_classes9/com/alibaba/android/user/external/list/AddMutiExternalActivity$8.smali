.class final Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$8;
.super Landroid/content/BroadcastReceiver;
.source "AddMutiExternalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$8;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 567
    if-nez p2, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    const-string/jumbo v7, "action_key_select_labels"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 571
    const-string/jumbo v7, "activity_identify"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, "identifyFlag":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 573
    iget-object v7, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$8;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    const-string/jumbo v8, "intent_key_label_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->a(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 574
    iget-object v7, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$8;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->d(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V

    goto :goto_0

    .line 576
    .end local v2    # "identifyFlag":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 577
    const-string/jumbo v7, "activity_identify"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 578
    .local v4, "indentifyFlag":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 580
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "choose_user_identities"

    .line 581
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 582
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v7, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$8;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->e(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 583
    if-eqz v6, :cond_3

    .line 584
    iget-object v7, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$8;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->e(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 587
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "choose_department_array"

    .line 588
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 589
    .local v0, "depts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v7, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$8;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->f(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 590
    if-eqz v0, :cond_4

    .line 591
    iget-object v7, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$8;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->f(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 594
    :cond_4
    iget-object v7, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$8;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->g(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V

    goto/16 :goto_0

    .line 595
    .end local v0    # "depts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_5
    const-string/jumbo v7, "IDENTIFIY_ADD_MUTI_EXTERNAL"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 596
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "choose_user_identities"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 597
    .local v3, "identityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 600
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 601
    .local v5, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v5, :cond_6

    .line 602
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    .line 603
    .local v1, "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    .line 604
    iget-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAvatarMediaId:Ljava/lang/String;

    .line 605
    iget-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    iput-object v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    .line 606
    iget-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    iput-object v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    .line 607
    iget-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->title:Ljava/lang/String;

    iput-object v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    .line 608
    iget-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->company:Ljava/lang/String;

    iput-object v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->companyName:Ljava/lang/String;

    .line 610
    iget-object v8, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$8;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->a(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/List;

    move-result-object v8

    new-instance v9, Lcom/alibaba/android/user/external/ExternalEditContract$a;

    invoke-direct {v9, v1}, Lcom/alibaba/android/user/external/ExternalEditContract$a;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 614
    .end local v1    # "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v5    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_7
    iget-object v7, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$8;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->h(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Z

    .line 615
    iget-object v7, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$8;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-virtual {v7}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->supportInvalidateOptionsMenu()V

    goto/16 :goto_0
.end method
