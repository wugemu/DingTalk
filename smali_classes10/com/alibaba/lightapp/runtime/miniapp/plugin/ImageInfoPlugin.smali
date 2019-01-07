.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;
.super Lipd;
.source "ImageInfoPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;
    .param p1, "x1"    # Ljava/io/InputStream;

    .prologue
    .line 41
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;->a(Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v2, 0x0

    .line 164
    if-nez p0, :cond_0

    move-object v1, v2

    .line 180
    :goto_0
    return-object v1

    .line 168
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 169
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 171
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_1

    .line 172
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    move-object v1, v2

    .line 176
    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 179
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 187
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v4

    .line 217
    :cond_0
    :goto_0
    return-object v3

    .line 192
    :cond_1
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 200
    .local v2, "m_url":Ljava/net/URL;
    const/4 v1, 0x0

    .line 203
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 204
    .local v0, "con":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 205
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 206
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 207
    const/4 v5, 0x0

    invoke-static {v1, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    if-eqz v1, :cond_0

    .line 215
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    .line 194
    .end local v0    # "con":Ljava/net/HttpURLConnection;
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "m_url":Ljava/net/URL;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v5

    move-object v3, v4

    goto :goto_0

    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "m_url":Ljava/net/URL;
    :catch_2
    move-exception v5

    .line 214
    if-eqz v1, :cond_2

    .line 215
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_1
    move-object v3, v4

    .line 217
    goto :goto_0

    .line 213
    :catchall_0
    move-exception v4

    .line 214
    if-eqz v1, :cond_3

    .line 215
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 217
    :cond_3
    :goto_2
    throw v4

    :catch_3
    move-exception v5

    goto :goto_1

    :catch_4
    move-exception v5

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 41
    .line 3273
    const-string/jumbo v1, "url"

    invoke-static {p2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3274
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3275
    invoke-static {v1, p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAbsoluteUrlV2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;Liny;IILjava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;
    .param p1, "x1"    # Liny;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 41
    .line 5252
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 5253
    const-string/jumbo v1, "success"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5254
    const-string/jumbo v1, "width"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5255
    const-string/jumbo v1, "height"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5256
    const-string/jumbo v1, "path"

    invoke-virtual {v0, v1, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4262
    invoke-interface {p1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;Liny;ZLjava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;
    .param p1, "x1"    # Liny;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 41
    .line 6127
    const/4 v0, 0x0

    .line 6128
    if-eqz p2, :cond_1

    .line 6129
    invoke-static {p3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;->a(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 6140
    :cond_0
    :goto_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$2;

    invoke-direct {v2, p0, v0, p1, p3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;Landroid/graphics/BitmapFactory$Options;Liny;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 41
    return-void

    .line 6132
    :cond_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    invoke-static {p3}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6133
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    move-result-object v1

    .line 6134
    if-eqz v1, :cond_0

    .line 6135
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    .line 6153
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6158
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6159
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;Liop;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;
    .param p1, "x1"    # Liop;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;

    .prologue
    const/4 v4, 0x0

    .line 41
    .line 5287
    const-string/jumbo v0, "ImageInfoPlugin"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "getImageInfoFromPkg...url="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 6071
    const-string/jumbo v2, "mini_app"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5289
    if-eqz p1, :cond_2

    .line 5290
    invoke-interface {p1}, Liop;->getSession()Lipc;

    move-result-object v0

    .line 5291
    if-eqz v0, :cond_1

    .line 5292
    invoke-interface {v0}, Lipc;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v0

    .line 5293
    if-eqz v0, :cond_0

    .line 5294
    invoke-interface {v0, p2, p3}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getContent(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V

    .line 5301
    :goto_0
    return-void

    .line 5296
    :cond_0
    invoke-interface {p3, v4}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;->onGetResponse(Landroid/webkit/WebResourceResponse;)V

    goto :goto_0

    .line 5299
    :cond_1
    invoke-interface {p3, v4}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;->onGetResponse(Landroid/webkit/WebResourceResponse;)V

    goto :goto_0

    .line 5302
    :cond_2
    invoke-interface {p3, v4}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;->onGetResponse(Landroid/webkit/WebResourceResponse;)V

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 10
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    .line 50
    :try_start_0
    const-string/jumbo v0, "ImageInfoPlugin"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "event"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    .line 1065
    iget-object v5, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 50
    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "params"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    .line 1121
    iget-object v5, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 50
    invoke-static {v5}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 2071
    const-string/jumbo v4, "mini_app"

    invoke-static {v4, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2121
    :goto_0
    iget-object v7, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 56
    .local v7, "params":Lcom/alibaba/fastjson/JSONObject;
    if-nez v7, :cond_0

    .line 57
    const-string/jumbo v0, "  params is null"

    invoke-interface {p2, v9, v0}, Liny;->sendError(ILjava/lang/String;)V

    .line 124
    :goto_1
    return-void

    .line 51
    .end local v7    # "params":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v6

    .line 52
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "params":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    const-string/jumbo v0, "src"

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, "path":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 62
    const-string/jumbo v0, "  param url is not found"

    invoke-interface {p2, v9, v0}, Liny;->sendError(ILjava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_1
    move-object v3, v8

    .line 66
    .local v3, "tempPath":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "localId":Ljava/lang/String;
    const-string/jumbo v0, "ImageInfoPlugin"

    invoke-static {v0, v9}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v9

    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    invoke-interface {v9, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_1
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 231
    .line 3065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 3081
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 232
    instance-of v3, v3, Liop;

    if-nez v3, :cond_0

    .line 233
    const-string/jumbo v3, "ImageInfoPlugin"

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v5, "not from h5 page."

    aput-object v5, v4, v2

    .line 3098
    const-string/jumbo v2, "mini_api"

    invoke-static {v2, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v2}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 3245
    :goto_0
    return v1

    .line 237
    :cond_0
    const-string/jumbo v3, "ImageInfoPlugin"

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onActionCalled:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3243
    const-string/jumbo v3, "getImageInfo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3244
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 239
    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 4
    .param p1, "filter"    # Liof;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 223
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "getImageInfo"

    aput-object v2, v1, v3

    .local v1, "actions":[Ljava/lang/String;
    move v2, v3

    .line 224
    :goto_0
    if-gtz v2, :cond_0

    aget-object v0, v1, v3

    .line 225
    .local v0, "a":Ljava/lang/String;
    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "a":Ljava/lang/String;
    :cond_0
    return-void
.end method
