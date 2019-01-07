.class Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink$1;
.super Landroid/content/BroadcastReceiver;
.source "PageLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "action_pagelink"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 194
    const-string/jumbo v7, "code"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 195
    .local v3, "code":I
    const-string/jumbo v7, "callback_result"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "callbackData":Ljava/lang/String;
    const-string/jumbo v7, "identifier"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, "identifier":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 200
    .local v6, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 201
    .local v2, "callbackJson":Lorg/json/JSONObject;
    const-string/jumbo v7, "code"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 202
    const-string/jumbo v7, "linkIdentifier"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string/jumbo v7, "callBackDatas"

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v2    # "callbackJson":Lorg/json/JSONObject;
    :goto_0
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;

    const-string/jumbo v8, "internalPageLinkResponse"

    invoke-static {v7, v8, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 210
    .end local v1    # "callbackData":Ljava/lang/String;
    .end local v3    # "code":I
    .end local v5    # "identifier":Ljava/lang/String;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 204
    .restart local v1    # "callbackData":Ljava/lang/String;
    .restart local v3    # "code":I
    .restart local v5    # "identifier":Ljava/lang/String;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 205
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
