.class Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$1$2;
.super Ljava/lang/Object;
.source "InternalChat.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$1;->onSuccess(Lcom/alibaba/wukong/im/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$1;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$1$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$1$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$1$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$1$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x3

    .line 229
    invoke-static {v3, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$1$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 228
    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 224
    return-void
.end method
