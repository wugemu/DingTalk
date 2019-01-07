.class public Lcom/alibaba/doraemon/impl/request/HttpClientStack;
.super Ljava/lang/Object;
.source "HttpClientStack.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/request/HttpStack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/request/HttpClientStack$HttpPatch;
    }
.end annotation


# instance fields
.field protected final mClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/HttpClientStack;->mClient:Lorg/apache/http/client/HttpClient;

    .line 54
    return-void
.end method

.method private static addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
    .locals 3
    .param p0, "httpRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static createHttpRequest(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/doraemon/impl/request/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    .local p1, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getMethod()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 139
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Unknown request method."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 98
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getPostBody()[B

    move-result-object v2

    .line 99
    .local v2, "postBody":[B
    if-eqz v2, :cond_0

    .line 100
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 101
    .local v3, "postRequest":Lorg/apache/http/client/methods/HttpPost;
    const-string/jumbo v5, "Content-Type"

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getPostBodyContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 104
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 136
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "postBody":[B
    .end local v3    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    return-object v3

    .line 107
    .restart local v2    # "postBody":[B
    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v2    # "postBody":[B
    :pswitch_1
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :pswitch_2
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :pswitch_3
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 116
    .restart local v3    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    const-string/jumbo v5, "Content-Type"

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getBodyContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {v3, p0}, Lcom/alibaba/doraemon/impl/request/HttpClientStack;->setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/alibaba/doraemon/impl/request/VolleyRequest;)V

    goto :goto_0

    .line 121
    .end local v3    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    :pswitch_4
    new-instance v4, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 122
    .local v4, "putRequest":Lorg/apache/http/client/methods/HttpPut;
    const-string/jumbo v5, "Content-Type"

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getBodyContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {v4, p0}, Lcom/alibaba/doraemon/impl/request/HttpClientStack;->setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/alibaba/doraemon/impl/request/VolleyRequest;)V

    move-object v3, v4

    .line 124
    goto :goto_0

    .line 127
    .end local v4    # "putRequest":Lorg/apache/http/client/methods/HttpPut;
    :pswitch_5
    new-instance v3, Lorg/apache/http/client/methods/HttpHead;

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :pswitch_6
    new-instance v3, Lorg/apache/http/client/methods/HttpOptions;

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :pswitch_7
    new-instance v3, Lorg/apache/http/client/methods/HttpTrace;

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpTrace;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :pswitch_8
    new-instance v1, Lcom/alibaba/doraemon/impl/request/HttpClientStack$HttpPatch;

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/alibaba/doraemon/impl/request/HttpClientStack$HttpPatch;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, "patchRequest":Lcom/alibaba/doraemon/impl/request/HttpClientStack$HttpPatch;
    const-string/jumbo v5, "Content-Type"

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getBodyContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/doraemon/impl/request/HttpClientStack$HttpPatch;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {v1, p0}, Lcom/alibaba/doraemon/impl/request/HttpClientStack;->setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/alibaba/doraemon/impl/request/VolleyRequest;)V

    move-object v3, v1

    .line 136
    goto/16 :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static getPostParameterPairs(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    .local v0, "key":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v0, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private static setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/alibaba/doraemon/impl/request/VolleyRequest;)V
    .locals 2
    .param p0, "httpRequest"    # Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/doraemon/impl/request/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getBody()[B

    move-result-object v0

    .line 146
    .local v0, "body":[B
    if-eqz v0, :cond_0

    .line 147
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 148
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {p0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 150
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onPrepareRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    return-void
.end method

.method public performRequest(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/doraemon/impl/request/AuthFailureError;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/alibaba/doraemon/impl/request/HttpClientStack;->createHttpRequest(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    .line 75
    .local v1, "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static {v1, p2}, Lcom/alibaba/doraemon/impl/request/HttpClientStack;->addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 76
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alibaba/doraemon/impl/request/HttpClientStack;->addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 77
    invoke-virtual {p0, v1}, Lcom/alibaba/doraemon/impl/request/HttpClientStack;->onPrepareRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 78
    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 79
    .local v0, "httpParams":Lorg/apache/http/params/HttpParams;
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getTimeoutMs()I

    move-result v2

    .line 82
    .local v2, "timeoutMs":I
    const/16 v3, 0x1388

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 83
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 84
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/HttpClientStack;->mClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    return-object v3
.end method
