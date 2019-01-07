.class Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;
.super Ljava/lang/Object;
.source "DingCard.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->unbindWorkMobile(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

.field final synthetic val$workMobile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;->val$workMobile:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "isRightPwd"    # Ljava/lang/Boolean;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-class v0, Lcom/alibaba/lightapp/runtime/idl/DingCardIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/DingCardIService;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;->val$workMobile:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/idl/DingCardIService;->unsetWorkMobile(Ljava/lang/String;Liyv;)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    const-string/jumbo v3, "15"

    const-string/jumbo v4, "Pwd is wrong"

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 77
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;->onDataReceived(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 121
    .local v0, "errCode":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 122
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v2, "clickIndex"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$800(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 135
    .end local v0    # "errCode":I
    .end local v1    # "result":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 130
    .restart local v0    # "errCode":I
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    invoke-static {v4, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$900(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .end local v0    # "errCode":I
    :catch_0
    move-exception v2

    goto :goto_1

    .restart local v0    # "errCode":I
    .restart local v1    # "result":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 114
    return-void
.end method
