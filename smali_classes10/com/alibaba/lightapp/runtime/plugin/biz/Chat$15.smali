.class Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$15;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/Plugin$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->addGroup(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/lightapp/runtime/Plugin$a",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 982
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$15;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$15;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 985
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 987
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "status"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 988
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$15;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v4, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$15;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$5800(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$15;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$15;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$15;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v2, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$5202(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;)Ljava/lang/String;

    .line 994
    :goto_0
    return-void

    .line 989
    :catch_0
    move-exception v0

    .line 990
    .local v0, "e":Lorg/json/JSONException;
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$15;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$15;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$5900(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 992
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$15;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$15;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$15;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v2, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$5202(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 992
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$15;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$15;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$15;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v3, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$5202(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;)Ljava/lang/String;

    throw v2
.end method

.method public bridge synthetic onReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 982
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$15;->onReceived(Landroid/content/Intent;)V

    return-void
.end method
