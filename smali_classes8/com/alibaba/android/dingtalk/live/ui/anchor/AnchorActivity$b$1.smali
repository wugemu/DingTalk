.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$1;
.super Ljava/lang/Object;
.source "AnchorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$1;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1071
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$1;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1087
    :goto_0
    return-void

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$1;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->dismissLoadingDialog()V

    .line 1075
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$1;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    sget v1, Lbtp$g;->dt_lv_live_pause:I

    sget v2, Lbtp$b;->taolive_live_over_color:I

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;IIZ)V

    .line 1076
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$1;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lbtp$g;->dt_lv_live_interrupted_error_network:I

    .line 1077
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbtp$g;->dt_common_retry:I

    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$1$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$1;)V

    .line 1078
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbtp$g;->cancel:I

    const/4 v2, 0x0

    .line 1086
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method
