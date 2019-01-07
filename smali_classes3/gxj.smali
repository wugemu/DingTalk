.class public final Lgxj;
.super Ljava/lang/Object;
.source "ParamRequest.java"


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "ParamRequest"

    sput-object v0, Lgxj;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "https://g.alicdn.com/forest/assets/par/parconfig.txt?time="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgxj;->b:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 33
    new-instance v8, Ljava/net/URL;

    .line 1028
    iget-object v9, p0, Lgxj;->b:Ljava/lang/String;

    .line 33
    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 34
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const-string/jumbo v5, ""

    .line 37
    .local v5, "postResult":Ljava/lang/String;
    const/16 v8, 0x2710

    :try_start_0
    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 38
    const/16 v8, 0x2710

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 39
    const-string/jumbo v8, "GET"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 42
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 43
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 44
    const-string/jumbo v8, "Accept-Language"

    const-string/jumbo v9, "zh-CN"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo v8, "Charset"

    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v8, "Connection"

    const-string/jumbo v9, "Keep-Alive"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 50
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 51
    .local v1, "code":I
    const/16 v8, 0xc8

    if-eq v1, v8, :cond_0

    .line 52
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 54
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\u670d\u52a1\u5668\u5efa\u7acb\u8fde\u63a5\u5931\u8d25\uff0c\u8fd4\u56de\u503c\u9519\u8befcode\uff1a"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v6, v5

    .line 85
    .end local v1    # "code":I
    .end local v5    # "postResult":Ljava/lang/String;
    .local v6, "postResult":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 57
    .end local v6    # "postResult":Ljava/lang/String;
    .restart local v1    # "code":I
    .restart local v5    # "postResult":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Response:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    .line 59
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 64
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v7, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 67
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 75
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "code":I
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 76
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "postRequest\uff1a"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2028
    iget-object v9, p0, Lgxj;->b:Ljava/lang/String;

    .line 76
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_2
    move-object v6, v5

    .line 85
    .end local v5    # "postResult":Ljava/lang/String;
    .restart local v6    # "postResult":Ljava/lang/String;
    goto :goto_0

    .line 69
    .end local v6    # "postResult":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "code":I
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "postResult":Ljava/lang/String;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 72
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 79
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "code":I
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 80
    throw v8
.end method
