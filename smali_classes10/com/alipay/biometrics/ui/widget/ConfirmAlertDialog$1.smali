.class Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$1;
.super Ljava/lang/Object;
.source "ConfirmAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;


# direct methods
.method constructor <init>(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$1;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$1;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$000(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->dismiss()V

    .line 125
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$1;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$100(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$1;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$100(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$1;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$200(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$1;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$200(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    goto :goto_0
.end method
