.class Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$2;
.super Ljava/lang/Object;
.source "Attend.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;->showPrivacyPolicy(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgree()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 112
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "isConfirm"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;

    const/4 v3, 0x3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCheck()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 122
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 123
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "isConfirm"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;

    const/4 v3, 0x3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;->access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDeny()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 134
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "isConfirm"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;->access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;

    const/4 v3, 0x3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;->access$800(Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;->access$900(Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method
