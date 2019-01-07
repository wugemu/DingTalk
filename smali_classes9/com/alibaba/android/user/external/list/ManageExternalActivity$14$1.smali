.class final Lcom/alibaba/android/user/external/list/ManageExternalActivity$14$1;
.super Ljava/lang/Object;
.source "ManageExternalActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$14$1;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$14$1;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;

    iget-object v0, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;->d:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$14$1;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;

    iget-object v1, v1, Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;->d:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lezg$l;->dt_external_save_to_local_no_support_alert:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/external/list/ManageExternalActivity$14$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$14$1$1;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity$14$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 1131
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1133
    :cond_0
    return-void
.end method
