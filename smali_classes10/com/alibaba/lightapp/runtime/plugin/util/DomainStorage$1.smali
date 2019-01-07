.class Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$1;
.super Ljava/lang/Object;
.source "DomainStorage.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;->getItem(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;

    const/4 v1, 0x2

    invoke-static {v1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;->access$200(Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 57
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$1;->onProgress(Ljava/lang/String;I)V

    return-void
.end method

.method public onProgress(Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 79
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x2

    .line 60
    if-nez p1, :cond_0

    .line 61
    const-string/jumbo p1, ""

    .line 63
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 65
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;->access$000(Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "getItem "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;->access$100(Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
