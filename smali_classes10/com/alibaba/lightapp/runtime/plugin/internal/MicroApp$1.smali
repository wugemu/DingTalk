.class Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp$1;
.super Ljava/lang/Object;
.source "MicroApp.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;->triggerSync(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;

    invoke-static {p1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v0, "JsApi"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    const-string/jumbo v2, "tiggerSync"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "errorCode="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "errorMsg="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 262
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp$1;->onProgress(Ljava/lang/Void;I)V

    return-void
.end method

.method public onProgress(Ljava/lang/Void;I)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/Void;
    .param p2, "i"    # I

    .prologue
    .line 278
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 262
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 265
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/MicroApp;Ljava/lang/String;)V

    .line 266
    return-void
.end method
