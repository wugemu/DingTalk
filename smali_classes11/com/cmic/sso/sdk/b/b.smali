.class public Lcom/cmic/sso/sdk/b/b;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/sso/sdk/b/b$b;,
        Lcom/cmic/sso/sdk/b/b$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/net/Network;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmic/sso/sdk/b/b;->a:I

    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/b/b;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cmic/sso/sdk/b/b;->b:Landroid/net/Network;

    return-object p1
.end method

.method private a(Ljava/lang/String;ILcom/cmic/sso/sdk/b/b$b;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    sget-boolean v0, Lcom/cmic/sso/sdk/a;->d:Z

    if-eqz v0, :cond_1

    .line 214
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v1, "HttpUtils"

    const-string/jumbo v2, "\u83b7\u53d6token\u8bf7\u6c42\u88ab\u7ec8\u6b62"

    invoke-interface {v0, v1, v2}, Lcom/cmic/sso/sdk/auth/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    const/16 v0, 0xc8

    if-eq p2, v0, :cond_2

    .line 220
    const-string/jumbo v0, "102506"

    const-string/jumbo v1, "\u8bf7\u6c42\u51fa\u9519\u4e86"

    invoke-interface {p3, v0, v1}, Lcom/cmic/sso/sdk/b/b$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_2
    invoke-interface {p3, p1}, Lcom/cmic/sso/sdk/b/b$b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/cmic/sso/sdk/a/c/a;->a()Lcom/cmic/sso/sdk/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/a/c/a;->b()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 141
    new-instance v0, Lcom/cmic/sso/sdk/b/b$a;

    invoke-direct {v0, p1}, Lcom/cmic/sso/sdk/b/b$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 142
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/b/b$b;Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v1, 0x0

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_5

    .line 147
    iput-object v5, p0, Lcom/cmic/sso/sdk/b/b;->b:Landroid/net/Network;

    .line 148
    new-instance v0, Lcom/cmic/sso/sdk/b/b$1;

    invoke-direct {v0, p0}, Lcom/cmic/sso/sdk/b/b$1;-><init>(Lcom/cmic/sso/sdk/b/b;)V

    invoke-static {v0, p4}, Lcom/cmic/sso/sdk/b/f;->a(Lcom/cmic/sso/sdk/b/f$a;Landroid/content/Context;)V

    move v0, v1

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/cmic/sso/sdk/b/b;->b:Landroid/net/Network;

    if-nez v2, :cond_1

    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 158
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 159
    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    .line 163
    :cond_1
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v0, :cond_3

    .line 164
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "5.0\u53ca\u5176\u4ee5\u4e0a\u7248\u672c \u5207\u6362\u6570\u636e\u7f51\u7edc\u7ed3\u679c >>> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cmic/sso/sdk/b/b;->b:Landroid/net/Network;

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/cmic/sso/sdk/auth/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->b:Landroid/net/Network;

    if-nez v0, :cond_4

    .line 167
    const-string/jumbo v0, "102508"

    const-string/jumbo v1, "\u6570\u636e\u7f51\u7edc\u5207\u6362\u5931\u8d25"

    invoke-interface {p3, v0, v1}, Lcom/cmic/sso/sdk/b/b$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :goto_0
    return-void

    .line 170
    :cond_4
    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b;->b:Landroid/net/Network;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cmic/sso/sdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/b/b$b;Landroid/net/Network;)V

    goto :goto_0

    .line 177
    :cond_5
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 178
    sput-object v0, Lcom/cmic/sso/sdk/b/f;->a:Landroid/net/ConnectivityManager;

    const-string/jumbo v2, "enableHIPRI"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    .line 181
    :goto_1
    const/16 v0, 0x10

    if-ge v1, v0, :cond_6

    .line 183
    :try_start_0
    sget-object v0, Lcom/cmic/sso/sdk/b/f;->a:Landroid/net/ConnectivityManager;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 184
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 186
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v1, :cond_6

    .line 190
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v2, "HttpUtils"

    const-string/jumbo v3, "have exception: check hipri failed"

    invoke-interface {v1, v2, v3, v0}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    :cond_6
    invoke-static {p1}, Lcom/cmic/sso/sdk/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmic/sso/sdk/b/f;->a(Ljava/lang/String;)I

    move-result v0

    .line 195
    sget-object v1, Lcom/cmic/sso/sdk/b/f;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v4, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v0

    .line 198
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v1, :cond_7

    .line 199
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "4.4\u53ca\u5176\u4ee5\u4e0b\u7248\u672c \u5207\u6362\u6570\u636e\u7f51\u7edc\u7ed3\u679c >>> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/cmic/sso/sdk/auth/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_7
    if-nez v0, :cond_8

    .line 202
    const-string/jumbo v0, "102508"

    const-string/jumbo v1, "\u6570\u636e\u7f51\u7edc\u5207\u6362\u5931\u8d25"

    invoke-interface {p3, v0, v1}, Lcom/cmic/sso/sdk/b/b$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_8
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/cmic/sso/sdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/b/b$b;Landroid/net/Network;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/b/b$b;Landroid/net/Network;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    sget-boolean v1, Lcom/cmic/sso/sdk/a;->d:Z

    if-eqz v1, :cond_1

    .line 59
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v1, :cond_0

    .line 60
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v2, "HttpUtils"

    const-string/jumbo v3, "\u83b7\u53d6token\u8bf7\u6c42\u88ab\u7ec8\u6b62"

    invoke-interface {v1, v2, v3}, Lcom/cmic/sso/sdk/auth/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 72
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_4

    if-eqz p4, :cond_4

    .line 73
    invoke-virtual {p4, v1}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    move-object v2, v1

    .line 82
    :goto_1
    const-string/jumbo v1, "https"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    const-string/jumbo v3, "https://www.cmpassport.com/unisdk/rs/ckRequest"

    invoke-static {v1, v3}, Lcom/cmic/sso/sdk/b/b;->a(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;)V

    .line 85
    :cond_2
    sget v1, Lcom/cmic/sso/sdk/a;->b:I

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 86
    sget v1, Lcom/cmic/sso/sdk/a;->c:I

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 88
    const-string/jumbo v1, "POST"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 91
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 92
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 98
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 99
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 100
    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v3, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v1, "traceId"

    iget-object v3, p0, Lcom/cmic/sso/sdk/b/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 107
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 109
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 110
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 112
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 113
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 116
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 117
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 119
    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 120
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 121
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string/jumbo v6, "utf-8"

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 122
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 129
    :catch_0
    move-exception v1

    .line 130
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v2, :cond_3

    .line 131
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v3, "HttpUtils"

    const-string/jumbo v4, "have exception"

    invoke-interface {v2, v3, v4, v1}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    :cond_3
    const/4 v1, 0x0

    iget v2, p0, Lcom/cmic/sso/sdk/b/b;->a:I

    invoke-direct {p0, v1, v2, p3}, Lcom/cmic/sso/sdk/b/b;->a(Ljava/lang/String;ILcom/cmic/sso/sdk/b/b$b;)V

    goto/16 :goto_0

    .line 76
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    move-object v2, v1

    goto/16 :goto_1

    .line 124
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 127
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 128
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/cmic/sso/sdk/b/b;->a:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    iget v1, p0, Lcom/cmic/sso/sdk/b/b;->a:I

    invoke-direct {p0, v3, v1, p3}, Lcom/cmic/sso/sdk/b/b;->a(Ljava/lang/String;ILcom/cmic/sso/sdk/b/b$b;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/cmic/sso/sdk/b/b$b;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    iput-object p6, p0, Lcom/cmic/sso/sdk/b/b;->c:Ljava/lang/String;

    .line 38
    sget-boolean v0, Lcom/cmic/sso/sdk/a;->d:Z

    if-eqz v0, :cond_1

    .line 39
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v1, "HttpUtils"

    const-string/jumbo v2, "\u83b7\u53d6token\u8bf7\u6c42\u88ab\u7ec8\u6b62"

    invoke-interface {v0, v1, v2}, Lcom/cmic/sso/sdk/auth/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v0, :cond_2

    .line 45
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v1, "HttpUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u4f7f\u7528wifi\u4e0b\u53d6\u53f7\uff1f"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  traceId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cmic/sso/sdk/auth/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_2
    if-eqz p3, :cond_3

    .line 48
    invoke-virtual {p0, p1, p2, p5, p4}, Lcom/cmic/sso/sdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/b/b$b;Landroid/content/Context;)V

    goto :goto_0

    .line 50
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p5, v0}, Lcom/cmic/sso/sdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/b/b$b;Landroid/net/Network;)V

    goto :goto_0
.end method
