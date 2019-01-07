.class public Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;
.super Ljava/lang/Object;
.source "WMLLegacyAppAdapter.java"

# interfaces
.implements Ljpq;


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final ERR_NO_RESULT:Ljava/lang/String; = "ERR_NO_RESULT"

.field private static final ERR_TIME_OUT:Ljava/lang/String; = "ERR_TIME_OUT"

.field private static final PACKAGE_DIR:Ljava/lang/String; = "package_cache"

.field private static final TAG:Ljava/lang/String; = "WMLLegacyAppAdapter"

.field private static final WM_DIR:Ljava/lang/String; = "wm_snap_cache"

.field private static applicationFilePath:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;Lcom/taobao/windmill/bundle/container/core/AppCodeModel;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;
    .param p1, "x1"    # Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->buildSuccessReponse(Lcom/taobao/windmill/bundle/container/core/AppCodeModel;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->buildErrorReponse(Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v0

    return-object v0
.end method

.method private buildEmptyReponse()Ljpq$a;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 522
    new-instance v0, Ljpq$a;

    invoke-direct {v0}, Ljpq$a;-><init>()V

    .line 523
    .local v0, "response":Ljpq$a;
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljpq$a;->a:Z

    .line 524
    const-string/jumbo v1, "ERR_NO_RESULT"

    iput-object v1, v0, Ljpq$a;->b:Ljava/lang/String;

    .line 525
    const-string/jumbo v1, "empty"

    iput-object v1, v0, Ljpq$a;->c:Ljava/lang/String;

    .line 526
    return-object v0
.end method

.method private buildErrorReponse(Ljava/lang/String;Ljava/lang/String;)Ljpq$a;
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 507
    new-instance v0, Ljpq$a;

    invoke-direct {v0}, Ljpq$a;-><init>()V

    .line 508
    .local v0, "response":Ljpq$a;
    iput-boolean v4, v0, Ljpq$a;->a:Z

    .line 509
    iput-object p1, v0, Ljpq$a;->b:Ljava/lang/String;

    .line 510
    iput-object p2, v0, Ljpq$a;->c:Ljava/lang/String;

    .line 512
    const-string/jumbo v1, "WMLLegacyAppAdapter"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "buildErrorReponse"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "success="

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, v0, Ljpq$a;->a:Z

    .line 513
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "errorCode="

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, v0, Ljpq$a;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "errorMsg="

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, v0, Ljpq$a;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 512
    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    return-object v0
.end method

.method private buildQuery(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lhob;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 449
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v4, "queryList":Ljava/util/List;, "Ljava/util/List<Lhob;>;"
    new-instance v5, Lhob;

    invoke-direct {v5}, Lhob;-><init>()V

    .line 451
    .local v5, "queryModel":Lhob;
    iput-object p1, v5, Lhob;->a:Ljava/lang/String;

    .line 453
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->N()Ljava/util/List;

    move-result-object v3

    .line 454
    .local v3, "orgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 455
    .local v2, "orgJsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v3, :cond_1

    .line 456
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 457
    .local v1, "orgId":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 458
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 462
    .end local v1    # "orgId":Ljava/lang/Long;
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 463
    .local v0, "extendedJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "orgIdList"

    invoke-virtual {v0, v6, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lhob;->c:Ljava/lang/String;

    .line 465
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    return-object v4
.end method

.method private buildSuccessReponse(Lcom/taobao/windmill/bundle/container/core/AppCodeModel;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;
    .locals 8
    .param p1, "appCodeModel"    # Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    .param p2, "packageUrl"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/windmill/bundle/container/core/AppCodeModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljpq$a",
            "<",
            "Lcom/taobao/windmill/bundle/container/core/AppInfoModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 471
    new-instance v2, Ljpq$a;

    invoke-direct {v2}, Ljpq$a;-><init>()V

    .line 472
    .local v2, "response":Ljpq$a;, "Ljpq$a<Lcom/taobao/windmill/bundle/container/core/AppInfoModel;>;"
    iput-boolean v7, v2, Ljpq$a;->a:Z

    .line 474
    new-instance v0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    invoke-direct {v0}, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;-><init>()V

    .line 475
    .local v0, "data":Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    new-instance v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    invoke-direct {v1}, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;-><init>()V

    .line 476
    .local v1, "infoModel":Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;
    iput-object v1, v0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    .line 478
    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appId:Ljava/lang/String;

    .line 479
    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppLogo()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appLogo:Ljava/lang/String;

    .line 480
    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appName:Ljava/lang/String;

    .line 481
    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getVersion()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->version:Ljava/lang/String;

    .line 482
    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getZCacheKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->zCacheKey:Ljava/lang/String;

    .line 483
    iget-object v3, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->zCacheKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    iput-object p3, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->zCacheKey:Ljava/lang/String;

    .line 486
    :cond_0
    const-string/jumbo v3, "priArea"

    iput-object v3, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->frameTempType:Ljava/lang/String;

    .line 487
    iput-boolean v7, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->drawerEnable:Z

    .line 488
    iput-boolean v7, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->favorEnable:Z

    .line 489
    iput-boolean v7, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->footPrintEnable:Z

    .line 490
    iput-boolean v7, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->licenseEnable:Z

    .line 491
    iput-boolean v7, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->userAuthEnable:Z

    .line 492
    iput-object p2, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->zipUrl:Ljava/lang/String;

    .line 493
    iput-object p3, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->version:Ljava/lang/String;

    .line 495
    iput-object v0, v2, Ljpq$a;->d:Ljava/lang/Object;

    .line 497
    const-string/jumbo v3, "WMLLegacyAppAdapter"

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "buildSuccessReponse"

    aput-object v6, v4, v5

    const-string/jumbo v5, "success="

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget-boolean v6, v2, Ljpq$a;->a:Z

    .line 498
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "appId="

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 499
    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string/jumbo v6, "version="

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 500
    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getVersion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string/jumbo v6, "zipUrl="

    aput-object v6, v4, v5

    const/16 v5, 0x8

    aput-object p2, v4, v5

    .line 497
    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    return-object v2
.end method

.method private byteToFile(Ljava/lang/String;[B)Ljava/io/File;
    .locals 8
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 185
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->checkCacheFile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 186
    invoke-virtual {p0, p1, v5}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->deleteApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->getBundlePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, "path":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 237
    :goto_0
    return-object v5

    .line 193
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v4, "outputDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 195
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 198
    :cond_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 222
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v7, "temp"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .local v5, "outputFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 224
    .local v3, "out":Ljava/io/FileOutputStream;
    const/16 v7, 0x800

    new-array v0, v7, [B

    .line 226
    .local v0, "buf1":[B
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-lez v2, :cond_3

    .line 227
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 229
    :cond_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 230
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 231
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0
.end method

.method private checkCacheFile(Ljava/lang/String;)Z
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->getBundlePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, "cachedDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 268
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 269
    const/4 v3, 0x1

    .line 272
    .end local v1    # "files":[Ljava/io/File;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private deleteFile(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 291
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 293
    .local v1, "files":[Ljava/io/File;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 294
    .local v0, "file1":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->deleteFile(Ljava/io/File;)V

    .line 293
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    .end local v0    # "file1":Ljava/io/File;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 300
    .end local v1    # "files":[Ljava/io/File;
    :goto_1
    return-void

    .line 298
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private downloadAppInfoMonitor(Ljava/lang/String;Ljpq$a;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljpq$a",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 409
    .local p2, "result":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    if-eqz p2, :cond_0

    .line 410
    iget-boolean v1, p2, Ljpq$a;->a:Z

    if-eqz v1, :cond_1

    .line 411
    iget-object v1, p2, Ljpq$a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;->commitDownloadPackageStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 415
    .local v0, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "miniAppId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string/jumbo v1, "errorCode"

    iget-object v2, p2, Ljpq$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string/jumbo v1, "errorMsg"

    iget-object v2, p2, Ljpq$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string/jumbo v1, "queryAppInfoError"

    invoke-static {v1, v0}, Lhmv;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 420
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v1

    iget-object v2, p2, Ljpq$a;->b:Ljava/lang/String;

    iget-object v3, p2, Ljpq$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lgvi;->downloadWXMiniPackageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v1, p2, Ljpq$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;->commitDownloadPackageStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private getBundlePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->getCachePath()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "cachePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const/4 v1, 0x0

    .line 180
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCachePath()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->initIfNeed()V

    .line 257
    sget-object v0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->applicationFilePath:Ljava/io/File;

    if-nez v0, :cond_0

    .line 258
    const/4 v0, 0x0

    .line 260
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->applicationFilePath:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "package_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getResponse(Ljava/lang/String;)Ljpq$a;
    .locals 10
    .param p1, "appCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljpq$a",
            "<",
            "Lcom/taobao/windmill/bundle/container/core/AppInfoModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 333
    new-array v4, v7, [Ljpq$a;

    .line 334
    .local v4, "response":[Ljpq$a;, "[Ljpq$a<Lcom/taobao/windmill/bundle/container/core/AppInfoModel;>;"
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->buildEmptyReponse()Ljpq$a;

    move-result-object v6

    aput-object v6, v4, v9

    .line 336
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 338
    .local v1, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-direct {v0, p1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "appCodeModel":Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    const-class v6, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    invoke-static {v6}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    .line 341
    .local v5, "service":Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;
    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->buildQuery(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$2;

    invoke-direct {v7, p0, v4, v0, v1}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$2;-><init>(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;[Ljpq$a;Lcom/taobao/windmill/bundle/container/core/AppCodeModel;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;->getMiniAppMetaData(Ljava/util/List;Liyv;)V

    .line 395
    const-wide/16 v6, 0x1e

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    .line 396
    .local v3, "finished":Z
    if-nez v3, :cond_0

    .line 397
    const/4 v6, 0x0

    const-string/jumbo v7, "ERR_TIME_OUT"

    const-string/jumbo v8, "time out"

    invoke-direct {p0, v7, v8}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->buildErrorReponse(Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v7

    aput-object v7, v4, v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .end local v3    # "finished":Z
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppName()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v4, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->queryAppInfoMonitor(Ljava/lang/String;Ljava/lang/String;Ljpq$a;)V

    .line 404
    aget-object v6, v4, v9

    return-object v6

    .line 399
    :catch_0
    move-exception v2

    .line 400
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private initIfNeed()V
    .locals 3

    .prologue
    .line 241
    sget-object v1, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->applicationFilePath:Ljava/io/File;

    invoke-static {v1}, Ljra;->a(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 243
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v1

    .line 1121
    iget-object v1, v1, Ljpo;->b:Landroid/app/Application;

    .line 243
    invoke-static {v1}, Ljra;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 244
    .local v0, "parentPath":Ljava/io/File;
    if-nez v0, :cond_1

    .line 253
    .end local v0    # "parentPath":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 247
    .restart local v0    # "parentPath":Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "wm_snap_cache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->applicationFilePath:Ljava/io/File;

    .line 250
    .end local v0    # "parentPath":Ljava/io/File;
    :cond_2
    sget-object v1, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->applicationFilePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    sget-object v1, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->applicationFilePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method private isDebugApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string/jumbo v0, "debug_app"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private queryAppInfoMonitor(Ljava/lang/String;Ljava/lang/String;Ljpq$a;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljpq$a",
            "<",
            "Lcom/taobao/windmill/bundle/container/core/AppInfoModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 428
    .local p3, "response":Ljpq$a;, "Ljpq$a<Lcom/taobao/windmill/bundle/container/core/AppInfoModel;>;"
    if-eqz p3, :cond_0

    .line 429
    iget-boolean v1, p3, Ljpq$a;->a:Z

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, p3, Ljpq$a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;->commitQueryPackageStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 434
    .local v0, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "miniAppId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string/jumbo v1, "appName"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string/jumbo v1, "errorCode"

    iget-object v2, p3, Ljpq$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string/jumbo v1, "errorMsg"

    iget-object v2, p3, Ljpq$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string/jumbo v1, "queryAppInfoError"

    invoke-static {v1, v0}, Lhmv;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 440
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v1

    iget-object v2, p3, Ljpq$a;->b:Ljava/lang/String;

    iget-object v3, p3, Ljpq$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1, p2}, Lgvi;->queryWXMiniPackageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v1, p3, Ljpq$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;->commitQueryPackageStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public backup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "cacheKey"    # Ljava/lang/String;
    .param p4, "backZipUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljpq$a",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->buildEmptyReponse()Ljpq$a;

    move-result-object v9

    .line 86
    .local v9, "result":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    :try_start_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v11, 0x1

    invoke-direct {v2, v11}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 87
    .local v2, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v8, Ljpq$a;

    invoke-direct {v8}, Ljpq$a;-><init>()V

    .line 88
    .local v8, "res":Ljpq$a;, "Ljpq$a<[B>;"
    new-instance v7, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter;

    invoke-direct {v7}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter;-><init>()V

    .line 89
    .local v7, "httpAdapter":Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter;
    const/4 v11, 0x0

    new-instance v12, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$1;

    invoke-direct {v12, p0, v8, v2}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;Ljpq$a;Ljava/util/concurrent/CountDownLatch;)V

    move-object/from16 v0, p4

    invoke-virtual {v7, v0, v11, v12}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter;->sendRequest(Ljava/lang/String;Ljava/util/Map;Ljpr$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    const-wide/16 v12, 0x1e

    :try_start_1
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v12, v13, v11}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    .line 121
    .local v6, "finished":Z
    if-nez v6, :cond_0

    .line 122
    const-string/jumbo v11, "ERR_TIME_OUT"

    const-string/jumbo v12, "time out"

    invoke-direct {p0, v11, v12}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->buildErrorReponse(Ljava/lang/String;Ljava/lang/String;)Ljpq$a;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 128
    .end local v6    # "finished":Z
    :cond_0
    :goto_0
    :try_start_2
    iget-object v3, v8, Ljpq$a;->d:Ljava/lang/Object;

    check-cast v3, [B

    .line 130
    .local v3, "data":[B
    if-eqz v3, :cond_1

    array-length v11, v3

    if-gtz v11, :cond_2

    .line 132
    :cond_1
    const/4 v11, 0x0

    iput-boolean v11, v9, Ljpq$a;->a:Z

    .line 133
    sget-object v11, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_APP_URL:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v11, v11, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    iput-object v11, v9, Ljpq$a;->b:Ljava/lang/String;

    .line 134
    sget-object v11, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_APP_URL:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v11, v11, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorMsg:Ljava/lang/String;

    iput-object v11, v9, Ljpq$a;->c:Ljava/lang/String;

    .line 136
    const-string/jumbo v11, "WMLLegacyAppAdapter"

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "backup"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "failed"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object p2, v12, v13

    const/4 v13, 0x3

    aput-object p3, v12, v13

    const/4 v13, 0x4

    aput-object p4, v12, v13

    const/4 v13, 0x5

    iget-object v14, v9, Ljpq$a;->b:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x6

    iget-object v14, v9, Ljpq$a;->c:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v9}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->downloadAppInfoMonitor(Ljava/lang/String;Ljpq$a;)V

    move-object v10, v9

    .line 170
    .end local v2    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v3    # "data":[B
    .end local v7    # "httpAdapter":Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter;
    .end local v8    # "res":Ljpq$a;, "Ljpq$a<[B>;"
    .end local v9    # "result":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    .local v10, "result":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    :goto_1
    return-object v10

    .line 124
    .end local v10    # "result":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    .restart local v2    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v7    # "httpAdapter":Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter;
    .restart local v8    # "res":Ljpq$a;, "Ljpq$a<[B>;"
    .restart local v9    # "result":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    :catch_0
    move-exception v4

    .line 125
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 162
    .end local v2    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v7    # "httpAdapter":Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter;
    .end local v8    # "res":Ljpq$a;, "Ljpq$a<[B>;"
    :catch_1
    move-exception v4

    .line 163
    .local v4, "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    iput-boolean v11, v9, Ljpq$a;->a:Z

    .line 164
    sget-object v11, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->APP_UNZIP_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v11, v11, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    iput-object v11, v9, Ljpq$a;->b:Ljava/lang/String;

    .line 165
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Ljpq$a;->c:Ljava/lang/String;

    .line 167
    const-string/jumbo v11, "WMLLegacyAppAdapter"

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "backup"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "failed"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object p2, v12, v13

    const/4 v13, 0x3

    aput-object p3, v12, v13

    const/4 v13, 0x4

    aput-object p4, v12, v13

    const/4 v13, 0x5

    iget-object v14, v9, Ljpq$a;->b:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x6

    iget-object v14, v9, Ljpq$a;->c:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v9}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->downloadAppInfoMonitor(Ljava/lang/String;Ljpq$a;)V

    move-object v10, v9

    .line 170
    .end local v9    # "result":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    .restart local v10    # "result":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    goto :goto_1

    .line 142
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v10    # "result":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    .restart local v2    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v3    # "data":[B
    .restart local v7    # "httpAdapter":Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter;
    .restart local v8    # "res":Ljpq$a;, "Ljpq$a<[B>;"
    .restart local v9    # "result":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    :cond_2
    :try_start_3
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v3}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->byteToFile(Ljava/lang/String;[B)Ljava/io/File;

    move-result-object v5

    .line 144
    .local v5, "file":Ljava/io/File;
    if-nez v5, :cond_3

    .line 145
    const/4 v11, 0x0

    iput-boolean v11, v9, Ljpq$a;->a:Z

    .line 146
    sget-object v11, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->APP_UNZIP_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v11, v11, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    iput-object v11, v9, Ljpq$a;->b:Ljava/lang/String;

    .line 147
    sget-object v11, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->APP_UNZIP_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v11, v11, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorMsg:Ljava/lang/String;

    iput-object v11, v9, Ljpq$a;->c:Ljava/lang/String;

    .line 149
    const-string/jumbo v11, "WMLLegacyAppAdapter"

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "backup"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "failed"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object p2, v12, v13

    const/4 v13, 0x3

    aput-object p3, v12, v13

    const/4 v13, 0x4

    aput-object p4, v12, v13

    const/4 v13, 0x5

    iget-object v14, v9, Ljpq$a;->b:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x6

    iget-object v14, v9, Ljpq$a;->c:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v9}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->downloadAppInfoMonitor(Ljava/lang/String;Ljpq$a;)V

    move-object v10, v9

    .line 152
    .end local v9    # "result":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    .restart local v10    # "result":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    goto/16 :goto_1

    .line 155
    .end local v10    # "result":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    .restart local v9    # "result":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    :cond_3
    const/4 v11, 0x1

    iput-boolean v11, v9, Ljpq$a;->a:Z

    .line 156
    iput-object v5, v9, Ljpq$a;->d:Ljava/lang/Object;

    .line 158
    const-string/jumbo v11, "WMLLegacyAppAdapter"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "backup"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "success"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object p2, v12, v13

    const/4 v13, 0x3

    aput-object p3, v12, v13

    const/4 v13, 0x4

    aput-object p4, v12, v13

    const/4 v13, 0x5

    .line 159
    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v14

    aput-object v14, v12, v13

    .line 158
    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v9}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->downloadAppInfoMonitor(Ljava/lang/String;Ljpq$a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v10, v9

    .line 161
    .end local v9    # "result":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    .restart local v10    # "result":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    goto/16 :goto_1
.end method

.method public closeApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "cacheKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 305
    const-string/jumbo v0, "WMLLegacyAppAdapter"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "closeApp"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->isDebugApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->deleteApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    return-void
.end method

.method public commitVisit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "cacheKey"    # Ljava/lang/String;

    .prologue
    .line 326
    return-void
.end method

.method public deleteApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "cacheKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->getBundlePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v1, "skinDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->deleteFile(Ljava/io/File;)V

    goto :goto_0
.end method

.method public downLoadApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "cacheKey"    # Ljava/lang/String;
    .param p4, "backZipUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljpq$a",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 69
    const-string/jumbo v1, "WMLLegacyAppAdapter"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "downLoadApp"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    new-instance v0, Ljpq$a;

    invoke-direct {v0}, Ljpq$a;-><init>()V

    .line 72
    .local v0, "result":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iput-boolean v4, v0, Ljpq$a;->a:Z

    .line 74
    sget-object v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_ZCACHEKEY_AND_APP_URL:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorMsg:Ljava/lang/String;

    iput-object v1, v0, Ljpq$a;->c:Ljava/lang/String;

    .line 75
    sget-object v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_ZCACHEKEY_AND_APP_URL:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    iput-object v1, v0, Ljpq$a;->b:Ljava/lang/String;

    .line 79
    .end local v0    # "result":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->backup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppCodeInfo(Ljava/lang/String;)Ljpq$a;
    .locals 4
    .param p1, "appCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljpq$a",
            "<",
            "Lcom/taobao/windmill/bundle/container/core/AppInfoModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    const-string/jumbo v0, "WMLLegacyAppAdapter"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "getAppCodeInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->getResponse(Ljava/lang/String;)Ljpq$a;

    move-result-object v0

    return-object v0
.end method

.method public getPreViewAppCodeInfo(Ljava/lang/String;)Ljpq$a;
    .locals 4
    .param p1, "appCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljpq$a",
            "<",
            "Lcom/taobao/windmill/bundle/container/core/AppInfoModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    const-string/jumbo v0, "WMLLegacyAppAdapter"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "getPreViewAppCodeInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->getResponse(Ljava/lang/String;)Ljpq$a;

    move-result-object v0

    return-object v0
.end method

.method public setDamage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "cacheKey"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 319
    const-string/jumbo v0, "WMLLegacyAppAdapter"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "setDamage"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;->deleteApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method
