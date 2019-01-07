.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lhro$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;

    .prologue
    .line 1793
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pickCallback(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1796
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1798
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1799
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$3200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1804
    :goto_0
    return-void

    .line 1800
    :catch_0
    move-exception v0

    .line 1801
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1802
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const/4 v3, 0x3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$3300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
