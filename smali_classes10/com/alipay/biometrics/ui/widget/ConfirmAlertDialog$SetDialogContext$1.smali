.class Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext$1;
.super Ljava/lang/Object;
.source "ConfirmAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->invoke()Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;


# direct methods
.method constructor <init>(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext$1;->this$1:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 261
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext$1;->this$1:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;

    iget-object v0, v0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$000(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->dismiss()V

    .line 262
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext$1;->this$1:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;

    iget-object v0, v0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$500(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext$1;->this$1:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;

    iget-object v0, v0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$500(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext$1;->this$1:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;

    iget-object v1, v1, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v1}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$000(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 265
    :cond_0
    return-void
.end method
