.class public Lilb;
.super Ljava/lang/Object;
.source "HttpClient.java"


# static fields
.field private static a:Landroid/net/http/AndroidHttpClient;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lorg/apache/http/HttpRequest;

.field private e:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lilb;->b:Landroid/content/Context;

    .line 44
    iput-object p1, p0, Lilb;->c:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private f()Ljava/net/URL;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 116
    iget-object v1, p0, Lilb;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    :goto_0
    return-object v0

    .line 120
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lilb;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    const-string/jumbo v2, "LogHttpClient"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private g()Lorg/apache/http/HttpHost;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Lilb;->f()Ljava/net/URL;

    move-result-object v0

    .line 129
    if-nez v0, :cond_0

    move-object v0, v1

    .line 147
    :goto_0
    return-object v0

    .line 133
    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 135
    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 139
    goto :goto_0

    .line 142
    :cond_2
    const-string/jumbo v0, "https"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1bb

    .line 144
    :goto_1
    :try_start_0
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    .line 142
    :cond_3
    const/16 v0, 0x50

    goto :goto_1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    const-string/jumbo v2, "LogHttpClient"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 147
    goto :goto_0
.end method

.method private h()Lorg/apache/http/HttpHost;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 152
    iget-object v0, p0, Lilb;->b:Landroid/content/Context;

    invoke-static {v0}, Lime;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 157
    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 160
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-object v0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const-string/jumbo v1, "LogHttpClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 275
    sget-object v0, Lilb;->a:Landroid/net/http/AndroidHttpClient;

    if-nez v0, :cond_1

    .line 276
    const-class v1, Lilb;

    monitor-enter v1

    .line 277
    :try_start_0
    sget-object v0, Lilb;->a:Landroid/net/http/AndroidHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 280
    :try_start_1
    const-string/jumbo v0, "alipay"

    iget-object v2, p0, Lilb;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 281
    sput-object v0, Lilb;->a:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_0

    .line 284
    const-string/jumbo v2, "http.connection.timeout"

    const/16 v3, 0x7530

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 285
    const-string/jumbo v2, "http.socket.timeout"

    const v3, 0x493e0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    :cond_1
    sget-object v0, Lilb;->a:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_2

    .line 296
    :try_start_3
    sget-object v0, Lilb;->a:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_2

    .line 298
    invoke-direct {p0}, Lilb;->h()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 299
    const-string/jumbo v2, "http.route.default-proxy"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 305
    :cond_2
    :goto_1
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    :try_start_4
    const-string/jumbo v2, "LogHttpClient"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 301
    :catch_1
    move-exception v0

    .line 302
    const-string/jumbo v1, "LogHttpClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public final a()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 56
    iget-object v0, p0, Lilb;->d:Lorg/apache/http/HttpRequest;

    instance-of v0, v0, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_0

    .line 58
    :try_start_0
    iget-object v0, p0, Lilb;->d:Lorg/apache/http/HttpRequest;

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    .line 59
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 67
    :goto_0
    return-wide v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string/jumbo v1, "LogHttpClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 210
    invoke-virtual {p0}, Lilb;->e()V

    .line 213
    :try_start_0
    invoke-static {p1}, Lime;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lilb;->c:Ljava/lang/String;

    .line 215
    :goto_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lilb;->d:Lorg/apache/http/HttpRequest;

    .line 216
    iget-object v0, p0, Lilb;->d:Lorg/apache/http/HttpRequest;

    const-string/jumbo v1, "Content-type"

    const-string/jumbo v2, "text/xml"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lilb;->i()V

    .line 219
    invoke-direct {p0}, Lilb;->g()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 220
    sget-object v1, Lilb;->a:Landroid/net/http/AndroidHttpClient;

    iget-object v2, p0, Lilb;->d:Lorg/apache/http/HttpRequest;

    invoke-virtual {v1, v0, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iput-object v0, p0, Lilb;->e:Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    iget-object v0, p0, Lilb;->e:Lorg/apache/http/HttpResponse;

    return-object v0

    .line 214
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lilb;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    invoke-virtual {p0}, Lilb;->e()V

    .line 224
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a([BLjava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 235
    invoke-virtual {p0}, Lilb;->e()V

    .line 238
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 239
    :cond_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lilb;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lilb;->d:Lorg/apache/http/HttpRequest;

    .line 248
    :goto_0
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 249
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 251
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 252
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    iget-object v3, p0, Lilb;->d:Lorg/apache/http/HttpRequest;

    invoke-interface {v3, v1, v0}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {p0}, Lilb;->e()V

    .line 269
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 242
    :cond_1
    :try_start_1
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lilb;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 243
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 244
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 245
    iput-object v0, p0, Lilb;->d:Lorg/apache/http/HttpRequest;

    goto :goto_0

    .line 257
    :cond_2
    invoke-direct {p0}, Lilb;->i()V

    .line 258
    invoke-direct {p0}, Lilb;->g()Lorg/apache/http/HttpHost;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 261
    :try_start_2
    sget-object v1, Lilb;->a:Landroid/net/http/AndroidHttpClient;

    iget-object v2, p0, Lilb;->d:Lorg/apache/http/HttpRequest;

    invoke-virtual {v1, v0, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    iput-object v1, p0, Lilb;->e:Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 271
    :goto_2
    iget-object v0, p0, Lilb;->e:Lorg/apache/http/HttpResponse;

    return-object v0

    .line 264
    :catch_1
    move-exception v1

    :try_start_3
    sget-object v1, Lilb;->a:Landroid/net/http/AndroidHttpClient;

    iget-object v2, p0, Lilb;->d:Lorg/apache/http/HttpRequest;

    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iput-object v0, p0, Lilb;->e:Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method public final b()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 74
    iget-object v0, p0, Lilb;->e:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    iget-object v0, p0, Lilb;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 84
    :goto_0
    return v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string/jumbo v1, "LogHttpClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 88
    iget-object v0, p0, Lilb;->e:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    iget-object v0, p0, Lilb;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string/jumbo v1, "LogHttpClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 102
    iget-object v0, p0, Lilb;->e:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    iget-object v0, p0, Lilb;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 112
    :goto_0
    return-wide v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string/jumbo v1, "LogHttpClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Lilb;->d:Lorg/apache/http/HttpRequest;

    if-eqz v0, :cond_1

    .line 172
    :try_start_0
    iget-object v0, p0, Lilb;->d:Lorg/apache/http/HttpRequest;

    instance-of v0, v0, Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_4

    .line 173
    iget-object v0, p0, Lilb;->d:Lorg/apache/http/HttpRequest;

    check-cast v0, Lorg/apache/http/client/methods/HttpGet;

    .line 174
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    iput-object v1, p0, Lilb;->d:Lorg/apache/http/HttpRequest;

    .line 187
    :cond_1
    iget-object v0, p0, Lilb;->e:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_3

    .line 189
    :try_start_1
    iget-object v0, p0, Lilb;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_2

    .line 192
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_2

    .line 194
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    :cond_2
    :goto_1
    iput-object v1, p0, Lilb;->e:Lorg/apache/http/HttpResponse;

    .line 202
    :cond_3
    return-void

    .line 176
    :cond_4
    :try_start_2
    iget-object v0, p0, Lilb;->d:Lorg/apache/http/HttpRequest;

    instance-of v0, v0, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lilb;->d:Lorg/apache/http/HttpRequest;

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    .line 178
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
