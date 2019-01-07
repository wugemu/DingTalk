.class public Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;
.super Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;
.source "OnlineEditReleaseLockDialog.java"


# instance fields
.field public a:Lcom/alibaba/alimei/cspace/model/DentryModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;-><init>(Landroid/app/Activity;)V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;

    .prologue
    .line 30
    .line 1059
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1060
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->dismiss()V

    .line 1061
    sget v0, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1062
    :goto_0
    return-void

    .line 1064
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->b()V

    .line 1065
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog$2;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog$2;-><init>(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;)V

    .line 1091
    const-class v1, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1092
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lgon;->d(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;

    .prologue
    .line 30
    .line 1096
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    .line 1099
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.dingtalk.space.file.lock.release"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1100
    const-string/jumbo v1, "dentry_model"

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1101
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 44
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->a()V

    .line 45
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->g:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_cspace_release_lock_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 46
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->h:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_cspace_release_lock_dialog_desc:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->h:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 49
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->j:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_cspace_release_lock_dialog_ok:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog$1;-><init>(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method
