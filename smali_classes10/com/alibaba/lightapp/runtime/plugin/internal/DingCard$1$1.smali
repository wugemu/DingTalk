.class Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1$1;
.super Lcmi;
.source "DingCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;->onDataReceived(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    const-string/jumbo v0, "lightapp"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$100()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Unbind work-mobile fail: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 102
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    invoke-static {v2, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public bridge synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1$1;->onLoadSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onLoadSuccess(Ljava/lang/Void;)V
    .locals 5
    .param p1, "aVoid"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.alibaba.dingtalk.runtimebase.WORK_MOBILE_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 86
    const-string/jumbo v2, "lightapp"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Unbind work-mobile success."

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "clickIndex"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 97
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method
