.class Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7$1;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 344
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 346
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "buttonIndex"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 347
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v4, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;->val$callbackName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->access$1700(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 350
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    const/4 v3, 0x3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;->val$callbackName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->access$1800(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
