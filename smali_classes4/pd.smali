.class public final Lpd;
.super Landroid/os/AsyncTask;
.source "TargetConfigTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lpc;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lpc;Ljava/lang/String;)V
    .locals 0
    .param p1, "callback"    # Lpc;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    iput-object p1, p0, Lpd;->a:Lpc;

    .line 27
    iput-object p2, p0, Lpd;->b:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private static a(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 8
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "maxLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0x5000

    .line 91
    const/4 v4, 0x0

    .line 92
    .local v4, "result":Ljava/lang/String;
    new-instance v3, Ljava/io/InputStreamReader;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v3, p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 93
    .local v3, "reader":Ljava/io/InputStreamReader;
    new-array v0, v6, [C

    .line 94
    .local v0, "buffer":[C
    const/4 v1, 0x0

    .line 95
    .local v1, "numChars":I
    const/4 v2, 0x0

    .line 96
    .local v2, "readSize":I
    :goto_0
    if-ge v1, v6, :cond_0

    if-eq v2, v7, :cond_0

    .line 97
    add-int/2addr v1, v2

    .line 98
    rsub-int v5, v1, 0x5000

    invoke-virtual {v3, v0, v1, v5}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v2

    goto :goto_0

    .line 100
    :cond_0
    if-eq v1, v7, :cond_1

    .line 101
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 102
    new-instance v4, Ljava/lang/String;

    .end local v4    # "result":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v1}, Ljava/lang/String;-><init>([CII)V

    .line 104
    .restart local v4    # "result":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method private a(Ljava/net/URL;)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 61
    const/4 v4, 0x0

    .line 62
    .local v4, "stream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 63
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 65
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 66
    const/16 v5, 0x2710

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 67
    const/16 v5, 0x2710

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 68
    const-string/jumbo v5, "GET"

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 69
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 70
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 71
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 72
    .local v2, "responseCode":I
    const/16 v5, 0xc8

    if-eq v2, v5, :cond_2

    .line 73
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "HTTP error code: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v2    # "responseCode":I
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_0

    .line 81
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 83
    :cond_0
    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v5

    .line 75
    .restart local v2    # "responseCode":I
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 76
    if-eqz v4, :cond_3

    .line 77
    const/16 v5, 0x5000

    invoke-static {v4, v5}, Lpd;->a(Ljava/io/InputStream;I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 80
    :cond_3
    if-eqz v4, :cond_4

    .line 81
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 83
    :cond_4
    if-eqz v1, :cond_5

    .line 84
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 87
    :cond_5
    return-object v3
.end method

.method private varargs a([Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "urls"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lpd;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p1, :cond_0

    array-length v6, p1

    if-lez v6, :cond_0

    .line 34
    const/4 v6, 0x0

    aget-object v5, p1, v6

    .line 36
    .local v5, "urlString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 37
    .local v4, "url":Ljava/net/URL;
    invoke-direct {p0, v4}, Lpd;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "resultString":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 39
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 47
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "resultString":Ljava/lang/String;
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "urlString":Ljava/lang/String;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v1

    .line 41
    .restart local v5    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 43
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 44
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lpd;->a([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected final onCancelled()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 52
    iget-object v0, p0, Lpd;->a:Lpc;

    iget-object v1, p0, Lpd;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lpc;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 53
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 17
    check-cast p1, Lorg/json/JSONObject;

    .line 1057
    iget-object v0, p0, Lpd;->a:Lpc;

    iget-object v1, p0, Lpd;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lpc;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 17
    return-void
.end method
