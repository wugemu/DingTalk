.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4;
.super Ljava/lang/Object;
.source "SpaceShareBaseActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;
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
        "Lgiu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 307
    check-cast p1, Lgiu;

    .line 1310
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->dismissLoadingDialog()V

    .line 1316
    if-nez p1, :cond_1

    .line 1317
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    sget v1, Lfzs$h;->space_share_add_member_fail:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1322
    :cond_0
    :goto_0
    return-void

    .line 1320
    :cond_1
    iget-object v0, p1, Lgiu;->a:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1320
    if-nez v0, :cond_2

    .line 1321
    iget-object v0, p1, Lgiu;->b:Ljava/lang/Integer;

    .line 2033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 1321
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lgiu;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1325
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    iget-boolean v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->h:Z

    if-eqz v0, :cond_3

    .line 1326
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1327
    sget v1, Lfzs$h;->dt_cspace_tip_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1328
    sget v1, Lfzs$h;->dt_cspace_share_folder_security_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1329
    sget v1, Lfzs$h;->dt_common_i_know:I

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4$1;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1335
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1338
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->j:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1339
    const/16 v1, 0x5a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1340
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1341
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->dismissLoadingDialog()V

    .line 354
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 346
    return-void
.end method
