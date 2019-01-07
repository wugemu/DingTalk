.class final Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$4;
.super Ljava/lang/Object;
.source "WalletActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$4;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 481
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$4;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$4;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcaj$f;->sure:I

    const/4 v2, 0x0

    .line 483
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$4;->a:Ljava/lang/String;

    .line 484
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 487
    :cond_0
    return-void
.end method
