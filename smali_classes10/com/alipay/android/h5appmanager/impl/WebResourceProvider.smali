.class Lcom/alipay/android/h5appmanager/impl/WebResourceProvider;
.super Ljava/lang/Object;
.source "WebResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/h5appmanager/impl/WebResourceProvider$H5AppConfigHolder;,
        Lcom/alipay/android/h5appmanager/impl/WebResourceProvider$WebResource;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field public static final HPM_FILE_NAME:Ljava/lang/String; = "hpmfile.json"

.field private static final TAG:Ljava/lang/String; = "WebResourceProvider"


# instance fields
.field private cachedWebResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field

.field private final configHolder:Lcom/alipay/android/h5appmanager/impl/WebResourceProvider$H5AppConfigHolder;

.field private launchUrlMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/android/h5appmanager/impl/WebResourceProvider$H5AppConfigHolder;)V
    .locals 2
    .param p1, "configHolder"    # Lcom/alipay/android/h5appmanager/impl/WebResourceProvider$H5AppConfigHolder;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider;->launchUrlMap:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider;->cachedWebResources:Ljava/util/Map;

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "H5AppConfigHolder is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider;->configHolder:Lcom/alipay/android/h5appmanager/impl/WebResourceProvider$H5AppConfigHolder;

    .line 61
    return-void
.end method

.method static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    const-string/jumbo v1, ""

    .line 242
    :goto_0
    return-object v1

    .line 238
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 239
    .local v0, "index":I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    .line 240
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0

    .line 242
    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    const-string/jumbo v2, "*/*"

    .line 229
    :cond_0
    :goto_0
    return-object v2

    .line 223
    :cond_1
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 225
    .local v1, "map":Landroid/webkit/MimeTypeMap;
    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "type":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    const-string/jumbo v2, "*/*"

    goto :goto_0
.end method

.method static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 260
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 261
    .local v0, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 264
    :cond_0
    return-object v0
.end method

.method private getWebResourceMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider;->cachedWebResources:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider;->cachedWebResources:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 71
    .local v0, "appSpecifiedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :goto_0
    return-object v0

    .line 68
    .end local v0    # "appSpecifiedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .restart local v0    # "appSpecifiedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider;->cachedWebResources:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static parseUrl(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    const/4 v1, 0x0

    .line 255
    :goto_0
    return-object v1

    .line 249
    :cond_0
    const/4 v1, 0x0

    .line 251
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WebResourceProvider"

    const-string/jumbo v3, "parse url exception."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getWebResource(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/h5appmanager/impl/WebResourceProvider$WebResource;
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 181
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-object v5

    .line 185
    :cond_1
    move-object v3, p2

    .line 187
    .local v3, "processedUrl":Ljava/lang/String;
    const-string/jumbo v6, "#"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 188
    .local v2, "inPageHashStart":I
    if-eq v2, v7, :cond_2

    .line 189
    invoke-virtual {p2, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 192
    :cond_2
    const-string/jumbo v6, "?"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 193
    .local v4, "queryParamStart":I
    if-eq v4, v7, :cond_3

    .line 194
    invoke-virtual {p2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 197
    :cond_3
    invoke-direct {p0, p1}, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider;->getWebResourceMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 199
    .local v0, "appSpecifiedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "resource found "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in app(id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 202
    .local v1, "data":[B
    new-instance v5, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider$WebResource;

    invoke-direct {v5}, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider$WebResource;-><init>()V

    .line 203
    .local v5, "webResource":Lcom/alipay/android/h5appmanager/impl/WebResourceProvider$WebResource;
    const-string/jumbo v6, "utf-8"

    iput-object v6, v5, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider$WebResource;->encoding:Ljava/lang/String;

    .line 204
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider$WebResource;->headers:Ljava/util/Map;

    .line 205
    invoke-static {v3}, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider$WebResource;->mimeType:Ljava/lang/String;

    .line 206
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v6, v5, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider$WebResource;->is:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public preloadWebResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 36
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_0

    .line 82
    new-instance v33, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v34, "appId is empty"

    invoke-direct/range {v33 .. v34}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 85
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v33

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 86
    const-string/jumbo v33, "WebResourceProvider"

    const-string/jumbo v34, "You shouldn\'t preload web resources in UI thread"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_1
    const/16 v23, 0x0

    .line 90
    .local v23, "launchUrl":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider;->getWebResourceMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 91
    .local v4, "appSpecifiedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_2

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider;->launchUrlMap:Ljava/util/Map;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 177
    :goto_0
    return-object v33

    .line 95
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 96
    .local v28, "start":J
    const/16 v30, 0x0

    .line 98
    .local v30, "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider;->configHolder:Lcom/alipay/android/h5appmanager/impl/WebResourceProvider$H5AppConfigHolder;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider$H5AppConfigHolder;->getArchivedOfflinePkgPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 99
    .local v24, "localStore":Ljava/lang/String;
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v25, "localStoreFile":Ljava/io/File;
    invoke-static/range {v25 .. v25}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/io/File;)Z

    move-result v33

    if-nez v33, :cond_4

    .line 101
    new-instance v33, Ljava/lang/IllegalStateException;

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "h5 packages(appId:"

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ") hasn\'t been synced to local"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v33
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    .end local v24    # "localStore":Ljava/lang/String;
    .end local v25    # "localStoreFile":Ljava/io/File;
    :catch_0
    move-exception v12

    .line 165
    .local v12, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    if-eqz v30, :cond_3

    .line 169
    :try_start_2
    invoke-virtual/range {v30 .. v30}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 175
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    sub-long v14, v34, v28

    .line 176
    .local v14, "elapse":J
    new-instance v33, Ljava/lang/StringBuilder;

    const-string/jumbo v34, "parse tar package elapse "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    .line 177
    goto :goto_0

    .line 103
    .end local v14    # "elapse":J
    .restart local v24    # "localStore":Ljava/lang/String;
    .restart local v25    # "localStoreFile":Ljava/io/File;
    :cond_4
    :try_start_3
    new-instance v17, Ljava/io/FileInputStream;

    new-instance v33, Ljava/io/File;

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 104
    .local v17, "fis":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 105
    .local v5, "bis":Ljava/io/BufferedInputStream;
    new-instance v31, Lcom/alipay/android/h5appmanager/tar/TarInputStream;

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    .end local v30    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .local v31, "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :try_start_4
    const-string/jumbo v18, ""

    .line 108
    .local v18, "host":Ljava/lang/String;
    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v32, "tmpResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_5
    :goto_3
    invoke-virtual/range {v31 .. v31}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->getNextEntry()Lcom/alipay/android/h5appmanager/tar/TarEntry;

    move-result-object v27

    .local v27, "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    if-eqz v27, :cond_f

    .line 110
    invoke-virtual/range {v27 .. v27}, Lcom/alipay/android/h5appmanager/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v13

    .line 112
    .local v13, "entryName":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/alipay/android/h5appmanager/tar/TarEntry;->isDirectory()Z

    move-result v33

    if-nez v33, :cond_6

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_6

    const-string/jumbo v33, "hpmfile.json"

    .line 113
    move-object/from16 v0, v33

    invoke-static {v13, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_c

    .line 114
    :cond_6
    const-string/jumbo v33, "hpmfile.json"

    move-object/from16 v0, v33

    invoke-static {v13, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_5

    .line 115
    const/16 v33, 0x800

    move/from16 v0, v33

    new-array v7, v0, [B

    .line 117
    .local v7, "buffer":[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 118
    .local v6, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_4
    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->read([B)I

    move-result v9

    .local v9, "count":I
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v9, v0, :cond_7

    .line 119
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v6, v7, v0, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    .line 164
    .end local v6    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "buffer":[B
    .end local v9    # "count":I
    .end local v13    # "entryName":Ljava/lang/String;
    .end local v18    # "host":Ljava/lang/String;
    .end local v27    # "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    .end local v32    # "tmpResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :catch_1
    move-exception v12

    move-object/from16 v30, v31

    .end local v31    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v30    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    goto/16 :goto_1

    .line 121
    .end local v30    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v6    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "buffer":[B
    .restart local v9    # "count":I
    .restart local v13    # "entryName":Ljava/lang/String;
    .restart local v18    # "host":Ljava/lang/String;
    .restart local v27    # "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    .restart local v31    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v32    # "tmpResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_7
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 122
    .local v10, "data":[B
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([B)V

    .line 123
    .local v11, "dataText":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    .local v8, "config":Lorg/json/JSONObject;
    const-string/jumbo v33, "version"

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 129
    .local v19, "hpmVersion":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    const-string/jumbo v34, "hpm version "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string/jumbo v33, "host"

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 132
    .local v20, "joHost":Lorg/json/JSONObject;
    const-string/jumbo v33, "online"

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 134
    const-string/jumbo v33, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_a

    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_a

    .line 135
    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_5
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_9

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 136
    .local v21, "key":Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 167
    .end local v6    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "buffer":[B
    .end local v8    # "config":Lorg/json/JSONObject;
    .end local v9    # "count":I
    .end local v10    # "data":[B
    .end local v11    # "dataText":Ljava/lang/String;
    .end local v13    # "entryName":Ljava/lang/String;
    .end local v18    # "host":Ljava/lang/String;
    .end local v19    # "hpmVersion":Ljava/lang/String;
    .end local v20    # "joHost":Lorg/json/JSONObject;
    .end local v21    # "key":Ljava/lang/String;
    .end local v27    # "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    .end local v32    # "tmpResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :catchall_0
    move-exception v33

    move-object/from16 v30, v31

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v17    # "fis":Ljava/io/InputStream;
    .end local v24    # "localStore":Ljava/lang/String;
    .end local v25    # "localStoreFile":Ljava/io/File;
    .end local v31    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v30    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :goto_6
    if-eqz v30, :cond_8

    .line 169
    :try_start_5
    invoke-virtual/range {v30 .. v30}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 172
    :cond_8
    :goto_7
    throw v33

    .line 138
    .end local v30    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "buffer":[B
    .restart local v8    # "config":Lorg/json/JSONObject;
    .restart local v9    # "count":I
    .restart local v10    # "data":[B
    .restart local v11    # "dataText":Ljava/lang/String;
    .restart local v13    # "entryName":Ljava/lang/String;
    .restart local v17    # "fis":Ljava/io/InputStream;
    .restart local v18    # "host":Ljava/lang/String;
    .restart local v19    # "hpmVersion":Ljava/lang/String;
    .restart local v20    # "joHost":Lorg/json/JSONObject;
    .restart local v24    # "localStore":Ljava/lang/String;
    .restart local v25    # "localStoreFile":Ljava/io/File;
    .restart local v27    # "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    .restart local v31    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v32    # "tmpResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_9
    :try_start_6
    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->clear()V

    .line 141
    :cond_a
    const-string/jumbo v33, "launchParams"

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 142
    .local v22, "launchParamsJson":Lorg/json/JSONObject;
    const-string/jumbo v33, "url"

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_b

    const-string/jumbo v33, "url"

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 143
    .local v26, "relativeLaunchUrl":Ljava/lang/String;
    :goto_8
    new-instance v33, Ljava/lang/StringBuilder;

    const-string/jumbo v34, "launchParamsJson: "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider;->launchUrlMap:Ljava/util/Map;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 142
    .end local v26    # "relativeLaunchUrl":Ljava/lang/String;
    :cond_b
    const-string/jumbo v26, ""

    goto :goto_8

    .line 150
    .end local v6    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "buffer":[B
    .end local v8    # "config":Lorg/json/JSONObject;
    .end local v9    # "count":I
    .end local v10    # "data":[B
    .end local v11    # "dataText":Ljava/lang/String;
    .end local v19    # "hpmVersion":Ljava/lang/String;
    .end local v20    # "joHost":Lorg/json/JSONObject;
    .end local v22    # "launchParamsJson":Lorg/json/JSONObject;
    :cond_c
    const/16 v33, 0x800

    move/from16 v0, v33

    new-array v7, v0, [B

    .line 152
    .restart local v7    # "buffer":[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 153
    .restart local v6    # "bos":Ljava/io/ByteArrayOutputStream;
    :goto_9
    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->read([B)I

    move-result v9

    .restart local v9    # "count":I
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v9, v0, :cond_d

    .line 154
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v6, v7, v0, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 156
    :cond_d
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 158
    .restart local v10    # "data":[B
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 159
    .local v16, "entryPath":Ljava/lang/String;
    const-string/jumbo v33, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_e

    .line 160
    move-object/from16 v4, v32

    .line 162
    :cond_e
    move-object/from16 v0, v16

    invoke-interface {v4, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 169
    .end local v6    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "buffer":[B
    .end local v9    # "count":I
    .end local v10    # "data":[B
    .end local v13    # "entryName":Ljava/lang/String;
    .end local v16    # "entryPath":Ljava/lang/String;
    :cond_f
    :try_start_7
    invoke-virtual/range {v31 .. v31}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object/from16 v30, v31

    .line 172
    .end local v31    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v30    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    goto/16 :goto_2

    .line 170
    .end local v30    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v31    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :catch_2
    move-exception v12

    .line 171
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v30, v31

    .line 172
    .end local v31    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v30    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    goto/16 :goto_2

    .line 170
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v17    # "fis":Ljava/io/InputStream;
    .end local v18    # "host":Ljava/lang/String;
    .end local v24    # "localStore":Ljava/lang/String;
    .end local v25    # "localStoreFile":Ljava/io/File;
    .end local v27    # "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    .end local v32    # "tmpResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .local v12, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v12

    .line 171
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 170
    .end local v12    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v12

    .line 171
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 167
    .end local v12    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v33

    goto/16 :goto_6
.end method

.method public recycleWebResource(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider;->cachedWebResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider;->cachedWebResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 215
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/WebResourceProvider;->cachedWebResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    return-void
.end method
