.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$16;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->createConversation(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 2358
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$16;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$16;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2400
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$16;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$5200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lhdn$k;->create_con_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 2401
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$16;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x6

    .line 2402
    invoke-static {v3, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$16;->val$callbackId:Ljava/lang/String;

    .line 2401
    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$5300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 2403
    return-void
.end method

.method public onProgress(Lcom/alibaba/wukong/im/Conversation;I)V
    .locals 0
    .param p1, "id"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "progress"    # I

    .prologue
    .line 2361
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2358
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$16;->onProgress(Lcom/alibaba/wukong/im/Conversation;I)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 7
    .param p1, "converObject"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2365
    if-eqz p1, :cond_2

    .line 2366
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$16;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$4700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 2367
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2368
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "to_page"

    const-string/jumbo v3, "to_chat"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    const-string/jumbo v2, "conversation_id"

    .line 2371
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    .line 2370
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2373
    const-string/jumbo v2, "conversation"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2375
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$16;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .line 2376
    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$4800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v3, v2, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2378
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 2379
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 2381
    :cond_0
    const-class v2, Lcom/alibaba/lightapp/runtime/rpc/proxy/MessageNotificationProxy;

    .line 2382
    invoke-static {v2}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/rpc/proxy/MessageNotificationProxy;

    .line 2383
    .local v1, "messageNotificationProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/MessageNotificationProxy;
    invoke-interface {v1}, Lcom/alibaba/lightapp/runtime/rpc/proxy/MessageNotificationProxy;->cancelMessageNotification()V

    .line 2385
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$16;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$16;->val$callbackId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$4900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 2396
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "messageNotificationProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/MessageNotificationProxy;
    :goto_0
    return-void

    .line 2387
    :cond_1
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$16;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x3

    const-string/jumbo v6, "invalid context"

    .line 2388
    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$16;->val$callbackId:Ljava/lang/String;

    .line 2387
    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$5000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0

    .line 2392
    :cond_2
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$16;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x6

    const-string/jumbo v6, "no conversation object"

    .line 2393
    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$16;->val$callbackId:Ljava/lang/String;

    .line 2392
    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$5100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2358
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$16;->onSuccess(Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method
