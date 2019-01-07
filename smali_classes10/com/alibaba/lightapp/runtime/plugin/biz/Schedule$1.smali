.class Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$1;
.super Landroid/content/BroadcastReceiver;
.source "Schedule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    if-eqz p2, :cond_0

    const-string/jumbo v3, "action_schedule_create_result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    const-string/jumbo v3, "key_schedule_create_result"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 53
    .local v0, "createResult":Z
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "scheduleCreateResult"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 56
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;

    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "createResult":Z
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 57
    .restart local v0    # "createResult":Z
    .restart local v2    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;

    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v6, 0x2

    const-string/jumbo v7, "error json"

    .line 59
    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;)Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-static {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
