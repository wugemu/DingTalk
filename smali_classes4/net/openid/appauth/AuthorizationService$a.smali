.class final Lnet/openid/appauth/AuthorizationService$a;
.super Landroid/os/AsyncTask;
.source "AuthorizationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lklh;

.field private b:Lnet/openid/appauth/ClientAuthentication;

.field private final c:Lklo;

.field private d:Lnet/openid/appauth/AuthorizationService$b;

.field private e:Lnet/openid/appauth/AuthorizationException;


# direct methods
.method constructor <init>(Lklh;Lnet/openid/appauth/ClientAuthentication;Lklo;Lnet/openid/appauth/AuthorizationService$b;)V
    .locals 0
    .param p1, "request"    # Lklh;
    .param p2, "clientAuthentication"    # Lnet/openid/appauth/ClientAuthentication;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "connectionBuilder"    # Lklo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "callback"    # Lnet/openid/appauth/AuthorizationService$b;

    .prologue
    .line 399
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 400
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationService$a;->a:Lklh;

    .line 401
    iput-object p2, p0, Lnet/openid/appauth/AuthorizationService$a;->b:Lnet/openid/appauth/ClientAuthentication;

    .line 402
    iput-object p3, p0, Lnet/openid/appauth/AuthorizationService$a;->c:Lklo;

    .line 403
    iput-object p4, p0, Lnet/openid/appauth/AuthorizationService$a;->d:Lnet/openid/appauth/AuthorizationService$b;

    .line 404
    return-void
.end method

.method private varargs a()Lorg/json/JSONObject;
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 408
    const/4 v5, 0x0

    .line 410
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v10, p0, Lnet/openid/appauth/AuthorizationService$a;->c:Lklo;

    iget-object v11, p0, Lnet/openid/appauth/AuthorizationService$a;->a:Lklh;

    iget-object v11, v11, Lklh;->a:Lkkv;

    iget-object v11, v11, Lkkv;->b:Landroid/net/Uri;

    invoke-interface {v10, v11}, Lklo;->a(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 412
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string/jumbo v10, "POST"

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 413
    const-string/jumbo v10, "Content-Type"

    const-string/jumbo v11, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    const-string/jumbo v10, "Accept"

    invoke-virtual {v1, v10}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1511
    const-string/jumbo v10, "Accept"

    const-string/jumbo v11, "application/json"

    invoke-virtual {v1, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_0
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 417
    iget-object v10, p0, Lnet/openid/appauth/AuthorizationService$a;->b:Lnet/openid/appauth/ClientAuthentication;

    iget-object v11, p0, Lnet/openid/appauth/AuthorizationService$a;->a:Lklh;

    iget-object v11, v11, Lklh;->b:Ljava/lang/String;

    .line 418
    invoke-interface {v10, v11}, Lnet/openid/appauth/ClientAuthentication;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 419
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 420
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 421
    .local v3, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 447
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 448
    .local v2, "ex":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v10, "Failed to complete exchange request"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Lklq;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    sget-object v10, Lnet/openid/appauth/AuthorizationException$b;->d:Lnet/openid/appauth/AuthorizationException;

    invoke-static {v10, v2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v10

    iput-object v10, p0, Lnet/openid/appauth/AuthorizationService$a;->e:Lnet/openid/appauth/AuthorizationException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    invoke-static {v5}, Lklj;->b(Ljava/io/InputStream;)V

    .line 458
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_1
    const/4 v10, 0x0

    :goto_2
    return-object v10

    .line 425
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    iget-object v10, p0, Lnet/openid/appauth/AuthorizationService$a;->a:Lklh;

    .line 2504
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2505
    const-string/jumbo v11, "grant_type"

    iget-object v12, v10, Lklh;->d:Ljava/lang/String;

    invoke-interface {v6, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2506
    const-string/jumbo v11, "redirect_uri"

    iget-object v12, v10, Lklh;->e:Landroid/net/Uri;

    invoke-static {v6, v11, v12}, Lklh;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2507
    const-string/jumbo v11, "code"

    iget-object v12, v10, Lklh;->f:Ljava/lang/String;

    invoke-static {v6, v11, v12}, Lklh;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2508
    const-string/jumbo v11, "refresh_token"

    iget-object v12, v10, Lklh;->h:Ljava/lang/String;

    invoke-static {v6, v11, v12}, Lklh;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2509
    const-string/jumbo v11, "code_verifier"

    iget-object v12, v10, Lklh;->i:Ljava/lang/String;

    invoke-static {v6, v11, v12}, Lklh;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2510
    const-string/jumbo v11, "scope"

    iget-object v12, v10, Lklh;->g:Ljava/lang/String;

    invoke-static {v6, v11, v12}, Lklh;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2512
    iget-object v10, v10, Lklh;->j:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 2513
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 451
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v2

    .line 452
    .local v2, "ex":Lorg/json/JSONException;
    :try_start_3
    const-string/jumbo v10, "Failed to complete exchange request"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Lklq;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    sget-object v10, Lnet/openid/appauth/AuthorizationException$b;->f:Lnet/openid/appauth/AuthorizationException;

    invoke-static {v10, v2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v10

    iput-object v10, p0, Lnet/openid/appauth/AuthorizationService$a;->e:Lnet/openid/appauth/AuthorizationException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 456
    invoke-static {v5}, Lklj;->b(Ljava/io/InputStream;)V

    goto :goto_1

    .line 426
    .end local v2    # "ex":Lorg/json/JSONException;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v6, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_4
    iget-object v10, p0, Lnet/openid/appauth/AuthorizationService$a;->b:Lnet/openid/appauth/ClientAuthentication;

    iget-object v11, p0, Lnet/openid/appauth/AuthorizationService$a;->a:Lklh;

    iget-object v11, v11, Lklh;->b:Ljava/lang/String;

    iget-object v12, p0, Lnet/openid/appauth/AuthorizationService$a;->a:Lklh;

    iget-object v12, v12, Lklh;->c:Ljava/lang/String;

    .line 427
    invoke-interface {v10, v11, v12}, Lnet/openid/appauth/ClientAuthentication;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 428
    .local v0, "clientAuthParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    .line 429
    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 432
    :cond_3
    invoke-static {v6}, Lklr;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 433
    .local v7, "queryData":Ljava/lang/String;
    const-string/jumbo v10, "Content-Length"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 436
    .local v9, "wr":Ljava/io/OutputStreamWriter;
    invoke-virtual {v9, v7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->flush()V

    .line 439
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    const/16 v11, 0xc8

    if-lt v10, v11, :cond_4

    .line 440
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    const/16 v11, 0x12c

    if-ge v10, v11, :cond_4

    .line 441
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 445
    :goto_4
    invoke-static {v5}, Lklj;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    .line 446
    .local v8, "response":Ljava/lang/String;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 456
    invoke-static {v5}, Lklj;->b(Ljava/io/InputStream;)V

    goto/16 :goto_2

    .line 443
    .end local v8    # "response":Ljava/lang/String;
    :cond_4
    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    goto :goto_4

    .line 456
    .end local v0    # "clientAuthParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "queryData":Ljava/lang/String;
    .end local v9    # "wr":Ljava/io/OutputStreamWriter;
    :catchall_0
    move-exception v10

    invoke-static {v5}, Lklj;->b(Ljava/io/InputStream;)V

    throw v10
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 387
    invoke-direct {p0}, Lnet/openid/appauth/AuthorizationService$a;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 387
    check-cast p1, Lorg/json/JSONObject;

    .line 3463
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService$a;->e:Lnet/openid/appauth/AuthorizationException;

    if-eqz v0, :cond_0

    .line 3464
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService$a;->d:Lnet/openid/appauth/AuthorizationService$b;

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationService$a;->e:Lnet/openid/appauth/AuthorizationException;

    invoke-interface {v0, v1, v2}, Lnet/openid/appauth/AuthorizationService$b;->a(Lkli;Lnet/openid/appauth/AuthorizationException;)V

    .line 3495
    :goto_0
    return-void

    .line 3468
    :cond_0
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3471
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3473
    invoke-static {v2}, Lnet/openid/appauth/AuthorizationException$c;->a(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v3

    const-string/jumbo v0, "error_description"

    const/4 v4, 0x0

    .line 3475
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "error_uri"

    .line 3477
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4046
    if-nez v0, :cond_1

    move-object v0, v1

    .line 3472
    :goto_1
    invoke-static {v3, v2, v4, v0}, Lnet/openid/appauth/AuthorizationException;->fromOAuthTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationException;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3483
    :goto_2
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationService$a;->d:Lnet/openid/appauth/AuthorizationService$b;

    invoke-interface {v2, v1, v0}, Lnet/openid/appauth/AuthorizationService$b;->a(Lkli;Lnet/openid/appauth/AuthorizationException;)V

    goto :goto_0

    .line 4050
    :cond_1
    :try_start_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 3478
    :catch_0
    move-exception v0

    .line 3479
    sget-object v2, Lnet/openid/appauth/AuthorizationException$b;->f:Lnet/openid/appauth/AuthorizationException;

    invoke-static {v2, v0}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    goto :goto_2

    .line 3489
    :cond_2
    :try_start_2
    new-instance v2, Lkli$a;

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService$a;->a:Lklh;

    invoke-direct {v2, v0}, Lkli$a;-><init>(Lklh;)V

    .line 4216
    const-string/jumbo v0, "token_type"

    invoke-static {p1, v0}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkli$a;->a(Ljava/lang/String;)Lkli$a;

    .line 4217
    const-string/jumbo v0, "access_token"

    invoke-static {p1, v0}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkli$a;->b(Ljava/lang/String;)Lkli$a;

    .line 4218
    const-string/jumbo v0, "expires_at"

    invoke-static {p1, v0}, Lklc;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 4289
    iput-object v0, v2, Lkli$a;->a:Ljava/lang/Long;

    .line 4219
    const-string/jumbo v0, "expires_in"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4220
    const-string/jumbo v0, "expires_in"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 5265
    sget-object v3, Lklg;->a:Lklg;

    .line 5275
    if-nez v0, :cond_5

    .line 5276
    const/4 v0, 0x0

    iput-object v0, v2, Lkli$a;->a:Ljava/lang/Long;

    .line 4222
    :cond_3
    :goto_3
    const-string/jumbo v0, "refresh_token"

    invoke-static {p1, v0}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkli$a;->d(Ljava/lang/String;)Lkli$a;

    .line 4223
    const-string/jumbo v0, "id_token"

    invoke-static {p1, v0}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkli$a;->c(Ljava/lang/String;)Lkli$a;

    .line 4224
    const-string/jumbo v0, "scope"

    invoke-static {p1, v0}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkli$a;->e(Ljava/lang/String;)Lkli$a;

    .line 4225
    invoke-static {}, Lkli;->a()Ljava/util/Set;

    move-result-object v3

    .line 6075
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6077
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 6078
    :cond_4
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6079
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6080
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 6081
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 3490
    :catch_1
    move-exception v0

    .line 3491
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationService$a;->d:Lnet/openid/appauth/AuthorizationService$b;

    sget-object v3, Lnet/openid/appauth/AuthorizationException$b;->f:Lnet/openid/appauth/AuthorizationException;

    .line 3492
    invoke-static {v3, v0}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    .line 3491
    invoke-interface {v2, v1, v0}, Lnet/openid/appauth/AuthorizationService$b;->a(Lkli;Lnet/openid/appauth/AuthorizationException;)V

    goto/16 :goto_0

    .line 5278
    :cond_5
    :try_start_3
    invoke-interface {v3}, Lkky;->a()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5279
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 5278
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lkli$a;->a:Ljava/lang/Long;

    goto :goto_3

    .line 4225
    :cond_6
    invoke-virtual {v2, v4}, Lkli$a;->a(Ljava/util/Map;)Lkli$a;

    .line 3489
    invoke-virtual {v2}, Lkli$a;->a()Lkli;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 3498
    const-string/jumbo v2, "Token exchange with %s completed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lnet/openid/appauth/AuthorizationService$a;->a:Lklh;

    iget-object v5, v5, Lklh;->a:Lkkv;

    iget-object v5, v5, Lkkv;->b:Landroid/net/Uri;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lklq;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3500
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationService$a;->d:Lnet/openid/appauth/AuthorizationService$b;

    invoke-interface {v2, v0, v1}, Lnet/openid/appauth/AuthorizationService$b;->a(Lkli;Lnet/openid/appauth/AuthorizationException;)V

    goto/16 :goto_0
.end method
