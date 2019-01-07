.class Lcom/alibaba/lightapp/runtime/plugin/biz/Intent$1;
.super Ljava/lang/Object;
.source "Intent.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->fetchData(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent$1;->onDataReceived(Ljava/lang/String;)V

    return-void
.end method

.method public onDataReceived(Ljava/lang/String;)V
    .locals 13
    .param p1, "cidToken"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x3

    .line 42
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "EXTRA_IM_MESSAGE_CONTENT"

    invoke-static {v7, v8}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "content":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "EXTRA_IM_CONVERSATION_NAME"

    invoke-static {v7, v8}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "chatName":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "EXTRA_IM_MESSAGE_ID"

    const-wide/16 v10, 0x0

    invoke-static {v7, v8, v10, v11}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 45
    .local v4, "msgId":J
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "EXTRA_IM_MESSAGES_INFO"

    invoke-static {v7, v8}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, "msgsInfo":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 48
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "chatId"

    invoke-virtual {v3, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string/jumbo v7, "content"

    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string/jumbo v7, "chatName"

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string/jumbo v7, "msgId"

    invoke-virtual {v3, v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 52
    const-string/jumbo v7, "msgsInfo"

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string/jumbo v7, "lightapp"

    const-string/jumbo v8, "Intent"

    const/16 v9, 0xa

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "chatId ="

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "content= "

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v1, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "chatName="

    aput-object v11, v9, v10

    const/4 v10, 0x5

    aput-object v0, v9, v10

    const/4 v10, 0x6

    const-string/jumbo v11, "msgId="

    aput-object v11, v9, v10

    const/4 v10, 0x7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string/jumbo v11, "msgsInfo="

    aput-object v11, v9, v10

    const/16 v10, 0x9

    aput-object v6, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v7, v3, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 57
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 60
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v9, v9, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;

    const/4 v1, 0x3

    invoke-static {v1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 67
    return-void
.end method
