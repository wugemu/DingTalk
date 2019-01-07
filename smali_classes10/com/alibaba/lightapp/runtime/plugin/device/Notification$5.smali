.class Lcom/alibaba/lightapp/runtime/plugin/device/Notification$5;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->showPreloader(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$5;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 251
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Landroid/content/Context;

    move-result-object v0

    .line 252
    .local v0, "context":Landroid/content/Context;
    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 264
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->access$1500(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 256
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->access$1500(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 260
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$5;->val$text:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v0, v3, v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->access$1502(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
