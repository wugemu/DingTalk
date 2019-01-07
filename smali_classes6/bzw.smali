.class public final Lbzw;
.super Ljava/lang/Object;
.source "PermissionNeverAskUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-static {p0}, Lbzz;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lbzz;->a([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 1053
    :cond_1
    invoke-static {}, Lbzz;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1054
    invoke-static {p0, p1}, Lbzw;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    goto :goto_0

    .line 1056
    :cond_2
    new-instance v0, Lbzw$2;

    invoke-direct {v0, p0, p1}, Lbzw$2;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;)V
    .locals 2
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbzz;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lbzz;->a([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    invoke-static {}, Lbzz;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1041
    invoke-static {p0, p1}, Lbzw;->b(Landroid/support/v4/app/Fragment;[Ljava/lang/String;)V

    goto :goto_0

    .line 1043
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lbzw$1;

    invoke-direct {v1, p0, p1}, Lbzw$1;-><init>(Landroid/support/v4/app/Fragment;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static a(Lcn;[Ljava/lang/String;)V
    .locals 7
    .param p0, "fragmentManager"    # Lcn;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 87
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "PermissionNeverAskUtils_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "tag":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "permissions"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, v3}, Lcn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;

    .line 91
    .local v1, "dialog":Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;
    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;

    .end local v1    # "dialog":Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;
    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;-><init>()V

    .line 93
    .restart local v1    # "dialog":Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;->setArguments(Landroid/os/Bundle;)V

    .line 95
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 96
    invoke-virtual {v1, p0, v3}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;->show(Lcn;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcn;->b()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "dialog":Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v2

    .line 100
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

    .line 3012
    const-string/jumbo v5, "permission"

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static b(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p0}, Lbzz;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lbzz;->a([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1121
    .end local p0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 78
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_1
    instance-of v0, p0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_2

    .line 79
    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-static {v0, p1}, Lbzw;->a(Lcn;[Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1106
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PermissionNeverAskUtils_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1107
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1108
    const-string/jumbo v0, "permissions"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/NeverAskDialog;

    .line 1111
    if-nez v0, :cond_3

    .line 1112
    new-instance v0, Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/NeverAskDialog;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/NeverAskDialog;-><init>()V

    .line 1113
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/NeverAskDialog;->setArguments(Landroid/os/Bundle;)V

    .line 1115
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/NeverAskDialog;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1116
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/app/NeverAskDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1117
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PermissionRationUtils showDialogInternal error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2012
    const-string/jumbo v1, "permission"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static b(Landroid/support/v4/app/Fragment;[Ljava/lang/String;)V
    .locals 1
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 66
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbzz;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lbzz;->a([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Lcn;

    move-result-object v0

    invoke-static {v0, p1}, Lbzw;->a(Lcn;[Ljava/lang/String;)V

    goto :goto_0
.end method
