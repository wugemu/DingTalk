.class Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$4;
.super Ljava/lang/Object;
.source "Certify.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->submit(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
        "Ljava/lang/Integer;",
        ">;"
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
    .line 196
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public onProgress(Ljava/lang/Integer;I)V
    .locals 0
    .param p1, "integer"    # Ljava/lang/Integer;
    .param p2, "i"    # I

    .prologue
    .line 216
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 196
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$4;->onProgress(Ljava/lang/Integer;I)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Integer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 199
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 201
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "status"

    .line 1033
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 201
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 206
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 196
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$4;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
