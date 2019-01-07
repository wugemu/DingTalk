.class Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$1;
.super Ljava/lang/Object;
.source "Certify.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->step(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
        "Ljava/util/List",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

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
    .line 88
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "step"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 70
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$1;->onProgress(Ljava/util/List;I)V

    return-void
.end method

.method public onProgress(Ljava/util/List;I)V
    .locals 0
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "integers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 70
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    .local p1, "steps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .local v2, "result":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 76
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 77
    .local v0, "array":Lorg/json/JSONArray;
    const-string/jumbo v3, "steps"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "array":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    const-string/jumbo v3, "lightapp"

    const-string/jumbo v4, "step"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "steps:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 84
    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
