.class Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2$1;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dialogCallbackFail(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    const/4 v1, 0x3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->access$700(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public dialogCallbackSuccess(ILjava/lang/String;)V
    .locals 3
    .param p1, "buttonIndex"    # I
    .param p2, "callbackValue"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    invoke-static {v1, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->access$500(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;I)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->access$600(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 112
    return-void
.end method
