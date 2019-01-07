.class Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;
.super Ljava/lang/Object;
.source "BlankPageDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->enterLoadUrl(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->access$000(Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgvi;->warnWebViewDead(Ljava/lang/String;Ljava/util/List;)V

    .line 49
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;->val$activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 50
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lhdn$k;->dt_lightapp_relaunch_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 52
    sget v1, Lhdn$k;->dt_lightapp_relaunch_message:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 53
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1$1;-><init>(Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 59
    sget v1, Lhdn$k;->dt_lightapp_relaunch_text:I

    new-instance v2, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1$2;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1$2;-><init>(Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 65
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 67
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_0
    return-void
.end method
