.class final Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$1;
.super Ljava/lang/Object;
.source "ScanLiveActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$1;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;

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

    .line 385
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$1;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$1;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    sget v1, Lbtp$g;->dt_lv_live_pause:I

    sget v2, Lbtp$b;->taolive_live_over_color:I

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;IIZ)V

    .line 389
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$1;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lbtp$g;->dt_lv_live_interrupted_error_network:I

    .line 390
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbtp$g;->sure:I

    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$1$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a$1;)V

    .line 391
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method
