.class final Lcom/taobao/ma/ui/ScanBaseFragment$1;
.super Ljava/lang/Object;
.source "ScanBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/ma/ui/ScanBaseFragment;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/ma/ui/ScanBaseFragment;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/ScanBaseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/ma/ui/ScanBaseFragment;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/taobao/ma/ui/ScanBaseFragment$1;->a:Lcom/taobao/ma/ui/ScanBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 65
    iget-object v2, p0, Lcom/taobao/ma/ui/ScanBaseFragment$1;->a:Lcom/taobao/ma/ui/ScanBaseFragment;

    invoke-virtual {v2}, Lcom/taobao/ma/ui/ScanBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    :goto_0
    return-void

    .line 69
    :cond_0
    sget v1, Lelh$h;->check_camera_setting:I

    .line 71
    .local v1, "strId":I
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    sget v1, Lelh$h;->dt_scan_dont_open_camera_tips_live:I

    .line 75
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    sget v1, Lelh$h;->dt_scan_dont_open_camera_tips_tel:I

    .line 78
    :cond_2
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lcom/taobao/ma/ui/ScanBaseFragment$1;->a:Lcom/taobao/ma/ui/ScanBaseFragment;

    invoke-virtual {v2}, Lcom/taobao/ma/ui/ScanBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 80
    sget v2, Lelh$h;->sure:I

    new-instance v3, Lcom/taobao/ma/ui/ScanBaseFragment$1$1;

    invoke-direct {v3, p0}, Lcom/taobao/ma/ui/ScanBaseFragment$1$1;-><init>(Lcom/taobao/ma/ui/ScanBaseFragment$1;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method
