.class Lcom/alibaba/lightapp/runtime/plugin/biz/Store$1;
.super Lcmi;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->inquiry(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhjf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Store;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Store;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Store;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Store$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Store;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Store$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Store$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Store;

    invoke-static {p1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Store$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Store;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onLoadSuccess(Lhjf;)V
    .locals 3
    .param p1, "inappPurchaseResult"    # Lhjf;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Store$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Store;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Store$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Store;

    invoke-virtual {v1, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->buildInappPurchaseResult(Lhjf;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Store$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Store;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public bridge synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lhjf;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Store$1;->onLoadSuccess(Lhjf;)V

    return-void
.end method
