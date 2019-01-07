.class final Lcom/alibaba/android/user/external/manage/PermissionManageActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PermissionManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/PermissionManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 80
    iget-object v8, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-virtual {v8}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->isDestroyed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string/jumbo v8, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 85
    const-string/jumbo v8, "activity_identify"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "identity":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "choose_user_identities"

    .line 87
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 90
    .local v3, "identityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v8, "IDENTIFY_EXTERNAL_PERM_UPDATE_FOLLOWER"

    .line 91
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 92
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 96
    const/4 v8, 0x0

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 97
    .local v7, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v7, :cond_0

    .line 101
    iget-object v8, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v8, :cond_2

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-object v10, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v10

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 103
    :cond_2
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    .line 105
    .local v4, "newFollower":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    .line 106
    iget-object v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    iput-object v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    .line 107
    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    iput-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 110
    iget-object v8, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    iget-object v9, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    .line 112
    invoke-static {v9}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcev;

    move-result-object v9

    .line 111
    invoke-static {v9}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->fromIDLModel(Lcev;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v9

    .line 110
    invoke-static {v8, v9}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 113
    iget-object v8, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->b(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    iput-object v4, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 114
    iget-object v8, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->c(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)V

    goto/16 :goto_0

    .line 117
    .end local v4    # "newFollower":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v7    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    const-string/jumbo v8, "IDENTIFY_EXTERNAL_PERM_SHARE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "choose_department_array"

    .line 119
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 121
    .local v0, "deptObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v8, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    iget-object v9, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    .line 123
    invoke-static {v9}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcev;

    move-result-object v9

    .line 122
    invoke-static {v9}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->fromIDLModel(Lcev;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v9

    .line 121
    invoke-static {v8, v9}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 124
    iget-object v8, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->b(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    if-nez v8, :cond_5

    .line 125
    iget-object v8, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->b(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    .line 130
    :goto_1
    if-eqz v0, :cond_6

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 132
    .local v6, "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v6, :cond_4

    .line 136
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;-><init>()V

    .line 137
    .local v5, "nodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    sget-object v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    iput-object v9, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    .line 138
    iput-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 139
    iget-object v9, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-static {v9}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->b(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v9

    iget-object v9, v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-object v9, v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 127
    .end local v5    # "nodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v6    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_5
    iget-object v8, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->b(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 143
    :cond_6
    if-eqz v3, :cond_8

    .line 144
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 145
    .restart local v7    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v7, :cond_7

    .line 149
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;-><init>()V

    .line 150
    .restart local v5    # "nodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    sget-object v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    iput-object v9, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    .line 151
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;-><init>()V

    .line 152
    .local v1, "employeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    iget-wide v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v10, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    .line 153
    iget-wide v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    iput-wide v10, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    .line 154
    iget-object v9, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    iput-object v9, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    .line 155
    iput-object v1, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 156
    iget-object v9, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-static {v9}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->b(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v9

    iget-object v9, v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-object v9, v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 160
    .end local v1    # "employeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    .end local v5    # "nodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v7    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_8
    iget-object v8, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->c(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)V

    goto/16 :goto_0
.end method
