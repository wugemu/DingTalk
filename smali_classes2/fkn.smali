.class public final Lfkn;
.super Ljava/lang/Object;
.source "FragmentEngine.java"


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfkn;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lfkn;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lfip;Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "fragmentKey"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "fragmentSwitch"    # Lfip;
    .param p5, "iChooseControl"    # Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    const-string/jumbo v2, "HomeContactFragment"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 59
    new-instance v0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;-><init>()V

    .line 96
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 97
    const-string/jumbo v2, "DeviceListFragment"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    invoke-virtual {v0, p3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 100
    :cond_1
    iget-object v2, p0, Lfkn;->a:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    instance-of v2, v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 102
    check-cast v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    invoke-virtual {v2, p4}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->a(Lfip;)V

    .line 105
    :cond_2
    return-object v0

    .line 60
    :cond_3
    const-string/jumbo v2, "GroupConversationFragment"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 61
    if-eqz p3, :cond_6

    .line 62
    const-string/jumbo v2, "intent_key_use_external_logic"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "show_group"

    .line 63
    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v1, 0x1

    .line 64
    .local v1, "withUserLogic":Z
    :cond_5
    const-string/jumbo v2, "intent_key_use_external_logic"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    .end local v1    # "withUserLogic":Z
    :cond_6
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->d()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_7
    const-string/jumbo v2, "onversationMembersFragment"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 68
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    invoke-virtual {v2, p3, p5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/os/Bundle;Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_8
    const-string/jumbo v2, "OrgContactFragment"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 70
    new-instance v0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 71
    :cond_9
    const-string/jumbo v2, "LocalContactFragment"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 72
    new-instance v0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 73
    :cond_a
    const-string/jumbo v2, "FriendsFragment"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 74
    new-instance v0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 75
    :cond_b
    const-string/jumbo v2, "UsersFragment"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 76
    new-instance v0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 77
    :cond_c
    const-string/jumbo v2, "CrmListFragment"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 79
    new-instance v0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 80
    :cond_d
    const-string/jumbo v2, "EditOrgContactFragment"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 81
    new-instance v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 82
    :cond_e
    const-string/jumbo v2, "OrgSelectLocalDeptFragment"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 83
    new-instance v0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 84
    :cond_f
    const-string/jumbo v2, "CrmCustomerFollower"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 85
    new-instance v0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 86
    :cond_10
    const-string/jumbo v2, "ExternalContactFragmentser"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 87
    new-instance v0, Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 88
    :cond_11
    const-string/jumbo v2, "DeviceListFragment"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 89
    const-string/jumbo v2, "choose_mode"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 90
    const-string/jumbo v2, "display_enterprise_oid"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 91
    invoke-static {}, Lcom/alibaba/dingtalk/devicebase/TelSmartDeviceInterface;->a()Lcom/alibaba/dingtalk/devicebase/TelSmartDeviceInterface;

    const/4 v0, 0x0

    .line 92
    goto/16 :goto_0

    :cond_12
    const-string/jumbo v2, "VideoDeviceFragment"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    new-instance v0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0
.end method
