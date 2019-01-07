.class public Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;
.super Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;
.source "UploadCheckResultDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;-><init>(Landroid/app/Activity;)V

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;)Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;->a:Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog$a;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->a()V

    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;->g:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_space_upload_name_conflict_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;->c()V

    .line 39
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;->j:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_space_upload_name_conflict_override:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 40
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;->i:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_space_upload_name_conflict_new:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 42
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog$1;-><init>(Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog$2;-><init>(Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;->setCanceledOnTouchOutside(Z)V

    .line 66
    return-void
.end method

.method public show()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->show()V

    .line 71
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "dt_space_upload_duplicate_name"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 72
    return-void
.end method
