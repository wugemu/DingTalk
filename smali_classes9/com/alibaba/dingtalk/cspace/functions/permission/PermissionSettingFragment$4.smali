.class final Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "PermissionSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

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
    .line 585
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    invoke-virtual {v6}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->F()Z

    move-result v6

    if-nez v6, :cond_0

    if-nez p2, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    const-string/jumbo v6, "activity_identify"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 590
    .local v3, "identifier":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "com.alibaba.dingtalk.space.link_setting"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 592
    const-string/jumbo v6, "link_share_data"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;

    .line 593
    .local v4, "linkShareAclResultObject":Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    invoke-static {v6}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->b(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;)Lgfn$a;

    move-result-object v6

    invoke-interface {v6, v4}, Lgfn$a;->a(Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;)V

    goto :goto_0

    .line 594
    .end local v4    # "linkShareAclResultObject":Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;
    :cond_2
    const-string/jumbo v6, "com.workapp.choose.people.from.contact"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    .line 1488
    const-string/jumbo v6, "PermissionSettingFragment"

    .line 594
    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 595
    const-string/jumbo v6, "choose_user_identities"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 596
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v6, "choose_department_array"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 597
    .local v2, "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    invoke-static {v6}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->b(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;)Lgfn$a;

    move-result-object v6

    invoke-interface {v6, v5}, Lgfn$a;->a(Ljava/util/List;)V

    .line 598
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    invoke-static {v6}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->b(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;)Lgfn$a;

    move-result-object v6

    invoke-interface {v6, v2}, Lgfn$a;->b(Ljava/util/List;)V

    goto :goto_0

    .line 599
    .end local v2    # "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_3
    const-string/jumbo v6, "choose_enterprise_group_conversation"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    .line 2488
    const-string/jumbo v6, "PermissionSettingFragment"

    .line 599
    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 600
    const-string/jumbo v6, "conversation"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 601
    .local v1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    invoke-static {v6}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->b(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;)Lgfn$a;

    move-result-object v6

    invoke-interface {v6, v1}, Lgfn$a;->c(Ljava/util/List;)V

    goto/16 :goto_0

    .line 602
    .end local v1    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    :cond_4
    const-string/jumbo v6, "com.alibaba.dingtalk.space.update_data"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 603
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    invoke-static {v6}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->b(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;)Lgfn$a;

    move-result-object v6

    invoke-interface {v6}, Lgfn$a;->a()V

    goto/16 :goto_0
.end method
