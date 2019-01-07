.class public Lcom/alibaba/sdk/android/httpdns/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alibaba/sdk/android/httpdns/m;->d:I

    return-void
.end method


# virtual methods
.method public b()[Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/o;->a()Lcom/alibaba/sdk/android/httpdns/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/httpdns/o;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x3a98

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x3a98

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    instance-of v2, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    new-instance v4, Lcom/alibaba/sdk/android/httpdns/m$1;

    invoke-direct {v4, p0}, Lcom/alibaba/sdk/android/httpdns/m$1;-><init>(Lcom/alibaba/sdk/android/httpdns/m;)V

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "response code is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " expect 200"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/httpdns/g;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/o;->a()Lcom/alibaba/sdk/android/httpdns/o;

    move-result-object v2

    new-instance v4, Lcom/alibaba/sdk/android/httpdns/f;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const-string/jumbo v6, ""

    invoke-direct {v4, v5, v6}, Lcom/alibaba/sdk/android/httpdns/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/alibaba/sdk/android/httpdns/o;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    return-object v1

    :cond_4
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    :try_start_4
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v2, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v3, v5

    move-object v7, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, v7

    :goto_3
    :try_start_6
    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/g;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/o;->a()Lcom/alibaba/sdk/android/httpdns/o;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/alibaba/sdk/android/httpdns/o;->b(Ljava/lang/Throwable;)V

    iget v1, p0, Lcom/alibaba/sdk/android/httpdns/m;->d:I

    if-lez v1, :cond_5

    iget v1, p0, Lcom/alibaba/sdk/android/httpdns/m;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/sdk/android/httpdns/m;->d:I

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/m;->b()[Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    if-eqz v3, :cond_7

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_8
    :try_start_8
    new-instance v3, Lcom/alibaba/sdk/android/httpdns/p;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/alibaba/sdk/android/httpdns/p;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/o;->a()Lcom/alibaba/sdk/android/httpdns/o;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/httpdns/o;->a(Lcom/alibaba/sdk/android/httpdns/p;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object v3, v4

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v5, v3

    move-object v4, v3

    :goto_4
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    if-eqz v5, :cond_a

    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_b
    :goto_5
    throw v1

    :catch_3
    move-exception v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/httpdns/g;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_1
    move-exception v2

    move-object v5, v3

    move-object v4, v1

    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    goto :goto_4

    :catchall_3
    move-exception v2

    move-object v3, v4

    move-object v4, v1

    move-object v1, v2

    goto :goto_4

    :catchall_4
    move-exception v1

    move-object v5, v3

    move-object v3, v2

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_3

    :catch_5
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_3

    :catch_6
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    goto/16 :goto_3

    :cond_c
    move-object v5, v3

    move-object v1, v3

    goto/16 :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/m;->b()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
