.class Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$3;
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
    .line 276
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

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
    const/16 v7, 0xc

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 279
    const-string/jumbo v2, "action_im_share_callback"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    const-string/jumbo v2, "im_share_callback_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "callbackId":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    invoke-static {v2, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$1202(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    const-string/jumbo v2, "im_share_callback_result_code"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 284
    const-string/jumbo v2, "im_share_callback_result_code"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 285
    .local v1, "errorCode":I
    if-ne v1, v6, :cond_1

    .line 286
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    invoke-static {v6, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$1300(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 297
    .end local v0    # "callbackId":Ljava/lang/String;
    .end local v1    # "errorCode":I
    :cond_0
    :goto_0
    return-void

    .line 287
    .restart local v0    # "callbackId":Ljava/lang/String;
    .restart local v1    # "errorCode":I
    :cond_1
    if-ne v1, v7, :cond_2

    .line 288
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    invoke-static {v7, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_2
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    invoke-static {v5, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$1500(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    .end local v1    # "errorCode":I
    :cond_3
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    invoke-static {v2, v4, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$1600(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
