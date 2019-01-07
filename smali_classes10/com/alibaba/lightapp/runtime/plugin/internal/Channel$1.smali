.class Lcom/alibaba/lightapp/runtime/plugin/internal/Channel$1;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lhgn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Channel;->subscribe(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Channel;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic val$topic:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Channel;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Channel;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Channel$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Channel;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Channel$1;->val$topic:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Channel$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Lhgl;)V
    .locals 7
    .param p1, "resultEvent"    # Lhgl;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 90
    if-eqz p1, :cond_0

    iget-object v3, p1, Lhgl;->a:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_0

    .line 93
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 94
    .local v1, "r":Lorg/json/JSONObject;
    const-string/jumbo v3, "topic"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Channel$1;->val$topic:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string/jumbo v3, "eventName"

    iget-object v4, p1, Lhgl;->a:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v5, "eventName"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string/jumbo v3, "data"

    iget-object v4, p1, Lhgl;->a:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v5, "data"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 100
    .local v2, "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Channel$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Channel;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Channel$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v3, v1, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/Channel;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Channel;Lorg/json/JSONObject;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1    # "r":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v2, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 110
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Channel$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Channel;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Channel$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/Channel;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Channel;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 113
    .end local v2    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :cond_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 104
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x2

    .line 105
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .restart local v2    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    goto :goto_0
.end method
