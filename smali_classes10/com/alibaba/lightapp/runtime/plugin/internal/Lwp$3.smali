.class Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$3;
.super Ljava/lang/Object;
.source "Lwp.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->tryOutSuiteForOrg(Lorg/json/JSONObject;Ljava/lang/String;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$3;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Boolean;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 219
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string/jumbo v3, "isSuccess"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 221
    .local v1, "jsonObject":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$3;->val$callbackId:Ljava/lang/String;

    invoke-static {v3, v1, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;

    const/4 v4, 0x3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$3;->val$callbackId:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->access$800(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 214
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$3;->onDataReceived(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 235
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x4

    .line 236
    invoke-static {v3, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$3;->val$callbackId:Ljava/lang/String;

    .line 235
    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->access$900(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 231
    return-void
.end method
