.class final Lcom/alibaba/android/user/external/manage/PermissionManageActivity$4;
.super Ljava/lang/Object;
.source "PermissionManageActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$4;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 357
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1360
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$4;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->dismissLoadingDialog()V

    .line 1362
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$4;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->b(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1363
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$4;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1365
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$4;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$4;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->d(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$4;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->canEdit:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1369
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$4;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->e(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)V

    .line 1371
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.org.external.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1372
    if-eqz p1, :cond_1

    .line 1373
    const-string/jumbo v1, "employee_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1375
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$4;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 1376
    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 357
    return-void

    .line 1366
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 386
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$4;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->dismissLoadingDialog()V

    .line 387
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$4;->a:Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 390
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 382
    return-void
.end method
