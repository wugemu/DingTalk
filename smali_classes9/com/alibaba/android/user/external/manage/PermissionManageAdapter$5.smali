.class final Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$5;
.super Ljava/lang/Object;
.source "PermissionManageAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

.field final synthetic c:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$5;->c:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;

    iput-wide p2, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$5;->a:J

    iput-object p4, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$5;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$5;->c:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->a(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    iget-wide v2, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$5;->a:J

    iget-object v4, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$5;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    .line 1330
    iget-object v1, v0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1332
    :cond_0
    :goto_0
    return-void

    .line 1335
    :cond_1
    iget-object v1, v0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1337
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcev;

    move-result-object v1

    .line 1336
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->fromIDLModel(Lcev;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1338
    iget-object v1, v0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1339
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1340
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1341
    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v4, v6, :cond_4

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_4

    .line 1343
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 1352
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->b()V

    goto :goto_0

    .line 1345
    :cond_4
    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v4, v6, :cond_2

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v6, :cond_2

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    cmp-long v1, v6, v2

    if-nez v1, :cond_2

    .line 1347
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method
