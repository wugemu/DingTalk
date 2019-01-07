.class public Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;
.super Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;
.source "LocalEditWpsNotInstallRemindDialog.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;-><init>(Landroid/app/Activity;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 24
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->a()V

    .line 25
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;->g:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_cspace_local_edit_app_not_install_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 26
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;->h:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_cspace_local_edit_app_not_install_des:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 27
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;->i:Landroid/widget/TextView;

    sget v1, Lfzs$h;->cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 28
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;->j:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_cspace_local_edit_app_install_guide:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog$1;-><init>(Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method
