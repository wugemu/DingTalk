.class Lcom/alibaba/lightapp/runtime/plugin/biz/Sports$1;
.super Lcmi;
.source "Sports.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;->fetchStephubSteps(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhkf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports$1;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-static {p1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;->access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onLoadSuccess(Lhkf;)V
    .locals 6
    .param p1, "stepModel"    # Lhkf;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;

    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "fetch failed and result is empty"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 49
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .local v0, "result":Lorg/json/JSONObject;
    const-string/jumbo v1, "count"

    iget-object v2, p1, Lhkf;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string/jumbo v1, "timestamp"

    iget-object v2, p1, Lhkf;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;

    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v0}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    .end local v0    # "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;

    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x2

    const-string/jumbo v5, "fetch failed"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;->access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    check-cast p1, Lhkf;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports$1;->onLoadSuccess(Lhkf;)V

    return-void
.end method
