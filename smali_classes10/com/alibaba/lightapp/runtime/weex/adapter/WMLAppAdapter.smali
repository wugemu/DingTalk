.class public Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;
.super Ljava/lang/Object;
.source "WMLAppAdapter.java"

# interfaces
.implements Ljpq;


# static fields
.field public static final DEBUG_APP_ID_PREFIX:Ljava/lang/String; = "debug_app"

.field private static final ERR_NO_RESULT:Ljava/lang/String; = "ERR_NO_RESULT"

.field private static final ERR_TIME_OUT:Ljava/lang/String; = "ERR_TIME_OUT"

.field private static final TAG:Ljava/lang/String; = "WMLAppAdapter"


# instance fields
.field private mAppInfoService:Lhfb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lhfc;->a()Lhfc;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->mAppInfoService:Lhfb;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;Lcom/taobao/windmill/bundle/container/core/AppCodeModel;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;
    .param p1, "x1"    # Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->buildSuccessReponse(Lcom/taobao/windmill/bundle/container/core/AppCodeModel;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->buildErrorReponse(Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v0

    return-object v0
.end method

.method private buildEmptyReponse()Ljpq$a;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 304
    new-instance v0, Ljpq$a;

    invoke-direct {v0}, Ljpq$a;-><init>()V

    .line 305
    .local v0, "response":Ljpq$a;
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljpq$a;->a:Z

    .line 306
    const-string/jumbo v1, "ERR_NO_RESULT"

    iput-object v1, v0, Ljpq$a;->b:Ljava/lang/String;

    .line 307
    const-string/jumbo v1, "empty"

    iput-object v1, v0, Ljpq$a;->c:Ljava/lang/String;

    .line 308
    return-object v0
.end method

.method private buildErrorReponse(Ljava/lang/String;Ljava/lang/String;)Ljpq$a;
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 295
    new-instance v0, Ljpq$a;

    invoke-direct {v0}, Ljpq$a;-><init>()V

    .line 296
    .local v0, "response":Ljpq$a;
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljpq$a;->a:Z

    .line 297
    iput-object p1, v0, Ljpq$a;->b:Ljava/lang/String;

    .line 298
    iput-object p2, v0, Ljpq$a;->c:Ljava/lang/String;

    .line 299
    return-object v0
.end method

.method private buildSuccessReponse(Lcom/taobao/windmill/bundle/container/core/AppCodeModel;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;
    .locals 5
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

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 265
    new-instance v2, Ljpq$a;

    invoke-direct {v2}, Ljpq$a;-><init>()V

    .line 266
    .local v2, "response":Ljpq$a;, "Ljpq$a<Lcom/taobao/windmill/bundle/container/core/AppInfoModel;>;"
    iput-boolean v4, v2, Ljpq$a;->a:Z

    .line 268
    new-instance v0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    invoke-direct {v0}, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;-><init>()V

    .line 269
    .local v0, "data":Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    new-instance v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    invoke-direct {v1}, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;-><init>()V

    .line 270
    .local v1, "infoModel":Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;
    iput-object v1, v0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    .line 272
    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appId:Ljava/lang/String;

    .line 273
    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppLogo()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appLogo:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appName:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getVersion()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->version:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getZCacheKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->zCacheKey:Ljava/lang/String;

    .line 277
    iget-object v3, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->zCacheKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    iput-object p3, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->zCacheKey:Ljava/lang/String;

    .line 280
    :cond_0
    const-string/jumbo v3, "priArea"

    iput-object v3, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->frameTempType:Ljava/lang/String;

    .line 281
    iput-boolean v4, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->drawerEnable:Z

    .line 282
    iput-boolean v4, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->favorEnable:Z

    .line 283
    iput-boolean v4, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->footPrintEnable:Z

    .line 284
    iput-boolean v4, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->licenseEnable:Z

    .line 285
    iput-boolean v4, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->userAuthEnable:Z

    .line 286
    iput-object p2, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->zipUrl:Ljava/lang/String;

    .line 287
    iput-object p3, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->version:Ljava/lang/String;

    .line 289
    iput-object v0, v2, Ljpq$a;->d:Ljava/lang/Object;

    .line 290
    return-object v2
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
    .line 223
    .local p2, "result":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    if-eqz p2, :cond_0

    .line 224
    iget-boolean v1, p2, Ljpq$a;->a:Z

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p2, Ljpq$a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;->commitDownloadPackageStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 229
    .local v0, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "miniAppId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string/jumbo v1, "errorCode"

    iget-object v2, p2, Ljpq$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string/jumbo v1, "errorMsg"

    iget-object v2, p2, Ljpq$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string/jumbo v1, "queryAppInfoError"

    invoke-static {v1, v0}, Lhmv;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 234
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v1

    iget-object v2, p2, Ljpq$a;->b:Ljava/lang/String;

    iget-object v3, p2, Ljpq$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lgvi;->downloadWXMiniPackageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v1, p2, Ljpq$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;->commitDownloadPackageStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private getResponse(Ljava/lang/String;)Ljpq$a;
    .locals 11
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

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 160
    new-array v3, v1, [Ljpq$a;

    .line 161
    .local v3, "response":[Ljpq$a;, "[Ljpq$a<Lcom/taobao/windmill/bundle/container/core/AppInfoModel;>;"
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->buildEmptyReponse()Ljpq$a;

    move-result-object v0

    aput-object v0, v3, v10

    .line 163
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 165
    .local v5, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v4, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-direct {v4, p1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;-><init>(Ljava/lang/String;)V

    .line 167
    .local v4, "appCodeModel":Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->mAppInfoService:Lhfb;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$2;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$2;-><init>(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;Ljava/lang/String;[Ljpq$a;Lcom/taobao/windmill/bundle/container/core/AppCodeModel;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v8, v9, v0}, Lhfb;->a(Ljava/lang/String;Lhfb$a;)V

    .line 207
    const-wide/16 v0, 0x1e

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    .line 208
    .local v7, "finished":Z
    if-nez v7, :cond_0

    .line 209
    const/4 v0, 0x0

    const-string/jumbo v1, "ERR_TIME_OUT"

    const-string/jumbo v2, "time out"

    invoke-direct {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->buildErrorReponse(Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v1

    aput-object v1, v3, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v7    # "finished":Z
    :cond_0
    :goto_0
    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppName()Ljava/lang/String;

    move-result-object v1

    aget-object v2, v3, v10

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->queryAppInfoMonitor(Ljava/lang/String;Ljava/lang/String;Ljpq$a;)V

    .line 218
    aget-object v0, v3, v10

    return-object v0

    .line 211
    :catch_0
    move-exception v6

    .line 212
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 213
    const-string/jumbo v0, "ERR_NO_RESULT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "interrupted "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-direct {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->buildErrorReponse(Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v0

    aput-object v0, v3, v10

    goto :goto_0
.end method

.method private isDebugApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 155
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
    .line 243
    .local p3, "response":Ljpq$a;, "Ljpq$a<Lcom/taobao/windmill/bundle/container/core/AppInfoModel;>;"
    if-eqz p3, :cond_0

    .line 244
    iget-boolean v1, p3, Ljpq$a;->a:Z

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p3, Ljpq$a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;->commitQueryPackageStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v0, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "miniAppId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string/jumbo v1, "appName"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string/jumbo v1, "errorCode"

    iget-object v2, p3, Ljpq$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string/jumbo v1, "errorMsg"

    iget-object v2, p3, Ljpq$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string/jumbo v1, "queryAppInfoError"

    invoke-static {v1, v0}, Lhmv;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 255
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v1

    iget-object v2, p3, Ljpq$a;->b:Ljava/lang/String;

    iget-object v3, p3, Ljpq$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1, p2}, Lgvi;->queryWXMiniPackageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v1, p3, Ljpq$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;->commitQueryPackageStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public closeApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "cacheKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    const-string/jumbo v0, "WMLAppAdapter"

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

    .line 129
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->isDebugApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->mAppInfoService:Lhfb;

    invoke-interface {v0, p1}, Lhfb;->b(Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method public commitVisit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "cacheKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    const-string/jumbo v0, "WMLAppAdapter"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "commitVisit"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public downLoadApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;
    .locals 9
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

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    const-string/jumbo v5, "WMLAppAdapter"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "downLoadApp"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->buildEmptyReponse()Ljpq$a;

    move-result-object v4

    .line 58
    .local v4, "result":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    invoke-direct {p0, p2}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->isDebugApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    const/4 v5, 0x0

    iput-boolean v5, v4, Ljpq$a;->a:Z

    .line 61
    sget-object v5, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_ZCACHEKEY_AND_APP_URL:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorMsg:Ljava/lang/String;

    iput-object v5, v4, Ljpq$a;->c:Ljava/lang/String;

    .line 62
    sget-object v5, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_ZCACHEKEY_AND_APP_URL:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    iput-object v5, v4, Ljpq$a;->b:Ljava/lang/String;

    .line 119
    :goto_0
    return-object v4

    .line 66
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 67
    .local v0, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lhfm;->a()Lhfm;

    move-result-object v5

    new-instance v6, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$1;

    invoke-direct {v6, p0, v4, v0}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;Ljpq$a;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v5, p2, p4, v6}, Lhfm;->a(Ljava/lang/String;Ljava/lang/String;Lhfl;)V

    .line 90
    const-wide/16 v6, 0xa

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_1
    const-string/jumbo v5, "WMLAppAdapter"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "downLoadApp"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "download debug app"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, v4, Ljpq$a;->d:Ljava/lang/Object;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 93
    const/4 v5, 0x0

    iput-boolean v5, v4, Ljpq$a;->a:Z

    .line 94
    sget-object v5, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->ZCACHE_TIMEOUT_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    iput-object v5, v4, Ljpq$a;->b:Ljava/lang/String;

    .line 95
    sget-object v5, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->ZCACHE_TIMEOUT_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorMsg:Ljava/lang/String;

    iput-object v5, v4, Ljpq$a;->c:Ljava/lang/String;

    goto :goto_1

    .line 102
    .end local v0    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->mAppInfoService:Lhfb;

    invoke-interface {v5, p2}, Lhfb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "path":Ljava/lang/String;
    const-string/jumbo v5, "WMLAppAdapter"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "downLoadApp"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "installPath"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    if-eqz v3, :cond_2

    .line 106
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v2, "file":Ljava/io/File;
    const/4 v5, 0x1

    iput-boolean v5, v4, Ljpq$a;->a:Z

    .line 108
    iput-object v2, v4, Ljpq$a;->d:Ljava/lang/Object;

    .line 110
    invoke-direct {p0, p2, v4}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->downloadAppInfoMonitor(Ljava/lang/String;Ljpq$a;)V

    goto :goto_0

    .line 113
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->mAppInfoService:Lhfb;

    invoke-interface {v5, p2}, Lhfb;->b(Ljava/lang/String;)V

    .line 114
    const/4 v5, 0x0

    iput-boolean v5, v4, Ljpq$a;->a:Z

    .line 115
    sget-object v5, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->APP_UNZIP_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    iput-object v5, v4, Ljpq$a;->b:Ljava/lang/String;

    .line 116
    sget-object v5, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->APP_UNZIP_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorMsg:Ljava/lang/String;

    iput-object v5, v4, Ljpq$a;->c:Ljava/lang/String;

    .line 118
    invoke-direct {p0, p2, v4}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->downloadAppInfoMonitor(Ljava/lang/String;Ljpq$a;)V

    goto/16 :goto_0
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
    .line 40
    const-string/jumbo v0, "WMLAppAdapter"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "getAppCodeInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->getResponse(Ljava/lang/String;)Ljpq$a;

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
    .line 47
    const-string/jumbo v0, "WMLAppAdapter"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "getPreViewAppCodeInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->getResponse(Ljava/lang/String;)Ljpq$a;

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
    .line 143
    const-string/jumbo v0, "WMLAppAdapter"

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

    .line 144
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->mAppInfoService:Lhfb;

    invoke-interface {v0, p1}, Lhfb;->b(Ljava/lang/String;)V

    .line 145
    return-void
.end method
