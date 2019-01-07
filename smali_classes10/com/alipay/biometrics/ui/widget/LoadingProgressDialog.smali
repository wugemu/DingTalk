.class public Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;
.super Landroid/app/Dialog;
.source "LoadingProgressDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    sget v0, Lige$e;->LoadingDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 19
    sget v0, Lige$d;->bio_dialog_loading_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;->setContentView(I)V

    .line 20
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 21
    return-void
.end method
