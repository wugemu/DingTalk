.class Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$5;
.super Ljava/lang/Object;
.source "RequestMoney.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;->updateCardStatus(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

.field final synthetic val$extra:Ljava/util/Map;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;Ljava/util/Map;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$5;->val$extra:Ljava/util/Map;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$5;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Lcom/alibaba/wukong/im/Message;)V
    .locals 3
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 594
    if-eqz p1, :cond_0

    .line 595
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$5;->val$extra:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->updatePrivateExtension(Ljava/util/Map;)V

    .line 596
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$5;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;Ljava/lang/String;)V

    .line 600
    :goto_0
    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

    const-string/jumbo v1, "message is not exist"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$5;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;->access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 591
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$5;->onDataReceived(Lcom/alibaba/wukong/im/Message;)V

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
    .line 609
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "RequestMonkey updateCardStatus failed, code="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "error":Ljava/lang/String;
    const-string/jumbo v1, "lightapp"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

    invoke-static {p1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$5;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;->access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 605
    return-void
.end method
