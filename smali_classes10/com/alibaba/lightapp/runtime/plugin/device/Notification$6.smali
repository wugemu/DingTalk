.class Lcom/alibaba/lightapp/runtime/plugin/device/Notification$6;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->hidePreloader(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->access$1500(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->access$1500(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 278
    :cond_0
    return-void
.end method
