.class public Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;
.super Ljava/lang/Object;
.source "DDDefaultWXHttpAdapter.java"

# interfaces
.implements Lcom/taobao/weex/adapter/IWXHttpAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$EventReportDelegate;,
        Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$NOPEventReportDelegate;,
        Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELEGATE:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;

.field private static final REPORT_DELEGATE:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;

.field private static final TAG:Ljava/lang/String; = "DDDefaultWXHttpAdapter"


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$NOPEventReportDelegate;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$NOPEventReportDelegate;-><init>(Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;->DEFAULT_DELEGATE:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;

    .line 54
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$EventReportDelegate;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$EventReportDelegate;-><init>(Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;->REPORT_DELEGATE:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;Lcom/taobao/weex/common/WXRequest;Ljava/util/Map;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;
    .param p1, "x1"    # Lcom/taobao/weex/common/WXRequest;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;->requestByResourceLoader(Lcom/taobao/weex/common/WXRequest;Ljava/util/Map;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/common/WXResponse;Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;
    .param p1, "x1"    # Lcom/taobao/weex/common/WXRequest;
    .param p2, "x2"    # Lcom/taobao/weex/common/WXResponse;
    .param p3, "x3"    # Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;
    .param p4, "x4"    # Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;->requestByNet(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/common/WXResponse;Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    return-void
.end method

.method private execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method private mapToJson(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 272
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 273
    .local v0, "json":Lcom/alibaba/fastjson/JSONObject;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 275
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 276
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 277
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 281
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 284
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    return-object v0
.end method

.method private openConnection(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/net/HttpURLConnection;
    .locals 9
    .param p1, "request"    # Lcom/taobao/weex/common/WXRequest;
    .param p2, "listener"    # Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 296
    new-instance v4, Ljava/net/URL;

    iget-object v5, p1, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 297
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {p0, v4}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 298
    .local v0, "connection":Ljava/net/HttpURLConnection;
    iget v5, p1, Lcom/taobao/weex/common/WXRequest;->timeoutMs:I

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 299
    iget v5, p1, Lcom/taobao/weex/common/WXRequest;->timeoutMs:I

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 300
    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 301
    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 303
    iget-object v5, p1, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    if-eqz v5, :cond_0

    .line 304
    iget-object v5, p1, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 305
    .local v2, "keySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 306
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p1, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 310
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v5, "POST"

    iget-object v6, p1, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "PUT"

    iget-object v6, p1, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "PATCH"

    iget-object v6, p1, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 311
    :cond_1
    iget-object v5, p1, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 312
    iget-object v5, p1, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 313
    if-eqz p2, :cond_2

    .line 314
    invoke-interface {p2, v7}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpUploadProgress(I)V

    .line 316
    :cond_2
    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 317
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 319
    .local v3, "out":Ljava/io/DataOutputStream;
    iget-object v5, p1, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 320
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 321
    if-eqz p2, :cond_3

    .line 322
    const/16 v5, 0x64

    invoke-interface {p2, v5}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpUploadProgress(I)V

    .line 331
    .end local v3    # "out":Ljava/io/DataOutputStream;
    :cond_3
    :goto_1
    return-object v0

    .line 325
    :cond_4
    iget-object v5, p1, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 326
    iget-object v5, p1, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1

    .line 328
    :cond_5
    const-string/jumbo v5, "GET"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private readInputStream(Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/lang/String;
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "listener"    # Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 360
    if-nez p1, :cond_0

    .line 361
    const/4 v4, 0x0

    .line 374
    :goto_0
    return-object v4

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 365
    .local v3, "localBufferedReader":Ljava/io/BufferedReader;
    const/16 v4, 0x800

    new-array v1, v4, [C

    .line 367
    .local v1, "data":[C
    :cond_1
    :goto_1
    invoke-virtual {v3, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    .local v2, "len":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 368
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 369
    if-eqz p2, :cond_1

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-interface {p2, v4}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpResponseProgress(I)V

    goto :goto_1

    .line 373
    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 374
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private readInputStreamAsBytes(Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)[B
    .locals 7
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "listener"    # Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x800

    const/4 v5, 0x0

    .line 337
    if-nez p1, :cond_0

    .line 338
    const/4 v4, 0x0

    .line 356
    :goto_0
    return-object v4

    .line 340
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 343
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 344
    .local v3, "readCount":I
    new-array v1, v6, [B

    .line 346
    .local v1, "data":[B
    :cond_1
    :goto_1
    invoke-virtual {p1, v1, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, "nRead":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 347
    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 348
    add-int/2addr v3, v2

    .line 349
    if-eqz p2, :cond_1

    .line 350
    invoke-interface {p2, v3}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpResponseProgress(I)V

    goto :goto_1

    .line 354
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 356
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0
.end method

.method private requestByNet(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/common/WXResponse;Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
    .locals 11
    .param p1, "request"    # Lcom/taobao/weex/common/WXRequest;
    .param p2, "response"    # Lcom/taobao/weex/common/WXResponse;
    .param p3, "reporter"    # Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;
    .param p4, "listener"    # Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 209
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-direct {p0, p1, p4}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;->openConnection(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 210
    iget-object v8, p1, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    invoke-interface {p3, v1, v8}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;->preConnect(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 216
    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v3, :cond_0

    .line 217
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 221
    .restart local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_0
    const-string/jumbo v8, "cookie"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 222
    .local v4, "newCookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v4, :cond_1

    .line 223
    const-string/jumbo v8, "Cookie"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "newCookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v4, Ljava/util/List;

    .line 225
    .restart local v4    # "newCookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-lez v8, :cond_2

    .line 227
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    .local v0, "c":Ljava/lang/String;
    invoke-static {}, Lcom/uc/webview/export/CookieManager;->getInstance()Lcom/uc/webview/export/CookieManager;

    move-result-object v9

    iget-object v10, p1, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    invoke-virtual {v9, v10, v0}, Lcom/uc/webview/export/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 231
    .end local v0    # "c":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 232
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 236
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 237
    .local v6, "responseCode":I
    if-eqz p4, :cond_3

    .line 238
    invoke-interface {p4, v6, v3}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHeadersReceived(ILjava/util/Map;)V

    .line 240
    :cond_3
    invoke-interface {p3}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;->postConnect()V

    .line 242
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p2, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    .line 243
    const/16 v8, 0xc8

    if-lt v6, v8, :cond_6

    const/16 v8, 0x12b

    if-gt v6, v8, :cond_6

    .line 244
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 245
    .local v5, "rawStream":Ljava/io/InputStream;
    invoke-interface {p3, v5}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;->interpretResponseStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v5

    .line 246
    invoke-direct {p0, v5, p4}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;->readInputStreamAsBytes(Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)[B

    move-result-object v8

    iput-object v8, p2, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    .line 250
    .end local v5    # "rawStream":Ljava/io/InputStream;
    :goto_1
    if-eqz p4, :cond_4

    .line 251
    invoke-interface {p4, p2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    :cond_4
    if-eqz v1, :cond_5

    .line 266
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 269
    .end local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "newCookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "responseCode":I
    :cond_5
    :goto_2
    return-void

    .line 248
    .restart local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v4    # "newCookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "responseCode":I
    :cond_6
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {p0, v8, p4}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;->readInputStream(Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p2, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 253
    .end local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "newCookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "responseCode":I
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 254
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    const-string/jumbo v8, "-1"

    iput-object v8, p2, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    .line 256
    const-string/jumbo v8, "-1"

    iput-object v8, p2, Lcom/taobao/weex/common/WXResponse;->errorCode:Ljava/lang/String;

    .line 257
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p2, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    .line 258
    if-eqz p4, :cond_7

    .line 259
    invoke-interface {p4, p2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V

    .line 261
    :cond_7
    instance-of v8, v2, Ljava/io/IOException;

    if-eqz v8, :cond_8

    .line 262
    check-cast v2, Ljava/io/IOException;

    .end local v2    # "e":Ljava/lang/Exception;
    invoke-interface {p3, v2}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;->httpExchangeFailed(Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 265
    :cond_8
    if-eqz v1, :cond_5

    .line 266
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 265
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_9

    .line 266
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    throw v8

    .line 253
    :catch_2
    move-exception v8

    move-object v2, v8

    goto :goto_3
.end method

.method private requestByResourceLoader(Lcom/taobao/weex/common/WXRequest;Ljava/util/Map;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
    .locals 4
    .param p1, "wxRequest"    # Lcom/taobao/weex/common/WXRequest;
    .param p3, "listener"    # Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/common/WXRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    .local p2, "reqHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/taobao/weex/common/WXResponse;

    invoke-direct {v0}, Lcom/taobao/weex/common/WXResponse;-><init>()V

    .line 174
    .local v0, "wxResponse":Lcom/taobao/weex/common/WXResponse;
    invoke-static {}, Lhpq;->a()Lhpq;

    move-result-object v1

    iget-object v2, p1, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;

    invoke-direct {v3, p0, v0, p3}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;-><init>(Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;Lcom/taobao/weex/common/WXResponse;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    invoke-virtual {v1, v2, p2, v3}, Lhpq;->a(Ljava/lang/String;Ljava/util/Map;Lhpr;)V

    .line 203
    return-void
.end method


# virtual methods
.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public getEventReporterDelegate()Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 392
    sget-object v0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;->DEFAULT_DELEGATE:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;

    return-object v0
.end method

.method public sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
    .locals 1
    .param p1, "request"    # Lcom/taobao/weex/common/WXRequest;
    .param p2, "listener"    # Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    .prologue
    .line 69
    if-eqz p2, :cond_0

    .line 70
    invoke-interface {p2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpStart()V

    .line 72
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;->execute(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method
