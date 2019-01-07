.class final Lhfr$1;
.super Ljava/lang/Object;
.source "FastHpmConfigHandler.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhfr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhfr;


# direct methods
.method constructor <init>(Lhfr;)V
    .locals 0
    .param p1, "this$0"    # Lhfr;

    .prologue
    .line 81
    iput-object p1, p0, Lhfr$1;->a:Lhfr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "l"    # J
    .param p4, "l1"    # J

    .prologue
    .line 101
    return-void
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 14
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 84
    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v1

    .line 86
    .local v1, "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/utils/IOUtils;->inputStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "bodyString":Ljava/lang/String;
    iget-object v2, p0, Lhfr$1;->a:Lhfr;

    .line 1107
    const/4 v2, 0x0

    .line 1110
    :try_start_0
    invoke-static {v0}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1115
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1116
    const-string/jumbo v3, "FAST_CONFIG_HPM_VERSION_PREFERENCE_KEY"

    invoke-static {v3}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1117
    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1119
    const-string/jumbo v4, "WebConfig"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "FastHpmConfigHandler-parseConfigContent"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-static {v4, v6, v7, v8}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1121
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1123
    :try_start_1
    const-string/jumbo v3, "content"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 1124
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1125
    const-string/jumbo v3, "demotion"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1126
    const-string/jumbo v3, "demotion"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1127
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    .line 1128
    if-eqz v6, :cond_4

    .line 1129
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    .line 1130
    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v7, :cond_4

    .line 1131
    invoke-virtual {v6, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 1132
    if-eqz v3, :cond_1

    .line 1133
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1134
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 1135
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1136
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1137
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v9

    .line 1349
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    if-nez v3, :cond_1

    .line 1354
    :try_start_2
    iget-object v3, v9, Lhhy;->f:Ljava/util/Map;

    invoke-interface {v3, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    iget-object v3, v9, Lhhy;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1357
    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1358
    iget-object v3, v9, Lhhy;->e:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhic;

    .line 1359
    if-eqz v3, :cond_0

    .line 1360
    iget-object v3, v3, Lhic;->c:Ljava/lang/String;

    .line 1361
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1362
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1363
    invoke-virtual {v9, v2}, Lhhy;->h(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1372
    :cond_0
    :goto_2
    :try_start_3
    const-string/jumbo v3, "hpm"

    const-string/jumbo v9, ""

    const-string/jumbo v10, "hpm_add_demotion_app"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "appId="

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v2, v11, v12

    const/4 v2, 0x2

    const-string/jumbo v12, "version="

    aput-object v12, v11, v2

    const/4 v2, 0x3

    aput-object v8, v11, v2

    invoke-static {v3, v9, v10, v11}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1130
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 1111
    :catch_0
    move-exception v3

    .line 1112
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 1368
    :catch_1
    move-exception v3

    .line 1369
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 1146
    :catch_2
    move-exception v2

    .line 1147
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    .line 89
    :cond_2
    :goto_3
    const-string/jumbo v2, "WebConfig"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "FastHpmConfigHandler-onRequestFinsh"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .end local v0    # "bodyString":Ljava/lang/String;
    .end local v1    # "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_3
    return-void

    .line 1145
    .restart local v0    # "bodyString":Ljava/lang/String;
    .restart local v1    # "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_4
    :try_start_5
    const-string/jumbo v2, "FAST_CONFIG_HPM_VERSION_PREFERENCE_KEY"

    invoke-static {v2, v5}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 96
    return-void
.end method
