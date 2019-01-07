.class public Lcn/com/chinatelecom/gateway/lib/g;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcn/com/chinatelecom/gateway/lib/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/chinatelecom/gateway/lib/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;)Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x12e

    const/16 v9, 0x15

    .line 35
    sget v0, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mConnTimeoutL:I

    if-gtz v0, :cond_7

    const/16 v0, 0xbb8

    move v1, v0

    .line 36
    :goto_0
    sget v0, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mReadTimeout:I

    if-gtz v0, :cond_8

    const/16 v0, 0xbb8

    move v2, v0

    .line 37
    :goto_1
    const-string/jumbo v3, ""

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v4, 0x0

    .line 42
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 44
    if-eqz p3, :cond_9

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v9, :cond_9

    .line 45
    invoke-virtual {p3, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 49
    :goto_2
    const-string/jumbo v6, "accept"

    const-string/jumbo v7, "*/*"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v6, "POST"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 51
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 52
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 53
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 54
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 55
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 56
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v9, :cond_0

    .line 57
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 59
    :cond_0
    const-string/jumbo v6, "Accept-Charset"

    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 61
    new-instance v6, Ljava/io/DataOutputStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 62
    const-string/jumbo v7, "UTF-8"

    invoke-virtual {p2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 63
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 64
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 69
    :goto_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v9, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 71
    const-string/jumbo v6, "Location"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    const-string/jumbo v0, "connectivity"

    .line 74
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 75
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    .line 76
    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v7, v8}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-nez v7, :cond_1

    .line 77
    invoke-static {v6}, Lcn/com/chinatelecom/gateway/lib/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/com/chinatelecom/gateway/lib/h;->a(Ljava/lang/String;)I

    move-result v7

    .line 79
    const/4 v8, 0x5

    invoke-virtual {v0, v8, v7}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    .line 82
    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 83
    if-eqz p3, :cond_b

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v9, :cond_b

    .line 84
    invoke-virtual {p3, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 88
    :goto_4
    const-string/jumbo v6, "accept"

    const-string/jumbo v7, "*/*"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v6, "POST"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 90
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 91
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 92
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 93
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 94
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 95
    const-string/jumbo v6, "Accept-Charset"

    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 98
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 99
    if-ne v6, v10, :cond_3

    .line 100
    const-string/jumbo v6, "Location"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 102
    if-eqz p3, :cond_c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_c

    .line 103
    invoke-virtual {p3, v6}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 107
    :goto_5
    const-string/jumbo v6, "accept"

    const-string/jumbo v7, "*/*"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v6, "POST"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 109
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 110
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 111
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 112
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 113
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 114
    const-string/jumbo v1, "Accept-Charset"

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 117
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 118
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_11

    .line 119
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 120
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    :goto_6
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 124
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    .line 128
    :catch_0
    move-exception v0

    .line 129
    :goto_7
    :try_start_3
    sget-object v4, Lcn/com/chinatelecom/gateway/lib/g;->a:Ljava/lang/String;

    const-string/jumbo v5, "doPost error"

    invoke-static {v4, v5, v0}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 132
    if-eqz v1, :cond_4

    .line 133
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 135
    :cond_4
    if-eqz v2, :cond_5

    .line 136
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    move-object v0, v3

    .line 141
    :cond_6
    :goto_8
    return-object v0

    .line 35
    :cond_7
    sget v0, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mConnTimeoutL:I

    move v1, v0

    goto/16 :goto_0

    .line 36
    :cond_8
    sget v0, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mReadTimeout:I

    move v2, v0

    goto/16 :goto_1

    .line 47
    :cond_9
    :try_start_5
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto/16 :goto_2

    .line 66
    :cond_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    goto/16 :goto_3

    .line 128
    :catch_1
    move-exception v0

    move-object v1, v4

    move-object v2, v5

    goto :goto_7

    .line 86
    :cond_b
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto/16 :goto_4

    .line 105
    :cond_c
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    .line 126
    :cond_d
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v0

    .line 132
    :goto_9
    if-eqz v1, :cond_e

    .line 133
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 135
    :cond_e
    if-eqz v2, :cond_6

    .line 136
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_8

    .line 140
    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v0, v3

    goto :goto_8

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    :goto_a
    if-eqz v4, :cond_f

    .line 133
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 135
    :cond_f
    if-eqz v5, :cond_10

    .line 136
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 139
    :cond_10
    :goto_b
    throw v0

    :catch_4
    move-exception v1

    goto :goto_b

    .line 131
    :catchall_1
    move-exception v0

    move-object v5, v2

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v4, v1

    move-object v5, v2

    goto :goto_a

    .line 128
    :catch_5
    move-exception v0

    move-object v1, v4

    goto :goto_7

    :cond_11
    move-object v1, v4

    move-object v2, v5

    move-object v0, v3

    goto :goto_9
.end method
