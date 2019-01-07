.class public final Lgmf;
.super Lgly;
.source "SpaceMenuCoFolderDeleteHandler.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/app/Activity;

.field c:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field d:Lgit;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method

.method static synthetic a(Lgmf;)V
    .locals 1
    .param p0, "x0"    # Lgmf;

    .prologue
    .line 32
    .line 1130
    iget-object v0, p0, Lgmf;->c:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lgmf;->c:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 41
    invoke-static {p1, p2, v3}, Lgmf;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 44
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    iput-object p1, p0, Lgmf;->a:Landroid/content/Context;

    .line 45
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lgmf;->b:Landroid/app/Activity;

    .line 46
    iget-object v0, p2, Lgmb;->m:Lgit;

    iput-object v0, p0, Lgmf;->d:Lgit;

    .line 47
    iget-object v0, p0, Lgmf;->d:Lgit;

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_filelist_setting_delete_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1058
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lgmf;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1059
    iget-object v1, p0, Lgmf;->a:Landroid/content/Context;

    sget v2, Lfzs$h;->dt_cspace_delete_co_folder_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1060
    sget v1, Lfzs$h;->cancel:I

    new-instance v2, Lgmf$1;

    invoke-direct {v2, p0, v0}, Lgmf$1;-><init>(Lgmf;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1066
    sget v1, Lfzs$h;->sure:I

    new-instance v2, Lgmf$2;

    invoke-direct {v2, p0, v0}, Lgmf$2;-><init>(Lgmf;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1073
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1074
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
