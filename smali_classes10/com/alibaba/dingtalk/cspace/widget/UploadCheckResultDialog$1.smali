.class final Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog$1;
.super Ljava/lang/Object;
.source "UploadCheckResultDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "dt_space_upload_duplicate_overwrite"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;->a(Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;)Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;->a(Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;)Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog$a;->a()V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;->dismiss()V

    .line 52
    return-void
.end method
