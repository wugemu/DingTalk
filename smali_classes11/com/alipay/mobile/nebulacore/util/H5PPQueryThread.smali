.class public Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;
.super Ljava/lang/Object;
.source "H5PPQueryThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PPQueryThread"

.field private static final TIMEOUT:I = 0x1388

.field private static mInstance:Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;


# instance fields
.field private h5Page:Liop;

.field private isRunning:Z

.field private onGetQueryResult:Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;

.field private queryUrl:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string/jumbo v0, "http://patriot.cs.pp.cn/api/resource.app.detect"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->queryUrl:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->isRunning:Z

    .line 37
    return-void
.end method

.method private generateRequestJsonStr()Ljava/lang/String;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    const-string/jumbo v0, "secret.alipay.client"

    .line 81
    .local v0, "caller":Ljava/lang/String;
    const-string/jumbo v5, "fjwofu4n2wg"

    .line 82
    .local v5, "secret":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 83
    .local v8, "uuid":J
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "query="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->url:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "type="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->type:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 84
    .local v7, "sorted_compact_data":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "sign":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 87
    .local v4, "requestData":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    const-string/jumbo v10, "id"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string/jumbo v10, "encrypt"

    const-string/jumbo v11, "md5"

    invoke-virtual {v4, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string/jumbo v10, "sign"

    invoke-virtual {v4, v10, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 91
    .local v1, "client":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v10, "caller"

    const-string/jumbo v11, "secret.alipay.client"

    invoke-virtual {v1, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string/jumbo v10, "client"

    invoke-virtual {v4, v10, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 94
    .local v2, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v10, "query"

    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->url:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v10, "type"

    iget v11, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->type:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v10, "data"

    invoke-virtual {v4, v10, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v1    # "client":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 97
    :catch_0
    move-exception v3

    .line 98
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "H5PPQueryThread"

    const-string/jumbo v11, "generateRequestJsonStr catch exception "

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;
    .locals 2

    .prologue
    .line 40
    const-class v1, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->mInstance:Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->mInstance:Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;

    .line 43
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->mInstance:Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private parseRespnseJsonStr(Ljava/lang/String;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 159
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 160
    .local v5, "resultJson":Lcom/alibaba/fastjson/JSONObject;
    const/4 v0, 0x0

    .line 161
    .local v0, "app":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v5, :cond_0

    .line 162
    const-string/jumbo v6, "data"

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 163
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_0

    .line 164
    const-string/jumbo v6, "app"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 167
    .end local v1    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    const/4 v2, 0x0

    .line 168
    .local v2, "detailUrl":Ljava/lang/String;
    const/4 v4, 0x0

    .line 169
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 170
    const-string/jumbo v6, "detailUrl"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    const-string/jumbo v6, "packageName"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 172
    const-string/jumbo v6, "H5PPQueryThread"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "detailUrl is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", packageName is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_1
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->onGetQueryResult:Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;

    invoke-interface {v6, v2, v4}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;->onQueryResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .end local v0    # "app":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "detailUrl":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "resultJson":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-void

    .line 176
    :cond_2
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->onGetQueryResult:Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;->onQueryResult(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v3

    .line 179
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "H5PPQueryThread"

    const-string/jumbo v7, "parseRespnseJsonStr catch exception "

    invoke-static {v6, v7, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private silentClose(Ljava/io/Closeable;)V
    .locals 3
    .param p1, "closeable"    # Ljava/io/Closeable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 188
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5PPQueryThread"

    const-string/jumbo v2, "silentClose exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public doPost(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v9, 0x0

    .line 105
    .local v9, "out":Ljava/io/PrintWriter;
    const/4 v6, 0x0

    .line 106
    .local v6, "in":Ljava/io/BufferedReader;
    const-string/jumbo v13, ""

    .line 108
    .local v13, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 109
    .local v14, "startTime":J
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->queryUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 111
    .local v12, "realUrl":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 112
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const-string/jumbo v17, "POST"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v17, "Content-Type"

    const-string/jumbo v18, "application/json"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v17, "charset"

    const-string/jumbo v18, "utf-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 117
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 118
    const/16 v17, 0x1388

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 119
    const/16 v17, 0x1388

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 120
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 121
    new-instance v10, Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v9    # "out":Ljava/io/PrintWriter;
    .local v10, "out":Ljava/io/PrintWriter;
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v10}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v9, v10

    .line 125
    .end local v10    # "out":Ljava/io/PrintWriter;
    .restart local v9    # "out":Ljava/io/PrintWriter;
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    .line 126
    .local v16, "statusCode":I
    const/16 v17, 0xc8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 127
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    .line 128
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    .end local v6    # "in":Ljava/io/BufferedReader;
    .local v7, "in":Ljava/io/BufferedReader;
    :goto_0
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 131
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v13

    goto :goto_0

    :cond_1
    move-object v6, v7

    .line 141
    .end local v7    # "in":Ljava/io/BufferedReader;
    .end local v8    # "line":Ljava/lang/String;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    :goto_1
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v4, v18, v14

    .line 143
    .local v4, "httpCost":J
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 144
    .local v11, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v17, "httpcost"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->h5Page:Liop;

    move-object/from16 v17, v0

    const-string/jumbo v18, "h5PageQueryPPCost"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v11}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 146
    const-string/jumbo v17, "H5PPQueryThread"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "http cost "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->silentClose(Ljava/io/Closeable;)V

    .line 151
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->silentClose(Ljava/io/Closeable;)V

    .line 153
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "httpCost":J
    .end local v11    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "realUrl":Ljava/net/URL;
    .end local v14    # "startTime":J
    .end local v16    # "statusCode":I
    :goto_2
    return-object v13

    .line 135
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v12    # "realUrl":Ljava/net/URL;
    .restart local v14    # "startTime":J
    .restart local v16    # "statusCode":I
    :cond_2
    :try_start_5
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 136
    .restart local v11    # "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v17, "queryUrl"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->queryUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v17, "queryParam"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string/jumbo v17, "statusCode"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->h5Page:Liop;

    move-object/from16 v17, v0

    const-string/jumbo v18, "h5PageQueryPP"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v11}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 147
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v11    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "realUrl":Ljava/net/URL;
    .end local v14    # "startTime":J
    .end local v16    # "statusCode":I
    :catch_0
    move-exception v3

    .line 148
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string/jumbo v17, "H5PPQueryThread"

    const-string/jumbo v18, "dopost catch exception "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 150
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->silentClose(Ljava/io/Closeable;)V

    .line 151
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->silentClose(Ljava/io/Closeable;)V

    goto :goto_2

    .line 150
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->silentClose(Ljava/io/Closeable;)V

    .line 151
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->silentClose(Ljava/io/Closeable;)V

    throw v17

    .line 150
    .end local v9    # "out":Ljava/io/PrintWriter;
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v10    # "out":Ljava/io/PrintWriter;
    .restart local v12    # "realUrl":Ljava/net/URL;
    .restart local v14    # "startTime":J
    :catchall_1
    move-exception v17

    move-object v9, v10

    .end local v10    # "out":Ljava/io/PrintWriter;
    .restart local v9    # "out":Ljava/io/PrintWriter;
    goto :goto_4

    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "statusCode":I
    :catchall_2
    move-exception v17

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 147
    .end local v9    # "out":Ljava/io/PrintWriter;
    .end local v16    # "statusCode":I
    .restart local v10    # "out":Ljava/io/PrintWriter;
    :catch_1
    move-exception v3

    move-object v9, v10

    .end local v10    # "out":Ljava/io/PrintWriter;
    .restart local v9    # "out":Ljava/io/PrintWriter;
    goto :goto_3

    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "statusCode":I
    :catch_2
    move-exception v3

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 60
    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->isRunning:Z

    if-eqz v3, :cond_0

    .line 61
    const-string/jumbo v3, "H5PPQueryThread"

    const-string/jumbo v4, "isRunning return"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->isRunning:Z

    .line 66
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->h5Page:Liop;

    const-string/jumbo v4, "showLoading"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 67
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->generateRequestJsonStr()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "requestData":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->doPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v3, "H5PPQueryThread"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "result is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->parseRespnseJsonStr(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->h5Page:Liop;

    const-string/jumbo v4, "hideLoading"

    invoke-interface {v3, v4, v6}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 75
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->isRunning:Z

    goto :goto_0

    .line 71
    .end local v1    # "requestData":Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "H5PPQueryThread"

    const-string/jumbo v4, "catch exception"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->h5Page:Liop;

    const-string/jumbo v4, "hideLoading"

    invoke-interface {v3, v4, v6}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 75
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->isRunning:Z

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->h5Page:Liop;

    const-string/jumbo v5, "hideLoading"

    invoke-interface {v4, v5, v6}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 75
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->isRunning:Z

    throw v3
.end method

.method public setParams(Ljava/lang/String;ILcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;Liop;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "onGetQueryResult"    # Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;
    .param p4, "h5Page"    # Liop;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->url:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->type:I

    .line 49
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->onGetQueryResult:Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;

    .line 50
    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->h5Page:Liop;

    .line 51
    const-string/jumbo v1, "h5_ppConfig"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 52
    .local v0, "ppConfig":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    .line 53
    const-string/jumbo v1, "h5_ppQueryUrl"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->queryUrl:Ljava/lang/String;

    .line 54
    const-string/jumbo v1, "H5PPQueryThread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "queryUrl is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->queryUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method
