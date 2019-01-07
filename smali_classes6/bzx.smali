.class public final Lbzx;
.super Ljava/lang/Object;
.source "PermissionRationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;[Ljava/lang/String;Lbyx;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "request"    # Lbyx;

    .prologue
    .line 78
    invoke-static {p0}, Lbzz;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1128
    .end local p0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 81
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_1
    instance-of v0, p0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_2

    .line 82
    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lbzx;->a(Lcn;[Ljava/lang/String;Lbyx;)V

    goto :goto_0

    .line 84
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1112
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PermissionRationUtils_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1113
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1114
    const-string/jumbo v0, "permissions"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog;

    .line 1117
    if-nez v0, :cond_3

    .line 1118
    new-instance v0, Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog;-><init>()V

    .line 1119
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 1121
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog;->isAdded()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1122
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2030
    :cond_4
    if-eqz p2, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2031
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/RationDialog;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1126
    :catch_0
    move-exception v0

    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PermissionRationUtils showDialogInternal error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3012
    const-string/jumbo v1, "permission"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lbyx;)V
    .locals 1
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "request"    # Lbyx;

    .prologue
    .line 70
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbzz;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Lcn;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lbzx;->a(Lcn;[Ljava/lang/String;Lbyx;)V

    goto :goto_0
.end method

.method private static a(Lcn;[Ljava/lang/String;Lbyx;)V
    .locals 7
    .param p0, "fragmentManager"    # Lcn;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "request"    # Lbyx;

    .prologue
    .line 91
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "PermissionRationUtils_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "tag":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "permissions"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, v3}, Lcn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/RationDialog;

    .line 95
    .local v1, "dialog":Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/RationDialog;
    if-nez v1, :cond_0

    .line 96
    new-instance v1, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/RationDialog;

    .end local v1    # "dialog":Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/RationDialog;
    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/RationDialog;-><init>()V

    .line 97
    .restart local v1    # "dialog":Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/RationDialog;
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/RationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 99
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/RationDialog;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 100
    invoke-virtual {v1, p0, v3}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/RationDialog;->show(Lcn;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcn;->b()Z

    .line 3030
    :cond_1
    if-eqz p2, :cond_2

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/RationDialog;->a:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3031
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/RationDialog;->a:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "dialog":Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/RationDialog;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "PermissionRationUtils showDialogInternal error="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4012
    const-string/jumbo v5, "permission"

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
