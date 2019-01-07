.class Lcom/alibaba/lightapp/runtime/plugin/device/Notification$3;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->prompt(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

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
    .line 136
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->access$800(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;-><init>(Landroid/content/Context;)V

    .line 137
    .local v0, "dialogUtils":Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$3$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$3$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->popPromptDialog(Lorg/json/JSONObject;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 148
    return-void
.end method
