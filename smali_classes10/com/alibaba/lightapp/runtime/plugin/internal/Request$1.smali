.class Lcom/alibaba/lightapp/runtime/plugin/internal/Request$1;
.super Lcmi;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->lwp(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Request;

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$reqUri:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Request;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Request;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$1;->val$reqUri:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$1;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 122
    const-string/jumbo v3, "Resource"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$1;->val$url:Ljava/lang/String;

    const-string/jumbo v5, "fromType=lwp====onException"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "reqUri:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$1;->val$reqUri:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v2, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "uri"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$1;->val$reqUri:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v3, "sessionId"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string/jumbo v3, "status"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "oa_cloud_lwp_fail"

    invoke-interface {v3, v4, v5, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 129
    if-eqz p3, :cond_0

    .line 130
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 134
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    const-string/jumbo p1, "900"

    .line 137
    :cond_1
    const-string/jumbo v3, "statusCode"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string/jumbo v3, "statusText"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Request;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v3, v1, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Request;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 144
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 97
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$1;->onLoadSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onLoadSuccess(Ljava/lang/String;)V
    .locals 9
    .param p1, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    const-string/jumbo v3, "Resource"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$1;->val$url:Ljava/lang/String;

    const-string/jumbo v5, "fromType=lwp====onLoadSuccess"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "reqUri:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$1;->val$reqUri:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v2, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "uri"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$1;->val$reqUri:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v3, "sessionId"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string/jumbo v3, "status"

    const-string/jumbo v4, "200"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "oa_cloud_lwp_response"

    invoke-interface {v3, v4, v5, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 109
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 111
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "responseText"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string/jumbo v3, "statusCode"

    const/16 v4, 0xc8

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Request;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v3, v1, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Request;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 118
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
