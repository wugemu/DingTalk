.class public final Ljhd;
.super Ljava/lang/Object;
.source "HttpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljhd$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1a

    const-wide/16 v8, 0x3

    .line 1317
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1318
    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    .line 1328
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    sput-object v0, Ljhd;->a:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljhd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljhd;->b:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljhd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljhd;->c:Ljava/lang/String;

    .line 91
    return-void

    .line 1319
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 1320
    rem-long v4, v2, v8

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1321
    long-to-int v2, v2

    int-to-char v2, v2

    rem-int/lit8 v2, v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1318
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1322
    :cond_1
    rem-long v4, v2, v8

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 1323
    const-wide/16 v4, 0x41

    rem-long/2addr v2, v10

    add-long/2addr v2, v4

    long-to-int v2, v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1325
    :cond_2
    const-wide/16 v4, 0x61

    rem-long/2addr v2, v10

    add-long/2addr v2, v4

    long-to-int v2, v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljhf;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "params"    # Ljhf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0, p1, p2}, Ljhd;->b(Ljava/lang/String;Ljava/lang/String;Ljhf;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 105
    .local v0, "response":Lorg/apache/http/HttpResponse;
    invoke-static {v0}, Ljhd;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 11
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 279
    if-nez p0, :cond_1

    .line 280
    const/4 v8, 0x0

    .line 299
    :cond_0
    :goto_0
    return-object v8

    .line 283
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 284
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    const/4 v5, 0x0

    .line 285
    .local v5, "inputStream":Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 287
    .local v1, "content":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 288
    const-string/jumbo v8, "Content-Encoding"

    invoke-interface {p0, v8}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 289
    .local v4, "header":Lorg/apache/http/Header;
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "gzip"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_2

    .line 290
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .local v6, "inputStream":Ljava/io/InputStream;
    move-object v5, v6

    .line 294
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :cond_2
    const/16 v8, 0x2000

    new-array v0, v8, [B

    .line 295
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "readBytes":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 299
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    if-eqz v5, :cond_0

    .line 305
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v2

    .line 307
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 296
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v1, v0, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 300
    .end local v0    # "buffer":[B
    .end local v4    # "header":Lorg/apache/http/Header;
    .end local v7    # "readBytes":I
    :catch_1
    move-exception v2

    .line 301
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3
    new-instance v8, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-direct {v8, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 302
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 303
    if-eqz v5, :cond_4

    .line 305
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 310
    :cond_4
    :goto_2
    throw v8

    .line 306
    :catch_2
    move-exception v2

    .line 307
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private static a()Lorg/apache/http/client/HttpClient;
    .locals 10

    .prologue
    .line 183
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 184
    .local v5, "trustStore":Ljava/security/KeyStore;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 186
    new-instance v4, Ljhd$a;

    invoke-direct {v4, v5}, Ljhd$a;-><init>(Ljava/security/KeyStore;)V

    .line 187
    .local v4, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 189
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 191
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 192
    const-string/jumbo v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 194
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 195
    .local v3, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 196
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v6, v7, v4, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 198
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 199
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    const/16 v6, 0x1388

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 200
    const/16 v6, 0x4e20

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 201
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v0    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .end local v3    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    return-object v1

    :catch_0
    move-exception v6

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method

.method private static a(Ljava/io/OutputStream;Ljhf;)V
    .locals 12
    .param p0, "baos"    # Ljava/io/OutputStream;
    .param p1, "params"    # Ljhf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 218
    .line 2101
    :try_start_0
    iget-object v9, p1, Ljhf;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 221
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 235
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 264
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\r\n"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljhd;->c:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/OutputStream;->write([B)V

    .line 265
    return-void

    .line 221
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 222
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljhf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 223
    .local v8, "value":Ljava/lang/Object;
    instance-of v10, v8, Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 224
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v10, 0x64

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 225
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 226
    sget-object v10, Ljhd;->b:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string/jumbo v10, "content-disposition: form-data; name=\""

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\"\r\n\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p1, v4}, Ljhf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 266
    .local v3, "e":Ljava/io/IOException;
    new-instance v9, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-direct {v9, v3}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 235
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 236
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljhf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 237
    .restart local v8    # "value":Ljava/lang/Object;
    instance-of v10, v8, Landroid/graphics/Bitmap;

    if-eqz v10, :cond_4

    .line 238
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    sget-object v10, Ljhd;->b:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string/jumbo v10, "content-disposition: form-data; name=\""

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\"; filename=\"file\"\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string/jumbo v10, "Content-Type: application/octet-stream; charset=utf-8\r\n\r\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V

    .line 244
    move-object v0, v8

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 245
    .local v1, "bmp":Landroid/graphics/Bitmap;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 246
    .local v7, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v1, v10, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 247
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 249
    .local v2, "bytes":[B
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 250
    const-string/jumbo v10, "\r\n"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_1

    .line 251
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "bytes":[B
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_4
    instance-of v10, v8, Ljava/io/ByteArrayOutputStream;

    if-eqz v10, :cond_1

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    sget-object v10, Ljhd;->b:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const-string/jumbo v10, "content-disposition: form-data; name=\""

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\"; filename=\"file\"\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string/jumbo v10, "Content-Type: application/octet-stream; charset=utf-8\r\n\r\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V

    .line 258
    move-object v0, v8

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v7, v0

    .line 259
    .restart local v7    # "stream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V

    .line 260
    const-string/jumbo v10, "\r\n"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V

    .line 261
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljhf;)Lorg/apache/http/HttpResponse;
    .locals 15
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "params"    # Ljhf;

    .prologue
    .line 122
    :try_start_0
    invoke-static {}, Ljhd;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 123
    .local v2, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    const-string/jumbo v13, "http.route.default-proxy"

    invoke-static {}, Lcom/sina/weibo/sdk/net/NetStateManager;->a()Lorg/apache/http/HttpHost;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 125
    const/4 v6, 0x0

    .line 129
    .local v6, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const-string/jumbo v12, "GET"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 130
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljhf;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 131
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    .end local v6    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {v6, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_0
    :goto_0
    invoke-interface {v2, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 163
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    .line 164
    .local v9, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 167
    .local v10, "statusCode":I
    const/16 v12, 0xc8

    if-eq v10, v12, :cond_6

    .line 168
    invoke-static {v7}, Ljhd;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v8

    .line 169
    .local v8, "result":Ljava/lang/String;
    new-instance v12, Lcom/sina/weibo/sdk/exception/WeiboHttpException;

    invoke-direct {v12, v8, v10}, Lcom/sina/weibo/sdk/exception/WeiboHttpException;-><init>(Ljava/lang/String;I)V

    throw v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .end local v6    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "status":Lorg/apache/http/StatusLine;
    .end local v10    # "statusCode":I
    :catch_0
    move-exception v3

    .line 172
    .local v3, "e":Ljava/io/IOException;
    new-instance v12, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-direct {v12, v3}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 133
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_1
    :try_start_1
    const-string/jumbo v12, "POST"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 134
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 135
    .local v4, "post":Lorg/apache/http/client/methods/HttpPost;
    move-object v6, v4

    .line 137
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual/range {p2 .. p2}, Ljhf;->b()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 139
    const-string/jumbo v12, "Content-Type"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "multipart/form-data; boundary="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Ljhd;->a:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, p2

    invoke-static {v1, v0}, Ljhd;->a(Ljava/io/OutputStream;Ljhf;)V

    .line 154
    :goto_1
    new-instance v12, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v4, v12}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 155
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_0

    .line 142
    :cond_2
    const-string/jumbo v12, "content-type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljhf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 143
    .local v11, "value":Ljava/lang/Object;
    if-eqz v11, :cond_4

    instance-of v12, v11, Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 144
    const-string/jumbo v12, "content-type"

    .line 2094
    move-object/from16 v0, p2

    iget-object v13, v0, Ljhf;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v12}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2095
    move-object/from16 v0, p2

    iget-object v13, v0, Ljhf;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v12}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    move-object/from16 v0, p2

    iget-object v13, v0, Ljhf;->a:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p2

    iget-object v14, v0, Ljhf;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_3
    const-string/jumbo v12, "Content-Type"

    check-cast v11, Ljava/lang/String;

    .end local v11    # "value":Ljava/lang/Object;
    invoke-virtual {v4, v12, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljhf;->a()Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, "postParam":Ljava/lang/String;
    const-string/jumbo v12, "UTF-8"

    invoke-virtual {v5, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 147
    .end local v5    # "postParam":Ljava/lang/String;
    .restart local v11    # "value":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v12, "Content-Type"

    const-string/jumbo v13, "application/x-www-form-urlencoded"

    invoke-virtual {v4, v12, v13}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 157
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v11    # "value":Ljava/lang/Object;
    :cond_5
    const-string/jumbo v12, "DELETE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 158
    new-instance v6, Lorg/apache/http/client/methods/HttpDelete;

    .end local v6    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {v6, p0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_0

    .line 175
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    .restart local v9    # "status":Lorg/apache/http/StatusLine;
    .restart local v10    # "statusCode":I
    :cond_6
    return-object v7
.end method
