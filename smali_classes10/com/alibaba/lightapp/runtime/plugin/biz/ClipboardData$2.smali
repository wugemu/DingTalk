.class Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$2;
.super Ljava/lang/Object;
.source "ClipboardData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;->getData(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x3

    .line 62
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;->access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;)Landroid/content/Context;

    move-result-object v2

    .line 63
    .local v2, "context":Landroid/content/Context;
    if-nez v2, :cond_0

    .line 64
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;

    const-string/jumbo v6, "Failed to get context"

    invoke-static {v7, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 68
    :cond_0
    const-string/jumbo v5, "clipboard"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 69
    .local v1, "cm":Landroid/text/ClipboardManager;
    if-nez v1, :cond_1

    .line 70
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;

    const-string/jumbo v6, "Failed to get clipboard manager"

    invoke-static {v7, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;->access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v1}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 75
    .local v0, "charSequence":Ljava/lang/CharSequence;
    if-nez v0, :cond_2

    .line 76
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;

    const-string/jumbo v6, "Failed to get charsequence from clipboard"

    invoke-static {v7, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;->access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 82
    .local v4, "r":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "text"

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_1
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;->access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :catch_0
    move-exception v3

    .line 84
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
