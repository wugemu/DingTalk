.class Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11$1;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11;->onDataReceived(Ljava/lang/String;)V
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
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11;

    .prologue
    .line 862
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11;

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
    .line 870
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x3

    invoke-static {v3, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$4600(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$4302(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;)Ljava/lang/String;

    .line 873
    return-void
.end method

.method public onProgress(Lcom/alibaba/wukong/im/Conversation;I)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "i"    # I

    .prologue
    .line 877
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 862
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11$1;->onProgress(Lcom/alibaba/wukong/im/Conversation;I)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 3
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 865
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$4500(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string/jumbo v2, "jsapi_edit_group_desc_success"

    invoke-virtual {v1, v0, p1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 866
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 862
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11$1;->onSuccess(Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method
