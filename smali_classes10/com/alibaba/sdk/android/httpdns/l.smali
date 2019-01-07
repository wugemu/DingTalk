.class Lcom/alibaba/sdk/android/httpdns/l;
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


# static fields
.field private static a:Landroid/content/Context;

.field private static hostManager:Lcom/alibaba/sdk/android/httpdns/b;


# instance fields
.field private a:Lcom/alibaba/sdk/android/httpdns/n;

.field private b:Ljava/lang/String;

.field private d:I

.field private e:[Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/b;->a()Lcom/alibaba/sdk/android/httpdns/b;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/l;->hostManager:Lcom/alibaba/sdk/android/httpdns/b;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/l;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/l;->g:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/d;->d:[Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/l;->e:[Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/l;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/l;->a:Lcom/alibaba/sdk/android/httpdns/n;

    return-void
.end method

.method static setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/alibaba/sdk/android/httpdns/l;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/alibaba/sdk/android/httpdns/l;->d:I

    :cond_0
    return-void
.end method

.method public b()[Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v3, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    const v1, 0xa005

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    sget-object v1, Lcom/alibaba/sdk/android/httpdns/l;->hostManager:Lcom/alibaba/sdk/android/httpdns/b;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/l;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/httpdns/b;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/l;->a:Lcom/alibaba/sdk/android/httpdns/n;

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/s;->a(Lcom/alibaba/sdk/android/httpdns/n;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/sdk/android/httpdns/l;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/l;->g:Ljava/lang/String;

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "serverIp is null, give up query for hostname:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/l;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/g;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v5, v3

    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    if-eqz v5, :cond_2

    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_3
    :goto_1
    sget-object v1, Lcom/alibaba/sdk/android/httpdns/l;->hostManager:Lcom/alibaba/sdk/android/httpdns/b;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/l;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/httpdns/b;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/l;->e:[Ljava/lang/String;

    return-object v1

    :cond_4
    :try_start_2
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/a;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/a;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/d;->PROTOCOL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/l;->g:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/d;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/sign_d?host="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/l;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "&sdk=android_1.1.3.1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "&t="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "&s="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/l;->b:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/alibaba/sdk/android/httpdns/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    sget v2, Lcom/alibaba/sdk/android/httpdns/d;->a:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v2, Lcom/alibaba/sdk/android/httpdns/d;->a:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    instance-of v2, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_5

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    new-instance v4, Lcom/alibaba/sdk/android/httpdns/l$1;

    invoke-direct {v4, p0}, Lcom/alibaba/sdk/android/httpdns/l$1;-><init>(Lcom/alibaba/sdk/android/httpdns/l;)V

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_e

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v5

    :try_start_4
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v2, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v2

    move-object v3, v5

    move-object v7, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, v7

    :goto_4
    :try_start_6
    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/g;->a(Ljava/lang/Throwable;)V

    iget-object v5, p0, Lcom/alibaba/sdk/android/httpdns/l;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/sdk/android/httpdns/l;->g:Ljava/lang/String;

    invoke-static {v5, v6, v1}, Lcom/alibaba/sdk/android/httpdns/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget v1, p0, Lcom/alibaba/sdk/android/httpdns/l;->d:I

    if-lez v1, :cond_6

    iget v1, p0, Lcom/alibaba/sdk/android/httpdns/l;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/sdk/android/httpdns/l;->d:I

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/l;->b()[Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    if-eqz v3, :cond_8

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/g;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_9
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/d;->PROTOCOL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/l;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/d?host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/l;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&sdk=android_1.1.3.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v1

    goto/16 :goto_2

    :cond_a
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "response code is "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " expect 200. response body is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/httpdns/g;->f(Ljava/lang/String;)V

    new-instance v3, Lcom/alibaba/sdk/android/httpdns/e;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v6, v2}, Lcom/alibaba/sdk/android/httpdns/e;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/alibaba/sdk/android/httpdns/f;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/httpdns/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lcom/alibaba/sdk/android/httpdns/f;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v2

    move-object v3, v4

    move-object v4, v1

    move-object v1, v2

    :goto_5
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    if-eqz v5, :cond_c

    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_c
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_d
    :goto_6
    throw v1

    :cond_e
    :try_start_b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result-object v5

    :try_start_c
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v2, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :catch_2
    move-exception v2

    move-object v3, v5

    move-object v7, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, v7

    goto/16 :goto_4

    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "resolve host: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alibaba/sdk/android/httpdns/l;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", return: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/httpdns/g;->e(Ljava/lang/String;)V

    new-instance v3, Lcom/alibaba/sdk/android/httpdns/c;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/alibaba/sdk/android/httpdns/c;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/l;->hostManager:Lcom/alibaba/sdk/android/httpdns/b;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/b;->a()I

    move-result v2

    const/16 v6, 0x64

    if-ge v2, v6, :cond_10

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/l;->hostManager:Lcom/alibaba/sdk/android/httpdns/b;

    iget-object v6, p0, Lcom/alibaba/sdk/android/httpdns/l;->b:Ljava/lang/String;

    invoke-virtual {v2, v6, v3}, Lcom/alibaba/sdk/android/httpdns/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/c;)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/l;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/sdk/android/httpdns/l;->g:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/alibaba/sdk/android/httpdns/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/l;->hostManager:Lcom/alibaba/sdk/android/httpdns/b;

    iget-object v6, p0, Lcom/alibaba/sdk/android/httpdns/l;->b:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/alibaba/sdk/android/httpdns/b;->c(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/httpdns/c;->a()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/sdk/android/httpdns/l;->e:[Ljava/lang/String;

    move-object v3, v4

    goto/16 :goto_0

    :cond_10
    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "the total number of hosts is exceed 100"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    move-exception v2

    move-object v3, v4

    move-object v4, v1

    move-object v1, v2

    goto/16 :goto_5

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/g;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_4
    move-exception v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/httpdns/g;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :catchall_2
    move-exception v1

    move-object v5, v3

    move-object v4, v3

    goto/16 :goto_5

    :catchall_3
    move-exception v2

    move-object v5, v3

    move-object v4, v1

    move-object v1, v2

    goto/16 :goto_5

    :catchall_4
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    goto/16 :goto_5

    :catchall_5
    move-exception v1

    move-object v5, v3

    move-object v3, v2

    goto/16 :goto_5

    :catch_5
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_4

    :catch_6
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_4

    :catch_7
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    goto/16 :goto_4
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/l;->b()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
