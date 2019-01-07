.class public Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;
.super Ljava/lang/Object;
.source "H5AppHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;
    }
.end annotation


# static fields
.field public static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_CONNECTION:Ljava/lang/String; = "Connection"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_UA:Ljava/lang/String; = "User-Agent"

.field private static final TAG:Ljava/lang/String; = "H5AppHttpRequest"


# instance fields
.field private final body:Ljava/lang/String;

.field private final headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final method:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->access$000(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->url:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->access$100(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->body:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->access$200(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->method:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->access$300(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->headers:Ljava/util/HashMap;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;
    .param p2, "x1"    # Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$1;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;-><init>(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->body:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->headers:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public execute()Ljava/lang/String;
    .locals 17

    .prologue
    .line 42
    const/4 v7, 0x0

    .line 43
    .local v7, "output":Ljava/io/PrintWriter;
    const/4 v3, 0x0

    .line 44
    .local v3, "input":Ljava/io/BufferedReader;
    const-string/jumbo v10, ""

    .line 47
    .local v10, "result":Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->url:Ljava/lang/String;

    invoke-direct {v9, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 48
    .local v9, "realUrl":Ljava/net/URL;
    const-string/jumbo v13, "H5AppHttpRequest"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "sendPost "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 51
    .local v1, "connection":Ljava/net/HttpURLConnection;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->headers:Ljava/util/HashMap;

    if-eqz v13, :cond_2

    .line 52
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 53
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 54
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 55
    .local v12, "value":Ljava/lang/String;
    invoke-virtual {v1, v5, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v9    # "realUrl":Ljava/net/URL;
    .end local v12    # "value":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 81
    .local v11, "throwable":Ljava/lang/Throwable;
    :goto_1
    :try_start_1
    const-string/jumbo v13, "H5AppHttpRequest"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "request post error"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v13, "H5AppHttpRequest"

    invoke-static {v13}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v13

    const-string/jumbo v14, "sendPostException"

    invoke-virtual {v13, v14, v11}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v13

    invoke-static {v13}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    if-eqz v7, :cond_0

    .line 86
    :try_start_2
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 88
    :cond_0
    if-eqz v3, :cond_1

    .line 89
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 95
    .end local v11    # "throwable":Ljava/lang/Throwable;
    :cond_1
    :goto_2
    return-object v10

    .line 60
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v9    # "realUrl":Ljava/net/URL;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->headers:Ljava/util/HashMap;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->headers:Ljava/util/HashMap;

    const-string/jumbo v14, "Accept"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 61
    :cond_3
    const-string/jumbo v13, "Accept"

    const-string/jumbo v14, "*/*"

    invoke-virtual {v1, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->headers:Ljava/util/HashMap;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->headers:Ljava/util/HashMap;

    const-string/jumbo v14, "Connection"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 64
    :cond_5
    const-string/jumbo v13, "Connection"

    const-string/jumbo v14, "Keep-Alive"

    invoke-virtual {v1, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->method:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 68
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 69
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 71
    new-instance v8, Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    .end local v7    # "output":Ljava/io/PrintWriter;
    .local v8, "output":Ljava/io/PrintWriter;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->body:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    .line 75
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 77
    .end local v3    # "input":Ljava/io/BufferedReader;
    .local v4, "input":Ljava/io/BufferedReader;
    :goto_3
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 78
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v10

    goto :goto_3

    .line 86
    :cond_7
    :try_start_6
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    .line 89
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-object v3, v4

    .end local v4    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    move-object v7, v8

    .line 93
    .end local v8    # "output":Ljava/io/PrintWriter;
    .restart local v7    # "output":Ljava/io/PrintWriter;
    goto/16 :goto_2

    .line 91
    .end local v3    # "input":Ljava/io/BufferedReader;
    .end local v7    # "output":Ljava/io/PrintWriter;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    .restart local v8    # "output":Ljava/io/PrintWriter;
    :catch_1
    move-exception v11

    .line 92
    .restart local v11    # "throwable":Ljava/lang/Throwable;
    const-string/jumbo v13, "H5AppHttpRequest"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "request post error in finally "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .end local v4    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    move-object v7, v8

    .line 94
    .end local v8    # "output":Ljava/io/PrintWriter;
    .restart local v7    # "output":Ljava/io/PrintWriter;
    goto/16 :goto_2

    .line 91
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v6    # "line":Ljava/lang/String;
    .end local v9    # "realUrl":Ljava/net/URL;
    :catch_2
    move-exception v11

    .line 92
    const-string/jumbo v13, "H5AppHttpRequest"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "request post error in finally "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 84
    .end local v11    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v13

    .line 85
    :goto_4
    if-eqz v7, :cond_8

    .line 86
    :try_start_7
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 88
    :cond_8
    if-eqz v3, :cond_9

    .line 89
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 93
    :cond_9
    :goto_5
    throw v13

    .line 91
    :catch_3
    move-exception v11

    .line 92
    .restart local v11    # "throwable":Ljava/lang/Throwable;
    const-string/jumbo v14, "H5AppHttpRequest"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "request post error in finally "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 84
    .end local v7    # "output":Ljava/io/PrintWriter;
    .end local v11    # "throwable":Ljava/lang/Throwable;
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v8    # "output":Ljava/io/PrintWriter;
    .restart local v9    # "realUrl":Ljava/net/URL;
    :catchall_1
    move-exception v13

    move-object v7, v8

    .end local v8    # "output":Ljava/io/PrintWriter;
    .restart local v7    # "output":Ljava/io/PrintWriter;
    goto :goto_4

    .end local v3    # "input":Ljava/io/BufferedReader;
    .end local v7    # "output":Ljava/io/PrintWriter;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    .restart local v8    # "output":Ljava/io/PrintWriter;
    :catchall_2
    move-exception v13

    move-object v3, v4

    .end local v4    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "output":Ljava/io/PrintWriter;
    .restart local v7    # "output":Ljava/io/PrintWriter;
    goto :goto_4

    .line 80
    .end local v7    # "output":Ljava/io/PrintWriter;
    .restart local v8    # "output":Ljava/io/PrintWriter;
    :catch_4
    move-exception v11

    move-object v7, v8

    .end local v8    # "output":Ljava/io/PrintWriter;
    .restart local v7    # "output":Ljava/io/PrintWriter;
    goto/16 :goto_1

    .end local v3    # "input":Ljava/io/BufferedReader;
    .end local v7    # "output":Ljava/io/PrintWriter;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    .restart local v8    # "output":Ljava/io/PrintWriter;
    :catch_5
    move-exception v11

    move-object v3, v4

    .end local v4    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "output":Ljava/io/PrintWriter;
    .restart local v7    # "output":Ljava/io/PrintWriter;
    goto/16 :goto_1
.end method

.method public newBuilder()Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;-><init>(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;)V

    return-object v0
.end method
