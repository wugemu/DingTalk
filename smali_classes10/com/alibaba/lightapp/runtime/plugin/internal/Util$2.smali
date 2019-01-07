.class Lcom/alibaba/lightapp/runtime/plugin/internal/Util$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->authAlipayInvoice(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 355
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$2;->onDataReceived(Ljava/lang/String;)V

    return-void
.end method

.method public onDataReceived(Ljava/lang/String;)V
    .locals 4
    .param p1, "authCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 358
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    const-string/jumbo v2, "authCode is empty"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :goto_0
    return-void

    .line 361
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 363
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v1, "auth_code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$800(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 366
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    const-string/jumbo v2, "JSONException"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$900(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :catch_1
    move-exception v1

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    const-string/jumbo v2, "Exception"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 380
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 376
    return-void
.end method
