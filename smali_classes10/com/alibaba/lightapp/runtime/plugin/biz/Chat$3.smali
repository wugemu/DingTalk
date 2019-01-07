.class Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/Plugin$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->pickConversation(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
    .line 393
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 396
    const-string/jumbo v6, "conversation_id"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "conversationId":Ljava/lang/String;
    const-string/jumbo v6, "corpid"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "corpId":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 399
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 400
    invoke-virtual {v6, v7}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v3

    .line 401
    .local v3, "session":Lhqe$d;
    if-eqz v3, :cond_1

    .line 1488
    iget-object v1, v3, Lhqe$d;->b:Ljava/lang/String;

    .line 404
    .end local v3    # "session":Lhqe$d;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 405
    const-string/jumbo v5, "conversation_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, "title":Ljava/lang/String;
    new-instance v2, Lhqt;

    invoke-direct {v2}, Lhqt;-><init>()V

    .line 407
    .local v2, "oapiAPI":Lhqs;
    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;

    invoke-direct {v5, p0, v0, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1, v0, v5}, Lhqs;->c(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 444
    .end local v2    # "oapiAPI":Lhqs;
    .end local v4    # "title":Ljava/lang/String;
    :goto_1
    return-void

    .restart local v3    # "session":Lhqe$d;
    :cond_1
    move-object v1, v5

    .line 401
    goto :goto_0

    .line 440
    .end local v3    # "session":Lhqe$d;
    :cond_2
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    const/4 v7, 0x3

    const-string/jumbo v8, "null corpid or cid is returned"

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1600(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 441
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v6, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1102(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method public bridge synthetic onReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 393
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;->onReceived(Landroid/content/Intent;)V

    return-void
.end method
