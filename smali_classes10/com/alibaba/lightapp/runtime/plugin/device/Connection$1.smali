.class Lcom/alibaba/lightapp/runtime/plugin/device/Connection$1;
.super Landroid/content/BroadcastReceiver;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Connection;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Connection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Connection;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Connection$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Connection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "result"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Connection$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Connection;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Connection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-static {}, Lclr;->a()Lclr;

    move-result-object v2

    .line 1090
    iget-boolean v2, v2, Lclr;->a:Z

    .line 42
    if-eqz v2, :cond_1

    .line 43
    const-string/jumbo v2, "lwpStatus"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Connection$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Connection;

    const-string/jumbo v3, "networkEvent"

    invoke-static {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->access$100(Lcom/alibaba/lightapp/runtime/plugin/device/Connection;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 52
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 45
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "lwpStatus"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
