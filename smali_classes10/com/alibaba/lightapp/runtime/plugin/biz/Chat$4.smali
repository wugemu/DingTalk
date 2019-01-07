.class Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$4;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->locationChatMessage(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

.field final synthetic val$msgId:Ljava/lang/String;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$4;->val$msgId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 467
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$4;->onDataReceived(Ljava/lang/String;)V

    return-void
.end method

.method public onDataReceived(Ljava/lang/String;)V
    .locals 5
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 470
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1700(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Landroid/content/Context;

    move-result-object v1

    .line 471
    .local v1, "ctx":Landroid/content/Context;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 472
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 473
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "anchor_id"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$4;->val$msgId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    check-cast v1, Landroid/app/Activity;

    .end local v1    # "ctx":Landroid/content/Context;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, p1, v0, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 475
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1800(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;)V

    .line 479
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 477
    .restart local v1    # "ctx":Landroid/content/Context;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    const/4 v3, 0x3

    const-string/jumbo v4, "context invalid"

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1900(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V

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
    .line 488
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    const/4 v1, 0x3

    invoke-static {v1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$2000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 484
    return-void
.end method
