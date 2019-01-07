.class final Leji$1;
.super Ljava/lang/Object;
.source "FastConfigContentFetch.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lejh;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Leji;


# direct methods
.method constructor <init>(Leji;Lejh;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Leji;

    .prologue
    .line 91
    iput-object p1, p0, Leji$1;->d:Leji;

    iput-object p2, p0, Leji$1;->a:Lejh;

    iput-object p3, p0, Leji$1;->b:Ljava/lang/String;

    iput-wide p4, p0, Leji$1;->c:J

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
    .line 134
    return-void
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 10
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 95
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v4

    .line 96
    .local v4, "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    const-string/jumbo v5, "UTF-8"

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/utils/IOUtils;->inputStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "bodyString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 100
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "content"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 103
    .local v1, "contentObj":Lorg/json/JSONObject;
    if-eqz v1, :cond_3

    .line 104
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "contentStr":Ljava/lang/String;
    iget-object v5, p0, Leji$1;->a:Lejh;

    if-eqz v5, :cond_0

    .line 106
    iget-object v5, p0, Leji$1;->a:Lejh;

    invoke-interface {v5, v2}, Lejh;->a(Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v5, p0, Leji$1;->d:Leji;

    iget-object v6, p0, Leji$1;->b:Ljava/lang/String;

    invoke-static {v5, v6}, Leji;->a(Leji;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Leji$1;->c:J

    invoke-static {v5, v6, v7}, Lcpk;->b(Ljava/lang/String;J)V

    .line 109
    const-string/jumbo v5, "fastCfg"

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "requestData callback content :"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1    # "contentObj":Lorg/json/JSONObject;
    .end local v2    # "contentStr":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    const-string/jumbo v5, "fastCfg"

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "requestData finish:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .end local v0    # "bodyString":Ljava/lang/String;
    .end local v4    # "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_2
    return-void

    .line 112
    .restart local v0    # "bodyString":Ljava/lang/String;
    .restart local v1    # "contentObj":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_3
    :try_start_1
    const-string/jumbo v5, "fastCfg"

    const/4 v6, 0x0

    const-string/jumbo v7, "requestData json content is null"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 118
    .end local v1    # "contentObj":Lorg/json/JSONObject;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    const-string/jumbo v5, "fastCfg"

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "requestData parse error :"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 129
    return-void
.end method
