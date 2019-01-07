.class final Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2$1;
.super Ljava/lang/Object;
.source "PermissionManageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 229
    if-nez p2, :cond_2

    .line 230
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v4, "selectedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v6, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;

    iget-object v6, v6, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v6, :cond_0

    .line 232
    iget-object v6, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;

    iget-object v6, v6, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    .line 233
    invoke-static {v6}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-static {v6, v9}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 234
    .local v0, "currentFollower":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v0    # "currentFollower":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_0
    iget-object v6, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;

    iget-object v6, v6, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    const-string/jumbo v7, "IDENTIFY_EXTERNAL_PERM_UPDATE_FOLLOWER"

    invoke-static {v6, v7, v8, v4, v9}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 264
    .end local v4    # "selectedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_1
    :goto_0
    return-void

    .line 239
    :cond_2
    if-ne p2, v8, :cond_1

    .line 240
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .restart local v4    # "selectedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v3, "selectedDepts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v6, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;

    iget-object v6, v6, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;

    iget-object v6, v6, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    if-eqz v6, :cond_5

    .line 244
    iget-object v6, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;

    iget-object v6, v6, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-object v2, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    .line 246
    .local v2, "permits":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 247
    .local v1, "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v7, v8, :cond_4

    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v7, :cond_4

    .line 249
    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 250
    :cond_4
    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v7, v8, :cond_3

    .line 252
    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 253
    invoke-static {v7, v9}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v5

    .line 255
    .local v5, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 260
    .end local v1    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v2    # "permits":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    .end local v5    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_5
    iget-object v6, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2$1;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;

    iget-object v6, v6, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    const-string/jumbo v7, "IDENTIFY_EXTERNAL_PERM_SHARE"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v4, v3}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
