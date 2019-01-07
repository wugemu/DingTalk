.class final Lcom/alibaba/android/user/qrcode/WebLoginActivity$1$1;
.super Ljava/lang/Object;
.source "WebLoginActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 84
    .line 1103
    iget-object v0, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->dismissLoadingDialog()V

    .line 1104
    iget-object v0, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->finish()V

    .line 84
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 92
    iget-object v1, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->dismissLoadingDialog()V

    .line 93
    invoke-static {p2}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->sure:I

    const/4 v3, 0x0

    .line 96
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 97
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 99
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 88
    return-void
.end method
