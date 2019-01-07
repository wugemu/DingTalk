.class Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$3;
.super Ljava/lang/Object;
.source "FingerprintDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->showDialogImpl(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$DialogButtonActionListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$3;->this$0:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    iput-object p2, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$3;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$3;->this$0:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->access$100(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$3;->this$0:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->access$200(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$DialogButtonActionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$3;->this$0:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->access$200(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$DialogButtonActionListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$DialogButtonActionListener;->onAction(I)V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$3;->this$0:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$3;->val$context:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0
.end method
