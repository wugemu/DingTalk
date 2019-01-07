.class Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$4;
.super Ljava/lang/Object;
.source "CSpace.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->getMediaInfo(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
        "Lgrh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Lgrh;)V
    .locals 7
    .param p1, "result"    # Lgrh;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 314
    const-string/jumbo v3, ""

    const-string/jumbo v4, "null result"

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$4;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_0
    return-void

    .line 319
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 320
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "spaceId"

    iget-object v4, p1, Lgrh;->i:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string/jumbo v3, "fileId"

    iget-object v4, p1, Lgrh;->j:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v3

    iget-object v4, p1, Lgrh;->c:Ljava/lang/String;

    iget-object v5, p1, Lgrh;->i:Ljava/lang/String;

    iget-object v6, p1, Lgrh;->j:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "thumbnailUrl":Ljava/lang/String;
    const-string/jumbo v3, "thumbnailUrl"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    const-string/jumbo v3, "thumbnailMediaId"

    iget-object v4, p1, Lgrh;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    const-string/jumbo v3, "thumbnailAuthMediaId"

    iget-object v4, p1, Lgrh;->c:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string/jumbo v3, "thumbnailAuthCode"

    iget-object v4, p1, Lgrh;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string/jumbo v3, "thumbnailWidth"

    iget v4, p1, Lgrh;->e:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 331
    const-string/jumbo v3, "thumbnailHeight"

    iget v4, p1, Lgrh;->f:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 332
    const-string/jumbo v3, "thumbnailRotation"

    iget v4, p1, Lgrh;->g:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 333
    const-string/jumbo v3, "thumbnailDataSize"

    iget-wide v4, p1, Lgrh;->h:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 334
    const-string/jumbo v3, "duration"

    iget-wide v4, p1, Lgrh;->a:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 335
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v3, v1, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$1900(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "thumbnailUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 339
    const-string/jumbo v3, "3"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$4;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 310
    check-cast p1, Lgrh;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$4;->onDataReceived(Lgrh;)V

    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 349
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    invoke-static {p1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$2000(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 345
    return-void
.end method
