.class Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$3;
.super Landroid/content/BroadcastReceiver;
.source "Notify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->handleQrScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    const-string/jumbo v4, "web_view_qr_scan_push_event"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 205
    const-string/jumbo v4, "web_view_qr_scan_json_string"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "jsonString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 207
    .local v1, "json":Lorg/json/JSONObject;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 209
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "json":Lorg/json/JSONObject;
    .local v2, "json":Lorg/json/JSONObject;
    move-object v1, v2

    .line 215
    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 216
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "json":Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 218
    .restart local v1    # "json":Lorg/json/JSONObject;
    :cond_1
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;

    const-string/jumbo v5, "qrscanCommonNotify"

    invoke-static {v4, v5, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 220
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "jsonString":Ljava/lang/String;
    :cond_2
    return-void

    .line 210
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v3    # "jsonString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
