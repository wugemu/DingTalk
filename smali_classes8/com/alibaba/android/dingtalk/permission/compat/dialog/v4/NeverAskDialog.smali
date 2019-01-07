.class public Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "NeverAskDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 28
    const-string/jumbo v2, ""

    .line 29
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 30
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 31
    const-string/jumbo v4, "permissions"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "permissions":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lbzh;->a(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .end local v3    # "permissions":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lbyz$a;->dt_permission_never_ask_message:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "message":Ljava/lang/String;
    new-instance v4, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {v4, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lbyz$a;->dt_common_cancel:I

    const/4 v6, 0x0

    .line 37
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lbyz$a;->dt_common_go_setting:I

    new-instance v6, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog$1;-><init>(Lcom/alibaba/android/dingtalk/permission/compat/dialog/v4/NeverAskDialog;)V

    .line 38
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 45
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 4
    .param p1, "transaction"    # Landroid/support/v4/app/FragmentTransaction;
    .param p2, "tag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 51
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 55
    :goto_0
    return v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "NeverAskDialog show failed, error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1012
    const-string/jumbo v2, "permission"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public show(Lcn;Ljava/lang/String;)V
    .locals 4
    .param p1, "manager"    # Lcn;
    .param p2, "tag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 61
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->show(Lcn;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "NeverAskDialog show failed, error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2012
    const-string/jumbo v2, "permission"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
