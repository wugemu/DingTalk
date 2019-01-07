.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin;
.super Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;
.source "MiniHttpPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {p1, p2, p3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin;->a([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "dataType"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 236
    const-string/jumbo v0, ""

    .line 237
    .local v0, "content":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 238
    const-string/jumbo v1, "base64"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v0

    .line 248
    :cond_0
    :goto_0
    return-object v0

    .line 241
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 242
    new-instance v0, Ljava/lang/String;

    .end local v0    # "content":Ljava/lang/String;
    invoke-direct {v0, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_0

    .line 244
    :cond_2
    new-instance v0, Ljava/lang/String;

    .end local v0    # "content":Ljava/lang/String;
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 17
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "dataType"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;
    .param p4, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p5, "bridgeContext"    # Liny;

    .prologue
    .line 171
    invoke-virtual/range {p4 .. p4}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v6

    .line 172
    .local v6, "h5Page":Liop;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v14

    if-nez v14, :cond_1

    .line 173
    :cond_0
    const/4 v14, 0x0

    .line 220
    :goto_0
    return v14

    .line 176
    :cond_1
    invoke-interface {v6}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v14

    const-string/jumbo v15, "onlineHost"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 178
    .local v8, "host":Ljava/lang/String;
    const-string/jumbo v14, "http"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 179
    const/4 v14, 0x0

    goto :goto_0

    .line 182
    :cond_2
    invoke-interface {v6}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v14

    .line 1225
    const/4 v10, 0x0

    .line 1226
    const-string/jumbo v15, "url"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1227
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1228
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v14, v0, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAbsoluteUrlV2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v10

    .line 183
    .local v10, "realPath":Ljava/lang/String;
    :cond_3
    const-string/jumbo v14, "MiniHttpPlugin"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "getFromPkg realPath "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-interface {v6}, Liop;->getSession()Lipc;

    move-result-object v7

    .line 185
    .local v7, "h5Session":Lipc;
    if-eqz v7, :cond_6

    .line 186
    invoke-interface {v7}, Lipc;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v5

    .line 187
    .local v5, "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    if-eqz v5, :cond_6

    .line 188
    const/4 v14, 0x1

    .line 189
    invoke-interface {v5, v10, v14}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getContent(Ljava/lang/String;Z)Landroid/webkit/WebResourceResponse;

    move-result-object v13

    .line 190
    .local v13, "webResourceResponse":Landroid/webkit/WebResourceResponse;
    if-eqz v13, :cond_6

    .line 191
    const/4 v9, 0x0

    .line 193
    .local v9, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v13}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v9

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, "content":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 196
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 197
    .local v2, "bytes":[B
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v2, v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin;->a([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 200
    .end local v2    # "bytes":[B
    :cond_4
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 201
    .local v11, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v14, "data"

    invoke-virtual {v11, v14, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    move-object/from16 v0, p5

    invoke-interface {v0, v11}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    if-eqz v9, :cond_5

    .line 211
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 214
    :cond_5
    :goto_1
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 212
    :catch_0
    move-exception v4

    .line 213
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 205
    .end local v3    # "content":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v11    # "result":Lcom/alibaba/fastjson/JSONObject;
    :catch_1
    move-exception v12

    .line 206
    .local v12, "throwable":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v14, "MiniHttpPlugin"

    invoke-static {v14, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    if-eqz v9, :cond_6

    .line 211
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 220
    .end local v5    # "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "throwable":Ljava/lang/Throwable;
    .end local v13    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :cond_6
    :goto_2
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 212
    .restart local v5    # "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "throwable":Ljava/lang/Throwable;
    .restart local v13    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :catch_2
    move-exception v4

    .line 213
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 209
    .end local v4    # "e":Ljava/io/IOException;
    .end local v12    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v14

    if-eqz v9, :cond_7

    .line 211
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 214
    :cond_7
    :goto_3
    throw v14

    .line 212
    :catch_3
    move-exception v4

    .line 213
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 21
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    .prologue
    .line 51
    .line 1065
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 53
    .local v12, "action":Ljava/lang/String;
    const-string/jumbo v2, "dtHttpRequest"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1121
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v17, v0

    .line 56
    .local v17, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "url"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "url":Ljava/lang/String;
    const-string/jumbo v2, "method"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 60
    .local v18, "method":Ljava/lang/String;
    const-string/jumbo v2, "responseType"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "dataType":Ljava/lang/String;
    const-string/jumbo v2, "responseCharset"

    const-string/jumbo v6, "UTF-8"

    move-object/from16 v0, v17

    invoke-static {v0, v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "charset":Ljava/lang/String;
    const-string/jumbo v2, "headers"

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v16

    .line 65
    .local v16, "headers":Lcom/alibaba/fastjson/JSONObject;
    if-nez v16, :cond_0

    .line 66
    new-instance v16, Lcom/alibaba/fastjson/JSONObject;

    .end local v16    # "headers":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct/range {v16 .. v16}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 68
    .restart local v16    # "headers":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v19

    .line 69
    .local v19, "page":Liop;
    if-eqz v19, :cond_1

    .line 70
    const-string/jumbo v2, "Referer"

    invoke-interface/range {v19 .. v19}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_1
    const-string/jumbo v2, "Accept-Charset"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 73
    const-string/jumbo v2, "Accept-Charset"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_2
    const-string/jumbo v2, "x-app-id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 77
    const-string/jumbo v2, "x-app-id"

    invoke-static/range {p1 .. p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_3
    const-string/jumbo v2, "data"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 81
    .local v14, "data":Ljava/lang/String;
    const/4 v2, 0x0

    new-array v13, v2, [B

    .line 83
    .local v13, "content":[B
    :try_start_0
    invoke-virtual {v14, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 89
    :goto_0
    const-string/jumbo v2, "timeout"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    .line 92
    const-string/jumbo v2, "GET"

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 93
    invoke-direct/range {v2 .. v7}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 94
    const/4 v2, 0x1

    .line 165
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "dataType":Ljava/lang/String;
    .end local v5    # "charset":Ljava/lang/String;
    .end local v13    # "content":[B
    .end local v14    # "data":Ljava/lang/String;
    .end local v16    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .end local v17    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v18    # "method":Ljava/lang/String;
    .end local v19    # "page":Liop;
    :goto_1
    return v2

    .line 84
    .restart local v3    # "url":Ljava/lang/String;
    .restart local v4    # "dataType":Ljava/lang/String;
    .restart local v5    # "charset":Ljava/lang/String;
    .restart local v13    # "content":[B
    .restart local v14    # "data":Ljava/lang/String;
    .restart local v16    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .restart local v17    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v18    # "method":Ljava/lang/String;
    .restart local v19    # "page":Liop;
    :catch_0
    move-exception v15

    .line 85
    .local v15, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v15}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 97
    .end local v15    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    new-instance v20, Lhnd;

    invoke-direct/range {v20 .. v20}, Lhnd;-><init>()V

    .line 98
    .local v20, "task":Lhmz;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lhmz;->a(Ljava/lang/String;)Lhmz;

    move-result-object v2

    .line 99
    invoke-virtual {v2, v3}, Lhmz;->c(Ljava/lang/String;)Lhna;

    move-result-object v2

    check-cast v2, Lhmz;

    .line 100
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lhmz;->b(Lcom/alibaba/fastjson/JSONObject;)Lhna;

    move-result-object v2

    check-cast v2, Lhmz;

    .line 101
    invoke-virtual {v2, v13}, Lhmz;->a([B)Lhmz;

    move-result-object v2

    new-instance v6, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin$1;

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object v9, v4

    move-object v10, v5

    move-object/from16 v11, p1

    invoke-direct/range {v6 .. v11}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin;Liny;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 102
    invoke-virtual {v2, v6}, Lhmz;->a(Lhna$a;)Lhna;

    move-result-object v2

    check-cast v2, Lhmz;

    .line 160
    invoke-virtual {v2}, Lhmz;->a()V

    .line 162
    const/4 v2, 0x1

    goto :goto_1

    .line 165
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "dataType":Ljava/lang/String;
    .end local v5    # "charset":Ljava/lang/String;
    .end local v13    # "content":[B
    .end local v14    # "data":Ljava/lang/String;
    .end local v16    # "headers":Lcom/alibaba/fastjson/JSONObject;
    .end local v17    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v18    # "method":Ljava/lang/String;
    .end local v19    # "page":Liop;
    .end local v20    # "task":Lhmz;
    :cond_5
    invoke-super/range {p0 .. p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v2

    goto :goto_1
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 45
    const-string/jumbo v0, "dtHttpRequest"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 46
    return-void
.end method
