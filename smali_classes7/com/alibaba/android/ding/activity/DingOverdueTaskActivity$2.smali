.class final Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$2;
.super Ljava/lang/Object;
.source "DingOverdueTaskActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 127
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$2;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    .line 1275
    iget v0, v1, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->a:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 1279
    new-instance v0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$5;

    invoke-direct {v0, v1}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$5;-><init>(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)V

    const-class v2, Lcma;

    invoke-static {v0, v2, v1}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1310
    iget-object v2, v1, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1311
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1312
    sget v3, Laxp$i;->ding_delete_all_confirm:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1313
    sget v3, Laxp$i;->sure:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$6;

    invoke-direct {v4, v1, v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$6;-><init>(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;Lcma;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1320
    sget v0, Laxp$i;->cancel:I

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$7;

    invoke-direct {v3, v1}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$7;-><init>(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)V

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1325
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1364
    :cond_0
    :goto_0
    return-void

    .line 1347
    :cond_1
    const-string/jumbo v2, "pref_key_has_shown_delete_ding_confirm_dialog"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1349
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1350
    sget v3, Laxp$i;->dt_ding_delete_confirm:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1351
    sget v3, Laxp$i;->sure:I

    new-instance v4, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$8;

    invoke-direct {v4, v1, v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$8;-><init>(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;Lcma;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1358
    sget v0, Laxp$i;->cancel:I

    new-instance v3, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$9;

    invoke-direct {v3, v1}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$9;-><init>(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)V

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1363
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 1365
    :cond_2
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->a(Lcma;)V

    goto :goto_0
.end method
