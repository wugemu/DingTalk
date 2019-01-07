.class public final Ldho$1;
.super Ljava/lang/Object;
.source "EncryptManager.java"

# interfaces
.implements Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldho;


# direct methods
.method public constructor <init>(Ldho;)V
    .locals 0
    .param p1, "this$0"    # Ldho;

    .prologue
    .line 116
    iput-object p1, p0, Ldho$1;->a:Ldho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;)V
    .locals 9
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p4, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 121
    new-instance v0, Ldho$1$1;

    invoke-direct {v0, p0, p2, p6, p1}, Ldho$1$1;-><init>(Ldho$1;Ljava/lang/String;Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;Ljava/lang/String;)V

    .line 145
    .local v0, "listener":Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;
    const-string/jumbo v2, "crypto"

    const-string/jumbo v3, "DTHttpRequestProxy"

    const/4 v1, 0x6

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v1, "DTHttpRequestProxy request: urlString="

    aput-object v1, v5, v6

    aput-object p1, v5, v7

    const/4 v1, 0x2

    const-string/jumbo v6, "corpId="

    aput-object v6, v5, v1

    const/4 v1, 0x3

    aput-object p2, v5, v1

    const/4 v1, 0x4

    const-string/jumbo v6, "params="

    aput-object v6, v5, v1

    const/4 v6, 0x5

    if-nez p5, :cond_2

    const-string/jumbo v1, "null"

    .line 147
    :goto_0
    aput-object v1, v5, v6

    .line 146
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const-string/jumbo v5, ""

    .line 1036
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1037
    const-string/jumbo v1, ""

    .line 1039
    :try_start_0
    const-string/jumbo v3, "GET"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "POST"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1041
    const/16 v3, -0x259

    const-string/jumbo v6, "method unknown"

    invoke-interface {v0, v3, v6}, Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;->onFail(ILjava/lang/String;)V

    .line 1044
    :cond_0
    if-eqz p5, :cond_8

    .line 1045
    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1046
    const-string/jumbo v6, "utf-8"

    invoke-static {v1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    const-string/jumbo v6, "="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v6, "utf-8"

    invoke-static {v1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    const-string/jumbo v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1086
    .end local p1    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v2, v4

    move-object v3, v4

    .line 1088
    :goto_2
    const/16 v5, -0x25a

    :try_start_1
    const-string/jumbo v6, "url malformed"

    invoke-interface {v0, v5, v6}, Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;->onFail(ILjava/lang/String;)V

    .line 1091
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1106
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1107
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1109
    if-eqz v3, :cond_1

    .line 1110
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    :goto_3
    return-void

    .line 147
    .restart local p1    # "urlString":Ljava/lang/String;
    :cond_2
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1051
    :cond_3
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1052
    const-string/jumbo v2, "GET"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1053
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "urlString":Ljava/lang/String;
    move-object v6, v1

    .line 1057
    :goto_4
    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    new-instance v3, Lgtf;

    invoke-direct {v3}, Lgtf;-><init>()V

    invoke-direct {v1, v2, p1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 1058
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1059
    const/4 v2, 0x1

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1060
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1061
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1062
    invoke-virtual {v1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1063
    if-eqz p4, :cond_4

    .line 1064
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1065
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1086
    :catch_1
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v4

    goto/16 :goto_2

    .line 1068
    :cond_4
    const-string/jumbo v2, "Content-type"

    const-string/jumbo v3, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    .line 1071
    :try_start_4
    const-string/jumbo v2, "POST"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p5, :cond_5

    .line 1072
    const-string/jumbo v2, "utf-8"

    invoke-virtual {v6, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1074
    :cond_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 1076
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v4

    .line 1077
    :try_start_5
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1078
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    .line 1080
    :goto_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1081
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 1084
    :cond_6
    invoke-interface {v0, v2}, Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1106
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1107
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1109
    if-eqz v1, :cond_1

    .line 1110
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    .line 1092
    :catch_2
    move-exception v1

    move-object v2, v4

    move-object v3, v4

    .line 1094
    :goto_7
    const/16 v5, -0x25b

    :try_start_6
    const-string/jumbo v6, "io exception"

    invoke-interface {v0, v5, v6}, Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;->onFail(ILjava/lang/String;)V

    .line 1097
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1106
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1107
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1109
    if-eqz v3, :cond_1

    .line 1110
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    .line 1098
    :catch_3
    move-exception v1

    move-object v2, v4

    move-object v3, v4

    .line 1100
    :goto_8
    const/16 v5, -0x259

    :try_start_7
    const-string/jumbo v6, "method unknown"

    invoke-interface {v0, v5, v6}, Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;->onFail(ILjava/lang/String;)V

    .line 1103
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 1106
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1107
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1109
    if-eqz v3, :cond_1

    .line 1110
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    .line 1106
    :catchall_0
    move-exception v1

    move-object v2, v4

    move-object v3, v4

    :goto_9
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1107
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1109
    if-eqz v3, :cond_7

    .line 1110
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v1

    .line 1106
    :catchall_1
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v4

    goto :goto_9

    :catchall_2
    move-exception v2

    move-object v8, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v8

    goto :goto_9

    :catchall_3
    move-exception v2

    move-object v8, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v8

    goto :goto_9

    :catchall_4
    move-exception v1

    move-object v8, v2

    move-object v2, v4

    move-object v4, v8

    goto :goto_9

    :catchall_5
    move-exception v1

    goto :goto_9

    .line 1098
    :catch_4
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v4

    goto :goto_8

    :catch_5
    move-exception v2

    move-object v8, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v8

    goto :goto_8

    :catch_6
    move-exception v2

    move-object v8, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v8

    goto :goto_8

    .line 1092
    :catch_7
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v4

    goto/16 :goto_7

    :catch_8
    move-exception v2

    move-object v8, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v8

    goto/16 :goto_7

    :catch_9
    move-exception v2

    move-object v8, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v8

    goto/16 :goto_7

    .line 1086
    :catch_a
    move-exception v2

    move-object v8, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v8

    goto/16 :goto_2

    .restart local p1    # "urlString":Ljava/lang/String;
    :cond_8
    move-object v6, v1

    goto/16 :goto_4
.end method
