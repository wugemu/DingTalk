.class public Lcom/alibaba/doraemon/impl/request/HurlStack;
.super Ljava/lang/Object;
.source "HurlStack.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/request/HttpStack;


# static fields
.field private static final USER_AGENT:Ljava/lang/String; = "User-Agent"


# instance fields
.field private final mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private mUrlRewriter:Lcom/alibaba/doraemon/request/UrlRewriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/request/HurlStack;-><init>(Lcom/alibaba/doraemon/request/UrlRewriter;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/request/UrlRewriter;)V
    .locals 1
    .param p1, "urlRewriter"    # Lcom/alibaba/doraemon/request/UrlRewriter;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/doraemon/impl/request/HurlStack;-><init>(Lcom/alibaba/doraemon/request/UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/request/UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1, "urlRewriter"    # Lcom/alibaba/doraemon/request/UrlRewriter;
    .param p2, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/HurlStack;->mUrlRewriter:Lcom/alibaba/doraemon/request/UrlRewriter;

    .line 67
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/HurlStack;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 68
    return-void
.end method

.method private static addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/alibaba/doraemon/impl/request/VolleyRequest;)V
    .locals 4
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/doraemon/impl/request/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getBody()[B

    move-result-object v0

    .line 262
    .local v0, "body":[B
    if-eqz v0, :cond_0

    .line 263
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 264
    const-string/jumbo v2, "Content-Type"

    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getBodyContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 266
    .local v1, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 267
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 269
    .end local v1    # "out":Ljava/io/DataOutputStream;
    :cond_0
    return-void
.end method

.method private static entityFromConnection(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;
    .locals 4
    .param p0, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 157
    new-instance v0, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 160
    .local v0, "entity":Lorg/apache/http/entity/BasicHttpEntity;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 164
    .local v1, "inputStream":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 165
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 166
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 168
    return-object v0

    .line 162
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .restart local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method private openConnection(Ljava/net/URL;Lcom/alibaba/doraemon/impl/request/VolleyRequest;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    .local p2, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/impl/request/HurlStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 187
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {p2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getTimeoutMs()I

    move-result v1

    .line 188
    .local v1, "timeoutMs":I
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 189
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 190
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 191
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 193
    new-instance v2, Ljava/net/CookieManager;

    const/4 v3, 0x0

    sget-object v4, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-direct {v2, v3, v4}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    invoke-static {v2}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 196
    const-string/jumbo v2, "https"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/HurlStack;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 197
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/HurlStack;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 200
    :cond_0
    return-object v0
.end method

.method static setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/alibaba/doraemon/impl/request/VolleyRequest;)V
    .locals 4
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/doraemon/impl/request/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getMethod()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 255
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unknown method type."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 211
    :pswitch_0
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getPostBody()[B

    move-result-object v1

    .line 212
    .local v1, "postBody":[B
    if-eqz v1, :cond_0

    .line 216
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 217
    const-string/jumbo v2, "POST"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v2, "Content-Type"

    .line 219
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getPostBodyContentType()Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 221
    .local v0, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 222
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 257
    .end local v0    # "out":Ljava/io/DataOutputStream;
    .end local v1    # "postBody":[B
    :cond_0
    :goto_0
    return-void

    .line 228
    :pswitch_1
    const-string/jumbo v2, "GET"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :pswitch_2
    const-string/jumbo v2, "DELETE"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :pswitch_3
    const-string/jumbo v2, "POST"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 235
    invoke-static {p0, p1}, Lcom/alibaba/doraemon/impl/request/HurlStack;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/alibaba/doraemon/impl/request/VolleyRequest;)V

    goto :goto_0

    .line 238
    :pswitch_4
    const-string/jumbo v2, "PUT"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 239
    invoke-static {p0, p1}, Lcom/alibaba/doraemon/impl/request/HurlStack;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/alibaba/doraemon/impl/request/VolleyRequest;)V

    goto :goto_0

    .line 242
    :pswitch_5
    const-string/jumbo v2, "HEAD"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :pswitch_6
    const-string/jumbo v2, "OPTIONS"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :pswitch_7
    const-string/jumbo v2, "TRACE"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :pswitch_8
    invoke-static {p0, p1}, Lcom/alibaba/doraemon/impl/request/HurlStack;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/alibaba/doraemon/impl/request/VolleyRequest;)V

    .line 252
    const-string/jumbo v2, "PATCH"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    nop

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


# virtual methods
.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public performRequest(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 23
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

    .prologue
    .line 73
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v17

    .line 74
    .local v17, "url":Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v9, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 76
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 79
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 80
    .local v16, "uri":Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, "host":Ljava/lang/String;
    const-string/jumbo v19, "Host"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v19, "User-Agent"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getUserAgentFetcher()Lcom/alibaba/doraemon/UserAgentFetcher;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 85
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getUserAgentFetcher()Lcom/alibaba/doraemon/UserAgentFetcher;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/doraemon/UserAgentFetcher;->getUserAgent()Ljava/lang/String;

    move-result-object v18

    .line 86
    .local v18, "userAgent":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 87
    const-string/jumbo v19, "User-Agent"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .end local v18    # "userAgent":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/request/HurlStack;->mUrlRewriter:Lcom/alibaba/doraemon/request/UrlRewriter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/request/HurlStack;->mUrlRewriter:Lcom/alibaba/doraemon/request/UrlRewriter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/UrlRewriter;->rewriteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 94
    .local v15, "rewritten":Ljava/lang/String;
    if-nez v15, :cond_1

    .line 95
    new-instance v19, Ljava/io/IOException;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "URL blocked by rewriter: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 98
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 99
    const-string/jumbo v19, "HurlStack"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " is rewriten to ==>\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/alibaba/doraemon/DoraemonLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_2
    move-object/from16 v17, v15

    .line 105
    .end local v15    # "rewritten":Ljava/lang/String;
    :cond_3
    new-instance v10, Ljava/net/URL;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 108
    .local v10, "parsedUrl":Ljava/net/URL;
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0xe

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    .line 109
    const v19, 0xa00b

    invoke-static/range {v19 .. v19}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 111
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1}, Lcom/alibaba/doraemon/impl/request/HurlStack;->openConnection(Ljava/net/URL;Lcom/alibaba/doraemon/impl/request/VolleyRequest;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 112
    .local v3, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 113
    .local v6, "headerName":Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 114
    .local v7, "headerValue":Ljava/lang/String;
    invoke-virtual {v3, v6, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    .end local v6    # "headerName":Ljava/lang/String;
    .end local v7    # "headerValue":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/alibaba/doraemon/impl/request/HurlStack;->setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/alibaba/doraemon/impl/request/VolleyRequest;)V

    .line 119
    new-instance v11, Lorg/apache/http/ProtocolVersion;

    const-string/jumbo v19, "HTTP"

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v11, v0, v1, v2}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 121
    .local v11, "protocolVersion":Lorg/apache/http/ProtocolVersion;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    .line 123
    .local v13, "responseCode":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_6

    .line 126
    new-instance v19, Ljava/io/IOException;

    const-string/jumbo v20, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 127
    :cond_6
    const/16 v19, 0x198

    move/from16 v0, v19

    if-ne v13, v0, :cond_7

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/request/HurlStack;->mUrlRewriter:Lcom/alibaba/doraemon/request/UrlRewriter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/request/HurlStack;->mUrlRewriter:Lcom/alibaba/doraemon/request/UrlRewriter;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v8, v1}, Lcom/alibaba/doraemon/request/UrlRewriter;->requestTimeout(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_7
    new-instance v14, Lorg/apache/http/message/BasicStatusLine;

    .line 134
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v19

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v14, v11, v0, v1}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 135
    .local v14, "responseStatus":Lorg/apache/http/StatusLine;
    new-instance v12, Lorg/apache/http/message/BasicHttpResponse;

    invoke-direct {v12, v14}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    .line 136
    .local v12, "response":Lorg/apache/http/message/BasicHttpResponse;
    invoke-static {v3}, Lcom/alibaba/doraemon/impl/request/HurlStack;->entityFromConnection(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 137
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_8
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 138
    .local v5, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_8

    .line 139
    new-instance v4, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .local v4, "h":Lorg/apache/http/Header;
    invoke-virtual {v12, v4}, Lorg/apache/http/message/BasicHttpResponse;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_1

    .line 144
    .end local v4    # "h":Lorg/apache/http/Header;
    .end local v5    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_9
    return-object v12
.end method

.method public setUrlRewriter(Lcom/alibaba/doraemon/request/UrlRewriter;)V
    .locals 0
    .param p1, "urlRewriter"    # Lcom/alibaba/doraemon/request/UrlRewriter;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/HurlStack;->mUrlRewriter:Lcom/alibaba/doraemon/request/UrlRewriter;

    .line 149
    return-void
.end method
