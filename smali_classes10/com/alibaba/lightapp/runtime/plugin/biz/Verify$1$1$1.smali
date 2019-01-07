.class Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1$1;
.super Ljava/lang/Object;
.source "Verify.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;->onLoadSuccess(Lhiy;)V
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
.field final synthetic this$2:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;

.field final synthetic val$faceAuthModel:Lhiy;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;Lhiy;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1$1;->val$faceAuthModel:Lhiy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 288
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1$1;->onDataReceived(Ljava/lang/String;)V

    return-void
.end method

.method public onDataReceived(Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 291
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 293
    .local v1, "res":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "tmpAuthCode"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1$1;->val$faceAuthModel:Lhiy;

    iget-object v3, v3, Lhiy;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 297
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    const/16 v3, 0x2f44

    const-string/jumbo v4, "ZolozFail"

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;Lorg/json/JSONObject;Ljava/lang/String;)V

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
    .line 307
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    const/16 v1, 0x2f44

    const-string/jumbo v2, "ZolozFail"

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 303
    return-void
.end method
