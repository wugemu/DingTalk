.class Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->onReceived(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

.field final synthetic val$conversationId:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->val$conversationId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 407
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->onDataReceived(Ljava/lang/String;)V

    return-void
.end method

.method public onDataReceived(Ljava/lang/String;)V
    .locals 8
    .param p1, "cidToken"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 410
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->val$conversationId:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 414
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "cid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    const-string/jumbo v2, "title"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v4, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1300(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v2, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1102(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;)Ljava/lang/String;

    .line 423
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Lorg/json/JSONException;
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x3

    .line 419
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 418
    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v2, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1102(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 421
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v3, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1102(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;)Ljava/lang/String;

    throw v2
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 433
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x3

    .line 434
    invoke-static {v3, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 433
    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1500(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1102(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;)Ljava/lang/String;

    .line 437
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 429
    return-void
.end method
