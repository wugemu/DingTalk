.class Lcom/alibaba/lightapp/runtime/plugin/internal/Request$2;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lgte;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->httpOverLWP(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgte",
        "<",
        "Lgtj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Request;

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Request;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Request;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Request;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$2;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lgtj;)V
    .locals 11
    .param p1, "httpResponse"    # Lgtj;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 239
    invoke-virtual {p1}, Lgtj;->a()I

    move-result v6

    .line 240
    .local v6, "statusCode":I
    invoke-virtual {p1}, Lgtj;->b()Ljava/lang/String;

    move-result-object v7

    .line 241
    .local v7, "statusMsg":Ljava/lang/String;
    invoke-virtual {p1}, Lgtj;->d()[B

    move-result-object v0

    .line 242
    .local v0, "body":[B
    invoke-virtual {p1}, Lgtj;->c()Ljava/util/Map;

    move-result-object v2

    .line 243
    .local v2, "headerList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 244
    .local v3, "headers":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 245
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 247
    .local v5, "key":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Request;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v10, v8}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Request;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 253
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v5    # "key":Ljava/lang/String;
    :cond_0
    const-string/jumbo v8, "Set-Cookie"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 255
    :try_start_1
    invoke-static {}, Lcom/uc/webview/export/CookieManager;->getInstance()Lcom/uc/webview/export/CookieManager;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$2;->val$url:Ljava/lang/String;

    const-string/jumbo v10, "Set-Cookie"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/uc/webview/export/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 261
    :cond_1
    :goto_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 263
    .local v4, "json":Lorg/json/JSONObject;
    :try_start_2
    const-string/jumbo v8, "responseText"

    new-instance v9, Ljava/lang/String;

    const-string/jumbo v10, "utf-8"

    invoke-direct {v9, v0, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string/jumbo v8, "responseHeaders"

    invoke-virtual {v4, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string/jumbo v8, "statusCode"

    invoke-virtual {v4, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 266
    const-string/jumbo v8, "statusText"

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 270
    :goto_2
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Request;

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$2;->val$callbackId:Ljava/lang/String;

    invoke-static {v8, v4, v9}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Request;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 271
    return-void

    .line 256
    .end local v4    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 257
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 267
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v4    # "json":Lorg/json/JSONObject;
    :catch_2
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 236
    check-cast p1, Lgtj;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$2;->onResult(Lgtj;)V

    return-void
.end method
