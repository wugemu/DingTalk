.class Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->showActionSheet(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

.field final synthetic val$callbackName:Ljava/lang/String;

.field final synthetic val$cancel:Ljava/lang/String;

.field final synthetic val$items:[Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;->val$items:[Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;->val$callbackName:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;->val$cancel:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 322
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->access$1600(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 325
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->access$2100(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;->val$items:[Ljava/lang/String;

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7$2;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;->val$cancel:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;)V

    .line 341
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
