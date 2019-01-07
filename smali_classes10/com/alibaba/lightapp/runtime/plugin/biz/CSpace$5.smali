.class Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$5;
.super Ljava/lang/Object;
.source "CSpace.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->getPlayUrl(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
        "Lgra;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$5;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Lgra;)V
    .locals 7
    .param p1, "mediaFilePreviewInfoObject"    # Lgra;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 408
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 411
    .local v1, "resultJson":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "url"

    .line 1020
    iget-object v3, p1, Lgra;->a:Ljava/lang/String;

    .line 411
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    const-string/jumbo v2, "status"

    .line 1028
    iget v3, p1, Lgra;->b:I

    .line 412
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$5;->val$callbackId:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 419
    return-void

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "lightapp"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "getPlayUrl onDataReceived"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 415
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 414
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 405
    check-cast p1, Lgra;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$5;->onDataReceived(Lgra;)V

    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 428
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 430
    .local v1, "resultJson":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "status"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 431
    const-string/jumbo v2, "errorCode"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    const-string/jumbo v2, "errorMsg"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :goto_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$5;->val$callbackId:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$900(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 439
    return-void

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "lightapp"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "getPlayUrl onException"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 435
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 434
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 424
    return-void
.end method
