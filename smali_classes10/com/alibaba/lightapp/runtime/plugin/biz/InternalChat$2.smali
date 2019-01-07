.class Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$2;
.super Landroid/content/BroadcastReceiver;
.source "InternalChat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->initReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

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
    const/4 v5, 0x3

    .line 254
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$600()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    const-string/jumbo v3, "conversation"

    .line 257
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Conversation;

    .line 258
    .local v1, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v1, :cond_2

    .line 259
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    invoke-static {v3, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lcom/alibaba/wukong/im/Conversation;)Lorg/json/JSONObject;

    move-result-object v2

    .line 260
    .local v2, "result":Lorg/json/JSONObject;
    if-nez v2, :cond_1

    .line 261
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    const-string/jumbo v4, "make json error"

    invoke-static {v5, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$900(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 269
    .end local v1    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v2    # "result":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 263
    .restart local v1    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .restart local v2    # "result":Lorg/json/JSONObject;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    .end local v2    # "result":Lorg/json/JSONObject;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    const-string/jumbo v4, "conversation null error"

    invoke-static {v5, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
