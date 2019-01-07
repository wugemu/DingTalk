.class Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon$3;
.super Landroid/content/BroadcastReceiver;
.source "Beacon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 246
    const-string/jumbo v4, "beacon_detect"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    const-string/jumbo v4, "bind_succ"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 248
    .local v1, "bindSucc":Z
    const-string/jumbo v4, "bind_count"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 249
    .local v0, "bindCount":I
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 251
    .local v3, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "bindSucc"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 252
    const-string/jumbo v4, "bindCount"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;

    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v5, v6, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 258
    .end local v0    # "bindCount":I
    .end local v1    # "bindSucc":Z
    .end local v3    # "json":Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 253
    .restart local v0    # "bindCount":I
    .restart local v1    # "bindSucc":Z
    .restart local v3    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 254
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
