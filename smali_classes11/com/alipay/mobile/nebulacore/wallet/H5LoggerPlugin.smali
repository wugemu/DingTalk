.class public Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;
.super Lipd;
.source "H5LoggerPlugin.java"


# static fields
.field private static final BIZ_REPORT:Ljava/lang/String; = "mtBizReport"

.field public static final DSL_ERROR_LOG:Ljava/lang/String; = "dslErrorLog"

.field public static final KEEP_ALIVE_PAGE_PERFORMANCE:Ljava/lang/String; = "keepAlivePagePerformance"

.field private static final REMOTE_LOG:Ljava/lang/String; = "remoteLog"

.field private static final REMOTE_LOGGING:Ljava/lang/String; = "remoteLogging"

.field private static final REMOTE_LOG_LIMIT:I = 0x3e8

.field public static final REPORT_DATA:Ljava/lang/String; = "reportData"

.field private static final TAG:Ljava/lang/String; = "H5LoggerPlugin"

.field private static final pageMonitor:Ljava/lang/String; = "pageMonitor"

.field private static remoteLogCount:I


# instance fields
.field private abTestInfo:Ljava/lang/String;

.field private availablePageData:Linv;

.field private bizContext:Ljava/lang/String;

.field private bizScenario:Ljava/lang/String;

.field private blankErrorCode:I

.field private bugmeViewId:Ljava/lang/String;

.field private chInfo:Ljava/lang/String;

.field private entityId:Ljava/lang/String;

.field private errorType:Ljava/lang/String;

.field private h5LogProvider:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

.field private h5Page:Liop;

.field private isMixedContent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isOfflineApp:Z

.field private isSPM:Z

.field private jsError:Ljava/lang/String;

.field private jsErrorNum:I

.field private logH5Performance:Z

.field private mExtraJSReport:Ljava/util/HashMap;
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

.field private mIsH5Activity:Z

.field private mPerformanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private pageAbnormal:Lcom/alibaba/fastjson/JSONArray;

.field private pageData:Lior;

.field private pageId:Ljava/lang/String;

.field private reportAbnormal:Z

.field private reportPerformance:Z

.field private spmBizType:Ljava/lang/String;

.field private spmDetail:Ljava/util/Map;
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

.field private spmId:Ljava/lang/String;

.field private spmUrl:Ljava/lang/String;

.field private webViewInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->remoteLogCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lipd;-><init>()V

    .line 75
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->mIsH5Activity:Z

    .line 91
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logH5Performance:Z

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->isMixedContent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->isOfflineApp:Z

    .line 101
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->isSPM:Z

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmDetail:Ljava/util/Map;

    .line 111
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->jsError:Ljava/lang/String;

    .line 113
    iput v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->jsErrorNum:I

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->remoteLog(Lcom/alipay/mobile/h5container/api/H5Event;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;)Liop;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->getInstallStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addJsApiCalledLog()Ljava/lang/String;
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1289
    const-string/jumbo v8, ""

    .line 1290
    .local v8, "jsApiStr":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1291
    .local v7, "jsApiNum":I
    const-string/jumbo v6, ""

    .line 1292
    .local v6, "jsApiList":Ljava/lang/String;
    iget-object v12, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v12}, Lior;->e()Ljava/util/Map;

    move-result-object v10

    .line 1293
    .local v10, "jsapiInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Liol;>;"
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->getPerformanceJSApiBlackList()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 1294
    .local v0, "blackJSApiList":Lcom/alibaba/fastjson/JSONArray;
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 1296
    .local v5, "filterJSApiMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1297
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Liol;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Liol;

    .line 50341
    .local v9, "jsCallData":Liol;
    iget-object v11, v9, Liol;->a:Ljava/lang/String;

    .line 1299
    .local v11, "jsapiName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1300
    invoke-interface {v5, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1301
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1302
    .local v1, "count":I
    add-int/lit8 v12, v1, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1304
    .end local v1    # "count":I
    :cond_0
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1307
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, "|"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1308
    add-int/lit8 v7, v7, 0x1

    .line 1310
    goto :goto_0

    .line 1311
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Liol;>;"
    .end local v9    # "jsCallData":Liol;
    .end local v11    # "jsapiName":Ljava/lang/String;
    :cond_2
    if-lez v7, :cond_3

    .line 1312
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "^jsApiNum="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "^jsApiNames="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1315
    :cond_3
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 1316
    const-string/jumbo v4, ""

    .line 1317
    .local v4, "filterJSApiInfo":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1318
    .local v3, "filterEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1319
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, "("

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1321
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, "|"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, "("

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1323
    goto :goto_1

    .line 1324
    .end local v3    # "filterEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "^filterJsapiLogs="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1326
    .end local v4    # "filterJSApiInfo":Ljava/lang/String;
    :cond_6
    return-object v8
.end method

.method private addJsApiCalledLog(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    .locals 14
    .param p1, "h5LogData"    # Lcom/alipay/mobile/nebula/log/H5LogData;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1330
    const/4 v8, 0x0

    .line 1331
    .local v8, "jsApiNum":I
    const-string/jumbo v6, ""

    .line 1332
    .local v6, "jsApiList":Ljava/lang/String;
    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v11}, Lior;->e()Ljava/util/Map;

    move-result-object v10

    .line 1333
    .local v10, "jsapiInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Liol;>;"
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->getPerformanceJSApiBlackList()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 1334
    .local v0, "blackJSApiList":Lcom/alibaba/fastjson/JSONArray;
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 1336
    .local v5, "filterJSApiMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1337
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Liol;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Liol;

    .line 50342
    .local v9, "jsCallData":Liol;
    iget-object v7, v9, Liol;->a:Ljava/lang/String;

    .line 1340
    .local v7, "jsApiName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1341
    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1342
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1343
    .local v1, "count":I
    add-int/lit8 v11, v1, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1345
    .end local v1    # "count":I
    :cond_0
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1348
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "|"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1349
    add-int/lit8 v8, v8, 0x1

    .line 1351
    goto :goto_0

    .line 1353
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Liol;>;"
    .end local v7    # "jsApiName":Ljava/lang/String;
    .end local v9    # "jsCallData":Liol;
    :cond_2
    const-string/jumbo v4, ""

    .line 1354
    .local v4, "filterJSApiInfo":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_4

    .line 1355
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1356
    .local v3, "filterEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1357
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1359
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "|"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1361
    goto :goto_1

    .line 1364
    .end local v3    # "filterEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    if-lez v8, :cond_5

    .line 1365
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v11

    const-string/jumbo v12, "jsApiNum"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v11

    const-string/jumbo v12, "jsApiNames"

    invoke-virtual {v11, v12, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v11

    const-string/jumbo v12, "filterJsapiLogs"

    .line 1366
    invoke-virtual {v11, v12, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1368
    :cond_5
    return-void
.end method

.method private clearSpmDetail()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 994
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmDetail:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmDetail:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 996
    monitor-exit v2

    .line 1000
    :goto_0
    return-void

    .line 996
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 997
    :catch_0
    move-exception v0

    .line 998
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5LoggerPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private doLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 18
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "seedID"    # Ljava/lang/String;
    .param p3, "ucId"    # Ljava/lang/String;
    .param p4, "param1"    # Ljava/lang/String;
    .param p5, "param2"    # Ljava/lang/String;
    .param p6, "param3"    # Ljava/lang/String;
    .param p7, "param4"    # Ljava/lang/String;
    .param p8, "bizType"    # Ljava/lang/String;
    .param p9, "logLevel"    # I
    .param p10, "actionId"    # Ljava/lang/String;

    .prologue
    .line 1503
    const-string/jumbo v2, "monitor"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "behavior"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "performance"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "monitorWithLocation"

    .line 1504
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "error"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "behaviorAuto"

    .line 1505
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "135"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1506
    :cond_0
    const-string/jumbo v2, "monitorWithLocation"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1508
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5LastKnowLocationProvider;

    .line 1509
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/alipay/mobile/nebula/provider/H5LastKnowLocationProvider;

    .line 1510
    .local v17, "provider":Lcom/alipay/mobile/nebula/provider/H5LastKnowLocationProvider;
    if-eqz v17, :cond_1

    .line 1511
    invoke-interface/range {v17 .. v17}, Lcom/alipay/mobile/nebula/provider/H5LastKnowLocationProvider;->getLocation()Landroid/location/Location;

    move-result-object v16

    .line 1512
    .local v16, "location":Landroid/location/Location;
    if-eqz v16, :cond_1

    .line 1513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "^longitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1514
    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "^latitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    .line 1519
    .end local v16    # "location":Landroid/location/Location;
    .end local v17    # "provider":Lcom/alipay/mobile/nebula/provider/H5LastKnowLocationProvider;
    :cond_1
    const-string/jumbo v2, "135"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1520
    const-string/jumbo v2, "135"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->abTestInfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->entityId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageId:Ljava/lang/String;

    .line 1522
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->getUniteParam4()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v13, p9

    move-object/from16 v14, p10

    .line 1520
    invoke-static/range {v2 .. v14}, Lcom/alipay/mobile/nebula/log/H5Logger;->h5BehaviorLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1558
    :cond_2
    :goto_0
    return-void

    .line 1524
    :cond_3
    const-string/jumbo v2, "behavior"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "monitorWithLocation"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "monitor"

    .line 1525
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1526
    :cond_4
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1527
    const-string/jumbo p8, "H5behavior"

    .line 1529
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->abTestInfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->entityId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageId:Ljava/lang/String;

    .line 1532
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->getUniteParam4()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v2, p8

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v13, p9

    move-object/from16 v14, p10

    .line 1529
    invoke-static/range {v2 .. v14}, Lcom/alipay/mobile/nebula/log/H5Logger;->h5BehaviorLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 1535
    :cond_6
    const-string/jumbo v9, "H-VM"

    .line 1536
    .local v9, "logHeader":Ljava/lang/String;
    const-string/jumbo v2, "error"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1537
    const-string/jumbo v9, "H-EM"

    .line 1539
    :cond_7
    const-string/jumbo v2, "behaviorAuto"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1540
    const-string/jumbo v9, "HD-VM"

    .line 1544
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->getUniteParam4()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v10, p1

    .line 1543
    invoke-static/range {v2 .. v10}, Lcom/alipay/mobile/nebula/log/H5Logger;->performanceH5Exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    const-string/jumbo v2, "error"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    if-eqz v2, :cond_2

    .line 1548
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1549
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1550
    .local v15, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v2}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAliDomains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1551
    const-string/jumbo v2, "H5LoggerPlugin"

    const-string/jumbo v3, "is aliDomain upload now "

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1553
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->upload()V

    goto/16 :goto_0
.end method

.method private static enableEndSpmClearSpmDetail()Z
    .locals 2

    .prologue
    .line 830
    const-string/jumbo v1, "h5_endSpmClearSpmDetail"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static enableSpmTrackPage()Z
    .locals 2

    .prologue
    .line 835
    const-string/jumbo v1, "h5_enableSpmTrackPage"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private endSpm(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 8
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 755
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v6

    .line 756
    .local v6, "activity":Landroid/app/Activity;
    if-eqz v6, :cond_1

    instance-of v0, v6, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-nez v0, :cond_1

    .line 757
    invoke-static {}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->enableSpmTrackPage()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, v6, Lipi;

    if-eqz v0, :cond_1

    .line 758
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lipi;

    check-cast v0, Lipi;

    invoke-interface {v0}, Lipi;->isTrackPage()Z

    move-result v7

    .line 759
    .local v7, "trackPage":Z
    if-nez v7, :cond_1

    .line 760
    const-string/jumbo v0, "H5LoggerPlugin"

    const-string/jumbo v1, "endSpm isTrackPage false ,return"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    .end local v7    # "trackPage":Z
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 772
    const-string/jumbo v0, "yes"

    const-string/jumbo v1, "h5_filterEmptySpmId"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 773
    const-string/jumbo v0, "H5LoggerPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "return empty spmId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 776
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 11474
    iget-object v0, v0, Lior;->w:Ljava/lang/String;

    .line 776
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmId:Ljava/lang/String;

    .line 780
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->chInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 781
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmDetail:Ljava/util/Map;

    const-string/jumbo v1, "chInfo"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->chInfo:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmDetail:Ljava/util/Map;

    const-string/jumbo v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 789
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmDetail:Ljava/util/Map;

    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 12474
    iget-object v2, v2, Lior;->w:Ljava/lang/String;

    .line 789
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmDetail:Ljava/util/Map;

    const-string/jumbo v1, "appId"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 792
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmDetail:Ljava/util/Map;

    const-string/jumbo v1, "appId"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 12870
    iget-object v2, v2, Lior;->ak:Ljava/lang/String;

    .line 792
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmDetail:Ljava/util/Map;

    const-string/jumbo v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 796
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmDetail:Ljava/util/Map;

    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 12888
    iget-object v2, v2, Lior;->am:Ljava/lang/String;

    .line 796
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmDetail:Ljava/util/Map;

    const-string/jumbo v1, "h5pageurl"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 13474
    iget-object v2, v2, Lior;->w:Ljava/lang/String;

    .line 799
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 13951
    iget-object v0, v0, Lior;->as:Ljava/lang/String;

    .line 801
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 802
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmDetail:Ljava/util/Map;

    const-string/jumbo v1, "log_release_type"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 14951
    iget-object v2, v2, Lior;->as:Ljava/lang/String;

    .line 802
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    :cond_8
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 806
    .local v5, "tempSpmDetail":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmDetail:Ljava/util/Map;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 807
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5LogProvider:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    if-eqz v0, :cond_0

    .line 808
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->isSPM:Z

    if-eqz v0, :cond_9

    .line 809
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5LogProvider:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->abTestInfo:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 15933
    iget-object v3, v3, Lior;->aq:Ljava/lang/String;

    .line 809
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmBizType:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->logAutoBehavorPageEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 812
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5LogProvider:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->abTestInfo:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 16933
    iget-object v3, v3, Lior;->aq:Ljava/lang/String;

    .line 812
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmBizType:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->logAutoBehavorPageEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method private executeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "seedID"    # Ljava/lang/String;
    .param p3, "ucId"    # Ljava/lang/String;
    .param p4, "param1"    # Ljava/lang/String;
    .param p5, "param2"    # Ljava/lang/String;
    .param p6, "param3"    # Ljava/lang/String;
    .param p7, "param4"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1497
    const-string/jumbo v8, ""

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->doLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1498
    return-void
.end method

.method private getInstallStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1766
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1767
    :cond_0
    const-string/jumbo v1, "0"

    .line 1774
    :goto_0
    return-object v1

    .line 1769
    :cond_1
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 1770
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 1771
    .local v0, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v0, :cond_3

    .line 1772
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "1"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "0"

    goto :goto_0

    .line 1774
    :cond_3
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method private getUniteParam4()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->bizScenario:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->isOfflineApp:Z

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5Logger;->getUniteParam4(Lior;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleMonitorPerformance(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 9
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 557
    const-string/jumbo v5, "H5LoggerPlugins"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "MONITOR_PERFORMANCE : praram = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    if-eqz p1, :cond_2

    .line 559
    const-string/jumbo v5, "data"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 560
    .local v4, "pagePerformance":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 561
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 562
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 563
    .local v3, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "name"

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v5, "mixedContent"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 565
    iput-boolean v8, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->reportAbnormal:Z

    .line 566
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->isMixedContent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 568
    :cond_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->bugmeViewId:Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v2, v5, v6}, Lcom/alipay/mobile/nebula/data/H5Trace;->event(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 569
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->mPerformanceMap:Ljava/util/HashMap;

    const-string/jumbo v6, "value"

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string/jumbo v5, "availableTime"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    if-eqz v5, :cond_1

    .line 572
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 573
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "value"

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    sget-object v6, Liov$a;->G:Ljava/lang/String;

    invoke-interface {v5, v6, v1}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 576
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    invoke-direct {p0, v3, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logJSError(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 580
    .end local v0    # "index":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "pagePerformance":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    iput-boolean v8, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->reportPerformance:Z

    .line 581
    return-void
.end method

.method private handlePagePause(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 624
    const-string/jumbo v0, "H5LoggerPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "H5_PAGE_PAUSE logPageEndWithSpmId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " spmBizType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmBizType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " chInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->chInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 9933
    iget-object v2, v2, Lior;->aq:Ljava/lang/String;

    .line 625
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 624
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->endSpm(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 627
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logH5Performance:Z

    if-eqz v0, :cond_2

    .line 628
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    .line 629
    invoke-interface {v0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "isPrerender"

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    const-string/jumbo v0, "H5LoggerPlugin"

    const-string/jumbo v1, "preRender page return"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    const-string/jumbo v0, "H5LoggerPlugin"

    const-string/jumbo v1, "H5_PAGE_PAUSE log performance"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logPagePerformance(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 637
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logPageAbnormal()V

    .line 638
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logH5Performance:Z

    .line 641
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->mIsH5Activity:Z

    if-eqz v0, :cond_0

    .line 642
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 643
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->upload()V

    goto :goto_0
.end method

.method private handlePageResume(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 715
    const-string/jumbo v0, "H5LoggerPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "H5_PAGE_RESUME logPageResumeWithSpmId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " spmBizType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmBizType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " chInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->chInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 10933
    iget-object v2, v2, Lior;->aq:Ljava/lang/String;

    .line 716
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 715
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string/jumbo v0, "yes"

    const-string/jumbo v1, "h5_resumeResetPageToken"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lior;->i(Ljava/lang/String;)V

    .line 720
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->startSpm(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 721
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmDetail:Ljava/util/Map;

    const-string/jumbo v1, "logStartFrom"

    const-string/jumbo v2, "resume"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    return-void
.end method

.method private handlePageStarted(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 5
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 725
    const-string/jumbo v3, "url"

    invoke-static {p2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "pageUrl":Ljava/lang/String;
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logH5Performance:Z

    .line 728
    const-string/jumbo v3, "about:blank"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 750
    :goto_0
    return v1

    .line 731
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v1, :cond_1

    .line 732
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 733
    const-string/jumbo v1, "viewID"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/log/H5Logger;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->enableEndSpmClearSpmDetail()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 738
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->clearSpmDetail()V

    .line 741
    :cond_2
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->reportPerformance:Z

    if-eqz v1, :cond_3

    .line 742
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->reportPerformance:Z

    .line 743
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logPagePerformance(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 746
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v1, v4}, Lior;->b(Ljava/lang/String;)V

    .line 747
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logPageAbnormal()V

    .line 749
    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageAbnormal:Lcom/alibaba/fastjson/JSONArray;

    move v1, v2

    .line 750
    goto :goto_0
.end method

.method private handleRemoteLog(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 448
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;Lcom/alipay/mobile/h5container/api/H5Event;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 458
    if-eqz p2, :cond_0

    .line 459
    invoke-interface {p2}, Liny;->sendSuccess()V

    .line 461
    :cond_0
    return-void
.end method

.method private isSpdy(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1371
    const/4 v5, 0x0

    .line 1372
    .local v5, "pattern":Ljava/util/regex/Pattern;
    const/4 v7, 0x0

    .line 1374
    .local v7, "spdySwitch":Z
    const/4 v6, 0x0

    .line 1375
    .local v6, "spdyBlackList":Lcom/alibaba/fastjson/JSONArray;
    const-string/jumbo v9, "NO"

    .line 1376
    .local v9, "useSpdy":Ljava/lang/String;
    const-string/jumbo v10, "h5_androidSpdy"

    invoke-static {v10}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 1377
    .local v3, "jsonObjNetWork":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v3, :cond_0

    .line 1378
    const-string/jumbo v10, "YES"

    const-string/jumbo v11, "useSpdy"

    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1380
    :cond_0
    const-string/jumbo v10, "H5LoggerPlugin"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "online config spdySwitch "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    if-eqz v7, :cond_2

    .line 1382
    const-string/jumbo v10, "whiteList"

    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1383
    .local v8, "spdyWhiteList":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1384
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 1386
    :cond_1
    const-string/jumbo v10, "blackList"

    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lgxk;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    .line 1387
    const-string/jumbo v10, "H5LoggerPlugin"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "online config  whiteList "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", blackList "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1388
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1387
    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    .end local v8    # "spdyWhiteList":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 1391
    .local v1, "host":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 1392
    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1393
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1394
    const-string/jumbo v9, "YES"

    .line 1397
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_3
    if-eqz v6, :cond_4

    .line 1398
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 1399
    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1400
    .local v0, "blackItem":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1401
    const-string/jumbo v9, "NO"

    .line 1406
    .end local v0    # "blackItem":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_4
    return-object v9

    .line 1398
    .restart local v0    # "blackItem":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private logDownloadApkResult(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 392
    const-string/jumbo v2, "status"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "status":Ljava/lang/String;
    const-string/jumbo v2, "H5_DOWNLOAD_APK_RESULT"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 394
    .local v0, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    const-string/jumbo v2, "success"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string/jumbo v3, "url"

    const-string/jumbo v4, "url"

    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string/jumbo v3, "size"

    const-string/jumbo v4, "apkSize"

    .line 396
    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 400
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    .line 401
    invoke-interface {v3}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 402
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 400
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 403
    return-void

    .line 397
    :cond_1
    const-string/jumbo v2, "failed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string/jumbo v3, "errorMsg"

    const-string/jumbo v4, "errorMsg"

    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    goto :goto_0
.end method

.method private logDslError()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 362
    const-string/jumbo v0, "H5LoggerPlugin"

    const-string/jumbo v1, "DSL_ERROR_LOG"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->reportAbnormal:Z

    .line 364
    const-string/jumbo v0, "errorRender"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->errorType:Ljava/lang/String;

    .line 365
    const v0, -0x927c2

    iput v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->blankErrorCode:I

    .line 366
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logPageAbnormal()V

    .line 367
    return-void
.end method

.method private logEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "seedId"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 820
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    if-nez v1, :cond_1

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->webViewInfo:Ljava/lang/String;

    .line 824
    .local v0, "param3":Ljava/lang/String;
    :goto_1
    invoke-static {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 825
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v2}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 17879
    iget-object v2, v2, Lior;->al:Ljava/lang/String;

    .line 825
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 826
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 824
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto :goto_0

    .line 823
    .end local v0    # "param3":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->webViewInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private logFavoritesResult(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 491
    sget-object v0, Liov$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string/jumbo v1, "description"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string/jumbo v1, "appId"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 7870
    iget-object v2, v2, Lior;->ak:Ljava/lang/String;

    .line 494
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string/jumbo v1, "bs"

    const-string/jumbo v2, "bizScenario"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 496
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 491
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 497
    return-void
.end method

.method private logFileDownload(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 381
    const-string/jumbo v3, "fileName"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "fileName":Ljava/lang/String;
    const-string/jumbo v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const-string/jumbo v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v3, v4

    .line 383
    .local v2, "type":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "url"

    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&contentLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "contentLength"

    .line 384
    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "status"

    .line 385
    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "param1":Ljava/lang/String;
    const-string/jumbo v3, "H5_FILE_DOWNLOAD"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 387
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v4}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 388
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 386
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 389
    return-void

    .line 382
    .end local v1    # "param1":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method private logGetLocationResult(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 472
    const-string/jumbo v1, "H5_GETLOCATION_RESULT"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 473
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "result"

    const-string/jumbo v3, "result"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 474
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "locateDuration"

    const-string/jumbo v3, "locateDuration"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "currentTimestamp"

    .line 475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 476
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "reGeocodeDuration"

    const-string/jumbo v3, "reGeocodeDuration"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 477
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "locateStart"

    const-string/jumbo v3, "locateStart"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "locateEnd"

    const-string/jumbo v3, "locateEnd"

    .line 478
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "reGeocodeStart"

    const-string/jumbo v3, "reGeocodeStart"

    .line 479
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "reGeocodeEnd"

    const-string/jumbo v3, "reGeocodeEnd"

    .line 480
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 481
    .local v0, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    const-string/jumbo v1, "error"

    const-string/jumbo v2, "result"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "errorMessage"

    const-string/jumbo v3, "errorMessage"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "errorCode"

    const-string/jumbo v3, "errorCode"

    .line 483
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "errorType"

    const-string/jumbo v3, "errorType"

    .line 484
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 485
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 487
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 488
    return-void
.end method

.method private logJSAPILogin(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 370
    const-string/jumbo v1, "loginResult"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 371
    .local v0, "loginResult":Z
    const-string/jumbo v1, "H5_PAGE_JSAPI_LOGIN"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 372
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "loginResult"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 373
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v2}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 374
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "url"

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v3}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "viewId"

    const-string/jumbo v3, "viewID"

    .line 375
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "refViewID"

    const-string/jumbo v3, "refViewID"

    .line 376
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 377
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 371
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 378
    return-void
.end method

.method private logJSError(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 13
    .param p1, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 585
    :try_start_0
    const-string/jumbo v9, "jsErrors"

    invoke-static {p2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 586
    const-string/jumbo v9, "filename"

    invoke-static {p1, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 587
    .local v3, "fileName":Ljava/lang/String;
    const-string/jumbo v9, "value"

    invoke-static {p1, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 588
    .local v8, "value":Ljava/lang/String;
    const-string/jumbo v9, "lineno"

    invoke-static {p1, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v5

    .line 589
    .local v5, "lineno":I
    const-string/jumbo v9, "colno"

    invoke-static {p1, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 590
    .local v0, "colno":I
    const-string/jumbo v9, "date"

    invoke-virtual {p1, v9}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, "date"

    .line 591
    invoke-virtual {p1, v9}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "date":Ljava/lang/String;
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "fileName="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "^line="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "^desc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "^date="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "^colno="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 595
    .local v4, "jsErrorInfo":Ljava/lang/String;
    iget v9, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->jsErrorNum:I

    const/16 v10, 0xa

    if-ge v9, v10, :cond_0

    .line 596
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->jsError:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 597
    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->jsError:Ljava/lang/String;

    .line 602
    :cond_0
    :goto_1
    iget v9, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->jsErrorNum:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->jsErrorNum:I

    .line 603
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    const-string/jumbo v10, "jsErrors"

    iget v11, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->jsErrorNum:I

    invoke-virtual {v9, v10, v11}, Lior;->a(Ljava/lang/String;I)V

    .line 604
    const-string/jumbo v9, "H5LoggerPlugin"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "jsErrorInfo : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    if-eqz v9, :cond_1

    .line 606
    const-string/jumbo v9, "H5_AL_JSERROR"

    invoke-static {v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    .line 607
    invoke-virtual {v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 8474
    iget-object v10, v10, Lior;->w:Ljava/lang/String;

    .line 607
    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    .line 608
    invoke-virtual {v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    .line 609
    invoke-virtual {v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v9, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    .line 606
    invoke-static {v9}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 621
    .end local v0    # "colno":I
    .end local v1    # "date":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "jsErrorInfo":Ljava/lang/String;
    .end local v5    # "lineno":I
    .end local v8    # "value":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 591
    .restart local v0    # "colno":I
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v5    # "lineno":I
    .restart local v8    # "value":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, ""

    goto/16 :goto_0

    .line 599
    .restart local v1    # "date":Ljava/lang/String;
    .restart local v4    # "jsErrorInfo":Ljava/lang/String;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->jsError:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->jsError:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 618
    .end local v0    # "colno":I
    .end local v1    # "date":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "jsErrorInfo":Ljava/lang/String;
    .end local v5    # "lineno":I
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 619
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "H5LoggerPlugin"

    invoke-static {v9, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 612
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    const-string/jumbo v9, "navigationStart"

    invoke-static {p2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 613
    const-string/jumbo v9, "value"

    invoke-virtual {p1, v9}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/nebula/log/H5Logger;->getLongValue(Ljava/lang/String;)J

    move-result-wide v6

    .line 614
    .local v6, "navigationStart":J
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    if-eqz v9, :cond_1

    .line 615
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 9189
    const-string/jumbo v10, "H5PageData"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "setNavigationStart : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9190
    iput-wide v6, v9, Lior;->aE:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private logNetworkPerformanceError(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 23
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 406
    const-string/jumbo v20, "targetUrl"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 407
    .local v19, "targetUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v20

    const-string/jumbo v21, "appType"

    const/16 v22, 0x2

    invoke-static/range {v20 .. v22}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    const-string/jumbo v4, "online"

    .line 409
    .local v4, "appType":Ljava/lang/String;
    :goto_0
    const-string/jumbo v20, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v13

    .line 410
    .local v13, "status":I
    const-string/jumbo v20, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 411
    .local v12, "mimeType":Ljava/lang/String;
    const-string/jumbo v20, "method"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 412
    .local v11, "method":Ljava/lang/String;
    const-string/jumbo v20, "start"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getLong(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)J

    move-result-wide v16

    .line 413
    .local v16, "start":J
    const-string/jumbo v20, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getLong(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    .line 414
    .local v6, "duration":J
    const-string/jumbo v20, "size"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getLong(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)J

    move-result-wide v14

    .line 415
    .local v14, "size":J
    const-string/jumbo v20, "isMainDoc"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 417
    .local v9, "isMainDoc":Ljava/lang/String;
    const-string/jumbo v20, "YES"

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 418
    .local v10, "mainDoc":Z
    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    move-object/from16 v20, v0

    .line 5456
    move-object/from16 v0, v20

    iget v0, v0, Lior;->u:I

    move/from16 v18, v0

    .line 420
    .local v18, "statusCode":I
    :goto_1
    const-string/jumbo v8, ""

    .line 422
    .local v8, "errorType":Ljava/lang/String;
    const/16 v20, 0x190

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 423
    const-string/jumbo v8, "errorResponse"

    .line 425
    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_1

    const-wide/32 v20, 0xea60

    cmp-long v20, v6, v20

    if-lez v20, :cond_1

    .line 426
    const-string/jumbo v8, "longRender"

    .line 429
    :cond_1
    const-string/jumbo v20, "H5_AL_NETWORK_PERFORMANCE_ERROR"

    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    .line 430
    invoke-virtual/range {v20 .. v20}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "performance"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    .line 431
    invoke-virtual/range {v20 .. v20}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "appId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    move-object/from16 v22, v0

    .line 5870
    move-object/from16 v0, v22

    iget-object v0, v0, Lior;->ak:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 431
    invoke-virtual/range {v20 .. v22}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    move-object/from16 v22, v0

    .line 5888
    move-object/from16 v0, v22

    iget-object v0, v0, Lior;->am:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 431
    invoke-virtual/range {v20 .. v22}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "publicId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    move-object/from16 v22, v0

    .line 6879
    move-object/from16 v0, v22

    iget-object v0, v0, Lior;->al:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 432
    invoke-virtual/range {v20 .. v22}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "url"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    .line 433
    invoke-virtual/range {v20 .. v20}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "targetUrl"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "method"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "psd"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "status"

    .line 434
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "type"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "size"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "start"

    .line 435
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "duration"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "errorType"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "errorCode"

    .line 436
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "isMainDoc"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    .line 437
    invoke-virtual/range {v20 .. v20}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "errorType"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "errorCode"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "isMainDoc"

    .line 438
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 440
    .local v5, "errorLogData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-static {v5}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 442
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 443
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->upload()V

    .line 445
    :cond_2
    return-void

    .line 407
    .end local v4    # "appType":Ljava/lang/String;
    .end local v5    # "errorLogData":Lcom/alipay/mobile/nebula/log/H5LogData;
    .end local v6    # "duration":J
    .end local v8    # "errorType":Ljava/lang/String;
    .end local v9    # "isMainDoc":Ljava/lang/String;
    .end local v10    # "mainDoc":Z
    .end local v11    # "method":Ljava/lang/String;
    .end local v12    # "mimeType":Ljava/lang/String;
    .end local v13    # "status":I
    .end local v14    # "size":J
    .end local v16    # "start":J
    .end local v18    # "statusCode":I
    :cond_3
    const-string/jumbo v4, "local"

    goto/16 :goto_0

    .restart local v4    # "appType":Ljava/lang/String;
    .restart local v6    # "duration":J
    .restart local v9    # "isMainDoc":Ljava/lang/String;
    .restart local v10    # "mainDoc":Z
    .restart local v11    # "method":Ljava/lang/String;
    .restart local v12    # "mimeType":Ljava/lang/String;
    .restart local v13    # "status":I
    .restart local v14    # "size":J
    .restart local v16    # "start":J
    :cond_4
    move/from16 v18, v13

    .line 418
    goto/16 :goto_1
.end method

.method private logPageAbnormal()V
    .locals 41

    .prologue
    .line 1065
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->reportAbnormal:Z

    if-nez v4, :cond_1

    .line 1286
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    const-string/jumbo v4, "H5LoggerPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "logPageAbnormal "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 30474
    iget-object v10, v10, Lior;->w:Ljava/lang/String;

    .line 1068
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->reportAbnormal:Z

    .line 1070
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 31474
    iget-object v0, v4, Lior;->w:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 1071
    .local v31, "url":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "about:blank"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1074
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->availablePageData:Linv;

    if-eqz v4, :cond_0

    .line 1078
    const/16 v16, 0x0

    .line 1079
    .local v16, "errorType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->errorType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->errorType:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1090
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->blankErrorCode:I

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->blankErrorCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1092
    .local v14, "errorCode":Ljava/lang/String;
    :goto_2
    const-string/jumbo v15, "auto"

    .line 1094
    .local v15, "errorTrigger":Ljava/lang/String;
    new-instance v35, Ljava/util/HashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashMap;-><init>()V

    .line 1095
    .local v35, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageAbnormal:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageAbnormal:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1096
    const/16 v17, 0x0

    .local v17, "index":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageAbnormal:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_9

    .line 1097
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageAbnormal:Lcom/alibaba/fastjson/JSONArray;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v22

    .line 1098
    .local v22, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "name"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1099
    .local v21, "name":Ljava/lang/String;
    const-string/jumbo v4, "value"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1100
    .local v34, "value":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1101
    move-object/from16 v0, v35

    move-object/from16 v1, v21

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 1081
    .end local v14    # "errorCode":Ljava/lang/String;
    .end local v15    # "errorTrigger":Ljava/lang/String;
    .end local v17    # "index":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v34    # "value":Ljava/lang/String;
    .end local v35    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 32456
    iget v4, v4, Lior;->u:I

    .line 1081
    const/16 v5, 0x190

    if-ge v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 32465
    iget v4, v4, Lior;->v:I

    .line 1081
    const/16 v5, 0x190

    if-lt v4, v5, :cond_6

    .line 1082
    :cond_5
    const-string/jumbo v16, "errorResponse"

    goto/16 :goto_1

    .line 1083
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 33456
    iget v4, v4, Lior;->u:I

    .line 1083
    const/16 v5, 0xd

    if-le v4, v5, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 33465
    iget v4, v4, Lior;->v:I

    .line 1084
    const/16 v5, 0x1b58

    if-ne v4, v5, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 34465
    iget v4, v4, Lior;->v:I

    .line 1085
    if-ltz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 35465
    iget v4, v4, Lior;->v:I

    .line 1086
    const/4 v5, 0x6

    if-gt v4, v5, :cond_2

    .line 1087
    :cond_7
    const-string/jumbo v16, "errorRequest"

    goto/16 :goto_1

    .line 1090
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 36456
    iget v5, v5, Lior;->u:I

    .line 1091
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 1104
    .restart local v14    # "errorCode":Ljava/lang/String;
    .restart local v15    # "errorTrigger":Ljava/lang/String;
    .restart local v17    # "index":I
    .restart local v35    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    const-string/jumbo v4, "errorType"

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1105
    const-string/jumbo v4, "errorType"

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "errorType":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1107
    .restart local v16    # "errorType":Ljava/lang/String;
    :cond_a
    const-string/jumbo v4, "errorTrigger"

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1108
    const-string/jumbo v4, "errorTrigger"

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "errorTrigger":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 1110
    .restart local v15    # "errorTrigger":Ljava/lang/String;
    :cond_b
    const-string/jumbo v4, "errorCode"

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1111
    const-string/jumbo v4, "errorCode"

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "errorCode":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 1113
    .restart local v14    # "errorCode":Ljava/lang/String;
    :cond_c
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1114
    const-string/jumbo v16, "jsReport"

    .line 1118
    .end local v17    # "index":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->isMixedContent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1119
    const-string/jumbo v16, "mixedContent"

    .line 1122
    :cond_e
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->useNewLogUpload()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1123
    const-string/jumbo v4, "H5_PAGE_ABNORMAL"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 1124
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "url"

    move-object/from16 v0, v31

    invoke-virtual {v4, v5, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "referer"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 36501
    iget-object v10, v10, Lior;->y:Ljava/lang/String;

    .line 1124
    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "errorType"

    .line 1125
    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "errorCode"

    invoke-virtual {v4, v5, v14}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "errorTrigger"

    .line 1126
    invoke-virtual {v4, v5, v15}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "startRender"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 37315
    iget-wide v10, v10, Lior;->k:J

    .line 1126
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "startRenderFromNative"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 37324
    iget-wide v10, v10, Lior;->l:J

    .line 1127
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "pageSize"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 37690
    iget-wide v10, v10, Lior;->Q:J

    .line 1128
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "htmlSize"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 38681
    iget-wide v10, v10, Lior;->P:J

    .line 1129
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "status"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 39456
    iget v10, v10, Lior;->u:I

    .line 1130
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "snapshotId"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 40329
    iget-object v10, v10, Lior;->aU:Ljava/lang/String;

    .line 1131
    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "wvErrorCode"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    const-string/jumbo v11, "webViewErrorCode"

    const-string/jumbo v39, ""

    .line 1132
    move-object/from16 v0, v39

    invoke-virtual {v10, v11, v0}, Lior;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "wvErrorDesc"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    const-string/jumbo v11, "webViewErrorDesc"

    const-string/jumbo v39, ""

    .line 1133
    move-object/from16 v0, v39

    invoke-virtual {v10, v11, v0}, Lior;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 1134
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->addMapParam(Ljava/util/Map;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 1135
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 40537
    iget-object v5, v5, Lior;->z:Ljava/lang/String;

    .line 1135
    const/4 v10, 0x0

    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 1136
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "appId"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 40870
    iget-object v10, v10, Lior;->ak:Ljava/lang/String;

    .line 1136
    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "version"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 40888
    iget-object v10, v10, Lior;->am:Ljava/lang/String;

    .line 1137
    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "publicId"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 41879
    iget-object v10, v10, Lior;->al:Ljava/lang/String;

    .line 1138
    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    const-string/jumbo v10, "psd"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    .line 1139
    invoke-interface {v4}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v11, "appType"

    const/16 v39, 0x2

    move/from16 v0, v39

    invoke-static {v4, v11, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v4

    const/4 v11, 0x2

    if-ne v4, v11, :cond_14

    const-string/jumbo v4, "online"

    :goto_4
    invoke-virtual {v5, v10, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 1140
    invoke-static {v5}, Lcom/alipay/mobile/nebula/log/H5Logger;->getPerformanceDataMap(Lior;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->addMapParam(Ljava/util/Map;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "stopLoading"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->availablePageData:Linv;

    .line 42043
    iget-wide v10, v10, Linv;->e:J

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->availablePageData:Linv;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-static {v10, v11, v0, v1}, Lcom/alipay/mobile/nebula/log/H5Logger;->getCorrectStopLoading(JLior;Linv;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "stopLoadingWithoutLocating"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->availablePageData:Linv;

    .line 42047
    iget-wide v10, v10, Linv;->g:J

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->availablePageData:Linv;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-static {v10, v11, v0, v1}, Lcom/alipay/mobile/nebula/log/H5Logger;->getCorrectStopLoading(JLior;Linv;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v12

    .line 1144
    .local v12, "abnormalData":Lcom/alipay/mobile/nebula/log/H5LogData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    if-eqz v4, :cond_f

    const-string/jumbo v4, "YES"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 42960
    iget-object v5, v5, Lior;->at:Ljava/lang/String;

    .line 1144
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1145
    invoke-virtual {v12}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "dslVersion"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-static {v10}, Lcom/alipay/mobile/nebula/log/H5Logger;->getDslVersion(Lior;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1148
    :cond_f
    const-string/jumbo v4, "mixedContent"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->mPerformanceMap:Ljava/util/HashMap;

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->mPerformanceMap:Ljava/util/HashMap;

    const-string/jumbo v5, "mixedContent"

    .line 1149
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1150
    invoke-virtual {v12}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "mixedContent"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->mPerformanceMap:Ljava/util/HashMap;

    const-string/jumbo v11, "mixedContent"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1153
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 43185
    iget-wide v4, v4, Lior;->aE:J

    .line 1153
    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-lez v4, :cond_11

    .line 1154
    invoke-virtual {v12}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "navigationStart"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 44185
    iget-wide v10, v10, Lior;->aE:J

    .line 1154
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1158
    :cond_11
    const-string/jumbo v4, "h5_ucNetConfig"

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v30

    .line 1159
    .local v30, "ucNetConfig":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v32, "NO"

    .line 1160
    .local v32, "useAliNet":Ljava/lang/String;
    if-eqz v30, :cond_12

    .line 1161
    const-string/jumbo v4, "useAlipayNet"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1163
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 44474
    iget-object v4, v4, Lior;->w:Ljava/lang/String;

    .line 1163
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->isSpdy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1165
    .local v24, "spdy":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "type"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v10}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "charset"

    .line 1166
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "viewId"

    const-string/jumbo v10, "refViewID"

    .line 1167
    invoke-static {v10}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "refviewId"

    const-string/jumbo v10, "viewID"

    .line 1168
    invoke-static {v10}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "isAlipayNetwork"

    .line 1169
    move-object/from16 v0, v32

    invoke-virtual {v4, v5, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "SPDY"

    .line 1170
    move-object/from16 v0, v24

    invoke-virtual {v4, v5, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "end"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "isLocal"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 44942
    iget-object v10, v10, Lior;->ar:Ljava/lang/String;

    .line 1171
    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->mExtraJSReport:Ljava/util/HashMap;

    .line 1172
    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->addMapParam(Ljava/util/Map;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v4}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 1174
    invoke-virtual {v12}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string/jumbo v5, "webViewVersion"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v10}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v10

    invoke-interface {v10}, Lcom/alipay/mobile/nebula/webview/APWebView;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1176
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->addJsApiCalledLog(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 1178
    invoke-static {v12}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 1179
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1180
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->upload()V

    goto/16 :goto_0

    .line 1139
    .end local v12    # "abnormalData":Lcom/alipay/mobile/nebula/log/H5LogData;
    .end local v24    # "spdy":Ljava/lang/String;
    .end local v30    # "ucNetConfig":Lcom/alibaba/fastjson/JSONObject;
    .end local v32    # "useAliNet":Ljava/lang/String;
    :cond_14
    const-string/jumbo v4, "local"

    goto/16 :goto_4

    .line 1185
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^referer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 45501
    iget-object v5, v5, Lior;->y:Ljava/lang/String;

    .line 1186
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^errorType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^errorCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^errorTrigger="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^startRender="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 46315
    iget-wide v10, v5, Lior;->k:J

    .line 1190
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^startRenderFromNative="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 46324
    iget-wide v10, v5, Lior;->l:J

    .line 1191
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^pageSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 46690
    iget-wide v10, v5, Lior;->Q:J

    .line 1192
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^htmlSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 47681
    iget-wide v10, v5, Lior;->P:J

    .line 1193
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 48456
    iget v5, v5, Lior;->u:I

    .line 1194
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1196
    .local v6, "param1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 49329
    iget-object v4, v4, Lior;->aU:Ljava/lang/String;

    .line 1196
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 1197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^snapshotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 50329
    iget-object v5, v5, Lior;->aU:Ljava/lang/String;

    .line 1197
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1200
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    const-string/jumbo v5, "webViewErrorCode"

    const-string/jumbo v10, ""

    invoke-virtual {v4, v5, v10}, Lior;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1201
    .local v37, "webViewErrorCode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    const-string/jumbo v5, "webViewErrorDesc"

    const-string/jumbo v10, ""

    invoke-virtual {v4, v5, v10}, Lior;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1203
    .local v38, "webViewErrorDesc":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 1204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^wvErrorCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1206
    :cond_17
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 1207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^wvErrorDesc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1210
    :cond_18
    const-string/jumbo v7, ""

    .line 1211
    .local v7, "param2":Ljava/lang/String;
    invoke-interface/range {v35 .. v35}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1212
    .local v19, "key":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 1213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v10, "^"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1215
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v10, "="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1216
    goto :goto_5

    .line 1217
    .end local v19    # "key":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 50330
    iget-object v8, v4, Lior;->z:Ljava/lang/String;

    .line 1218
    .local v8, "param3":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v4}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "appType"

    const/4 v10, 0x2

    invoke-static {v4, v5, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_21

    const-string/jumbo v13, "online"

    .line 1220
    .local v13, "appType":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->availablePageData:Linv;

    .line 50331
    iget-wide v4, v4, Linv;->e:J

    .line 1220
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->availablePageData:Linv;

    invoke-static {v4, v5, v10, v11}, Lcom/alipay/mobile/nebula/log/H5Logger;->getCorrectStopLoading(JLior;Linv;)J

    move-result-wide v26

    .line 1221
    .local v26, "stopLoading":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->availablePageData:Linv;

    .line 50332
    iget-wide v4, v4, Linv;->g:J

    .line 1222
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->availablePageData:Linv;

    invoke-static {v4, v5, v10, v11}, Lcom/alipay/mobile/nebula/log/H5Logger;->getCorrectStopLoading(JLior;Linv;)J

    move-result-wide v28

    .line 1224
    .local v28, "stopLoadingWithoutLocating":J
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "appId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 50333
    iget-object v5, v5, Lior;->ak:Ljava/lang/String;

    .line 1224
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 50334
    iget-object v5, v5, Lior;->am:Ljava/lang/String;

    .line 1225
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^publicId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 50335
    iget-object v5, v5, Lior;->al:Ljava/lang/String;

    .line 1226
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^psd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 1227
    invoke-static {v5}, Lcom/alipay/mobile/nebula/log/H5Logger;->getPerformanceData(Lior;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^stopLoading="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^stopLoadingWithoutLocating="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1231
    .local v9, "param4":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    if-eqz v4, :cond_1b

    const-string/jumbo v4, "YES"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 50336
    iget-object v5, v5, Lior;->at:Ljava/lang/String;

    .line 1231
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^dslVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-static {v5}, Lcom/alipay/mobile/nebula/log/H5Logger;->getDslVersion(Lior;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1236
    :cond_1b
    const-string/jumbo v4, "mixedContent"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->mPerformanceMap:Ljava/util/HashMap;

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->mPerformanceMap:Ljava/util/HashMap;

    const-string/jumbo v5, "mixedContent"

    .line 1237
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^mixedContent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->mPerformanceMap:Ljava/util/HashMap;

    const-string/jumbo v10, "mixedContent"

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1242
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 50337
    iget-wide v4, v4, Lior;->aE:J

    .line 1242
    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-lez v4, :cond_1d

    .line 1243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^navigationStart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 50338
    iget-wide v10, v5, Lior;->aE:J

    .line 1243
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1245
    :cond_1d
    const-string/jumbo v23, ""

    .line 1246
    .local v23, "refviewId":Ljava/lang/String;
    const-string/jumbo v36, ""

    .line 1247
    .local v36, "viewId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 1248
    const-string/jumbo v4, "refViewID"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1249
    const-string/jumbo v4, "viewID"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1252
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v4}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1254
    .local v20, "mimeType":Ljava/lang/String;
    const-string/jumbo v4, "h5_ucNetConfig"

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v18

    .line 1255
    .local v18, "jsonObjNetWork":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v33, "NO"

    .line 1256
    .local v33, "useAlipayNet":Ljava/lang/String;
    if-eqz v18, :cond_1f

    .line 1257
    const-string/jumbo v4, "useAlipayNet"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1260
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 50339
    iget-object v4, v4, Lior;->w:Ljava/lang/String;

    .line 1260
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->isSpdy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1262
    .local v25, "spdySwitch":Ljava/lang/String;
    const-string/jumbo v4, "H5LoggerPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "useAlipayNet "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, ", spdySwitch "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^charset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^viewId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^refviewId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^isAlipayNetwork="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^SPDY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^end="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^isLocal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 50340
    iget-object v5, v5, Lior;->ar:Ljava/lang/String;

    .line 1267
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1268
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->addJsApiCalledLog()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1270
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v4}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 1271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^webViewVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v5}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/nebula/webview/APWebView;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1274
    :cond_20
    const-string/jumbo v4, "H5LoggerPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "H5_PAGE_ABNORMAL param1 : "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, ", param4 : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->mExtraJSReport:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eqz v4, :cond_22

    .line 1276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->mExtraJSReport:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1277
    .restart local v21    # "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v10, "^"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v10, "="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->mExtraJSReport:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1278
    goto :goto_7

    .line 1218
    .end local v9    # "param4":Ljava/lang/String;
    .end local v13    # "appType":Ljava/lang/String;
    .end local v18    # "jsonObjNetWork":Lcom/alibaba/fastjson/JSONObject;
    .end local v20    # "mimeType":Ljava/lang/String;
    .end local v21    # "name":Ljava/lang/String;
    .end local v23    # "refviewId":Ljava/lang/String;
    .end local v25    # "spdySwitch":Ljava/lang/String;
    .end local v26    # "stopLoading":J
    .end local v28    # "stopLoadingWithoutLocating":J
    .end local v33    # "useAlipayNet":Ljava/lang/String;
    .end local v36    # "viewId":Ljava/lang/String;
    :cond_21
    const-string/jumbo v13, "local"

    goto/16 :goto_6

    .line 1281
    .restart local v9    # "param4":Ljava/lang/String;
    .restart local v13    # "appType":Ljava/lang/String;
    .restart local v18    # "jsonObjNetWork":Lcom/alibaba/fastjson/JSONObject;
    .restart local v20    # "mimeType":Ljava/lang/String;
    .restart local v23    # "refviewId":Ljava/lang/String;
    .restart local v25    # "spdySwitch":Ljava/lang/String;
    .restart local v26    # "stopLoading":J
    .restart local v28    # "stopLoadingWithoutLocating":J
    .restart local v33    # "useAlipayNet":Ljava/lang/String;
    .restart local v36    # "viewId":Ljava/lang/String;
    :cond_22
    const-string/jumbo v4, "H5_PAGE_ABNORMAL"

    const/4 v5, 0x0

    .line 1282
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->getUniteParam4()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "H-EM"

    .line 1281
    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/nebula/log/H5Logger;->performanceLoggerV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1284
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->upload()V

    goto/16 :goto_0
.end method

.method private logPageClosed(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 687
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Lior;->b(Ljava/lang/String;)V

    .line 688
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logH5Performance:Z

    if-eqz v0, :cond_0

    .line 689
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logPagePerformance(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 690
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logWhiteScreen()V

    .line 691
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logPageAbnormal()V

    .line 692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logH5Performance:Z

    .line 694
    :cond_0
    return-void
.end method

.method private logPageError(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 9
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 697
    const-string/jumbo v6, "errorCode"

    invoke-static {p1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 698
    .local v1, "errorCode":I
    const-string/jumbo v6, "url"

    invoke-static {p1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 699
    .local v5, "url":Ljava/lang/String;
    const-string/jumbo v6, "type"

    invoke-static {p1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 700
    .local v4, "type":Ljava/lang/String;
    const-string/jumbo v6, "networkType"

    invoke-static {p1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 701
    .local v3, "networkType":Ljava/lang/String;
    const-string/jumbo v6, "deviceInfo"

    invoke-static {p1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "deviceInfo":Ljava/lang/String;
    const-string/jumbo v6, "about:blank"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 704
    const-string/jumbo v6, "H5_AL_PAGE_LOAD_FAIL"

    invoke-static {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    sget-object v7, Lcom/alipay/mobile/nebula/log/H5Logger;->DIAGNOSE:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    .line 705
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v7}, Lior;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    .line 706
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "error"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    .line 707
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "url"

    invoke-virtual {v6, v7, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "errorCode"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "type"

    .line 708
    invoke-virtual {v6, v7, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "networkType"

    invoke-virtual {v6, v7, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "deviceInfo"

    .line 709
    invoke-virtual {v6, v7, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 710
    .local v2, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 712
    .end local v2    # "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    :cond_0
    return-void
.end method

.method private logPagePerformance(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 10
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1410
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    if-nez v2, :cond_1

    .line 1444
    :cond_0
    :goto_0
    return-void

    .line 1414
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 50343
    iget-wide v2, v2, Lior;->j:J

    .line 1414
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1415
    const-string/jumbo v2, "H5LoggerPlugin"

    const-string/jumbo v3, "pageData.start == 0 not logPagePerformance"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1419
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1423
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 1426
    .local v1, "myData":Lior;
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v2}, Lior;->a()Lior;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1433
    :goto_1
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->mPerformanceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->availablePageData:Linv;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    new-instance v5, Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->jsError:Ljava/lang/String;

    const-string/jumbo v9, "utf-8"

    .line 1434
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([B)V

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;-><init>(Lior;Ljava/util/Map;Linv;Liop;Ljava/lang/String;)V

    .line 1435
    .local v0, "logRunnable":Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler;->scheduleH5PerfLog(Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1439
    .end local v0    # "logRunnable":Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;
    :goto_2
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->jsError:Ljava/lang/String;

    .line 1441
    const-string/jumbo v2, "H5LoggerPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "logPagePerformance and logPageEndWithSpmId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " spmBizType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmBizType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " chInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->chInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " token:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 50344
    iget-object v4, v1, Lior;->aq:Ljava/lang/String;

    .line 1442
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1441
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->endSpm(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto/16 :goto_0

    .line 1427
    :catch_0
    move-exception v7

    .line 1428
    .local v7, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5LoggerPlugin"

    invoke-static {v2, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1436
    .end local v7    # "throwable":Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    .line 1437
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5LoggerPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private logPayResult(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 665
    const-string/jumbo v1, "H5_AL_PAY_RESULT"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 666
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 667
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "type"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "tradeNo"

    const-string/jumbo v3, "tradeNo"

    .line 668
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "partner"

    const-string/jumbo v3, "partnerId"

    .line 669
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "bizType"

    const-string/jumbo v3, "bizType"

    .line 670
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "bizSubType"

    const-string/jumbo v3, "bizSubType"

    .line 671
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "bizContext"

    const-string/jumbo v3, "bizContext"

    .line 672
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "shouldDisplayResultPage"

    const-string/jumbo v3, "shouldDisplayResultPage"

    .line 673
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "bzContext"

    const-string/jumbo v3, "bzContext"

    .line 674
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "resultCode"

    const-string/jumbo v3, "resultCode"

    .line 675
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "callbackUrl"

    const-string/jumbo v3, "callbackUrl"

    .line 676
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "resultStatus"

    const-string/jumbo v3, "resultStatus"

    .line 677
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "resultCode"

    const-string/jumbo v3, "resultCode"

    .line 678
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "errorMessage"

    const-string/jumbo v3, "errorMessage"

    .line 679
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "orderStr"

    const-string/jumbo v3, "bzContext"

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->bizContext:Ljava/lang/String;

    .line 680
    invoke-static {p1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 681
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 682
    .local v0, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 684
    return-void
.end method

.method private logPayStart(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 649
    const-string/jumbo v1, "H5_AL_PAY_START"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 650
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 651
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "type"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "tradeNo"

    const-string/jumbo v3, "tradeNo"

    .line 652
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "partner"

    const-string/jumbo v3, "partnerId"

    .line 653
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "bizType"

    const-string/jumbo v3, "bizType"

    .line 654
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "bizSubType"

    const-string/jumbo v3, "bizSubType"

    .line 655
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "bizContext"

    const-string/jumbo v3, "bizContext"

    .line 656
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "shouldDisplayResultPage"

    const-string/jumbo v3, "shouldDisplayResultPage"

    .line 657
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "bzContext"

    const-string/jumbo v3, "bzContext"

    .line 658
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 659
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 660
    .local v0, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 662
    return-void
.end method

.method private logPushWindow(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 464
    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v1, "H5_PAGE_BEHAVIOR_AUTOCLICK"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 466
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "opentype=pushWindow"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 467
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "viewId"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "referer"

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 7501
    iget-object v3, v3, Lior;->y:Ljava/lang/String;

    .line 467
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 468
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 465
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 469
    return-void
.end method

.method private logSessionFromNative(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 522
    const-string/jumbo v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 553
    return-void
.end method

.method private logSessionToNative()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 510
    const-string/jumbo v1, ""

    .line 511
    .local v1, "viewId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 512
    const-string/jumbo v2, "viewID"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 514
    :cond_0
    sget-object v2, Liov$a;->l:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 515
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 516
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string/jumbo v3, "url"

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v4}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 517
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 518
    .local v0, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 519
    return-void
.end method

.method private logShareResult(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 500
    const-string/jumbo v2, "channelName"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "channelName":Ljava/lang/String;
    const-string/jumbo v2, "shareResult"

    invoke-static {p1, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 502
    .local v1, "shareResult":I
    :cond_0
    sget-object v2, Liov$a;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 503
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/nebula/log/H5Logger;->MONITOR:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 504
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string/jumbo v3, "channelName"

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string/jumbo v3, "shareResult"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string/jumbo v3, "bizType"

    const-string/jumbo v4, "bizType"

    const-string/jumbo v5, "20000067"

    .line 505
    invoke-static {p1, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 506
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string/jumbo v3, "url"

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v4}, Liop;->getShareUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 502
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 507
    return-void
.end method

.method private logWhiteScreen()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1003
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->reportAbnormal:Z

    if-eqz v6, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 27870
    iget-object v0, v6, Lior;->ak:Ljava/lang/String;

    .line 1007
    .local v0, "appId":Ljava/lang/String;
    const-string/jumbo v6, "h5_logNewBlankScreenConfig"

    .line 1008
    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 1009
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1010
    const-string/jumbo v6, "enable"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1011
    .local v1, "enable":Ljava/lang/String;
    const-string/jumbo v6, "appId"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1013
    .local v4, "regex":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v6

    .line 1014
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getNetworkType()Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    move-result-object v6

    sget-object v7, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_WIFI:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    if-ne v6, v7, :cond_2

    const-string/jumbo v6, "wifiLimit"

    .line 1015
    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v5

    .line 1017
    .local v5, "stayTime":I
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1018
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "yes"

    .line 1019
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1020
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isAppIdMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1023
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 28342
    iget-wide v6, v6, Lior;->n:J

    .line 1023
    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 1024
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 28378
    iget-wide v8, v8, Lior;->p:J

    .line 1024
    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    int-to-long v8, v5

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 1026
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->reportAbnormal:Z

    .line 1027
    const-string/jumbo v6, "errorRender"

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->errorType:Ljava/lang/String;

    .line 1028
    const v6, -0x927c4

    iput v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->blankErrorCode:I

    .line 1029
    const-string/jumbo v6, "H5LoggerPlugin"

    const-string/jumbo v7, "log WebView page unfinished error"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1015
    .end local v5    # "stayTime":I
    :cond_2
    const-string/jumbo v6, "elseNetWork"

    .line 1016
    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 1034
    .restart local v5    # "stayTime":I
    :cond_3
    const-string/jumbo v6, "testFilter"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "testFilter"

    .line 1035
    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 1036
    .local v2, "filterTime":I
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 29378
    iget-wide v8, v8, Lior;->p:J

    .line 1036
    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    int-to-long v8, v2

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 1041
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v6}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v6}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v6

    .line 1042
    invoke-interface {v6}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v6

    sget-object v7, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v6, v7, :cond_5

    .line 1043
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 30060
    iget-wide v6, v6, Lior;->q:J

    .line 1043
    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 1045
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->reportAbnormal:Z

    .line 1046
    const-string/jumbo v6, "errorRender"

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->errorType:Ljava/lang/String;

    .line 1047
    const v6, -0x927c3

    iput v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->blankErrorCode:I

    .line 1048
    const-string/jumbo v6, "H5LoggerPlugin"

    const-string/jumbo v7, "log UC WebView blank error"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1035
    .end local v2    # "filterTime":I
    :cond_4
    const/4 v2, 0x1

    goto :goto_2

    .line 1051
    .restart local v2    # "filterTime":I
    :cond_5
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 30315
    iget-wide v6, v6, Lior;->k:J

    .line 1051
    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 1053
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->reportAbnormal:Z

    .line 1054
    const-string/jumbo v6, "errorRender"

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->errorType:Ljava/lang/String;

    .line 1055
    const v6, -0x927c3

    iput v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->blankErrorCode:I

    .line 1056
    const-string/jumbo v6, "H5LoggerPlugin"

    const-string/jumbo v7, "log Android WebView blank error"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private remoteLog(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 37
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .prologue
    .line 1561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1686
    :cond_0
    :goto_0
    return-void

    .line 50346
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v31, v0

    .line 1566
    .local v31, "params":Lcom/alibaba/fastjson/JSONObject;
    sget v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->remoteLogCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->remoteLogCount:I

    const/16 v6, 0x3e8

    if-le v2, v6, :cond_5

    const/16 v29, 0x1

    .line 1567
    .local v29, "maxCount":Z
    :goto_1
    const-string/jumbo v2, "seedId"

    move-object/from16 v0, v31

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1568
    .local v16, "seedId":Ljava/lang/String;
    const-string/jumbo v2, "spmId"

    move-object/from16 v0, v31

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1569
    .local v3, "spm":Ljava/lang/String;
    const-string/jumbo v2, "abTestInfo"

    move-object/from16 v0, v31

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1570
    .local v5, "abTestInfo":Ljava/lang/String;
    const-string/jumbo v2, "bizType"

    move-object/from16 v0, v31

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1571
    .local v4, "bizType":Ljava/lang/String;
    const-string/jumbo v2, "entityId"

    move-object/from16 v0, v31

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->entityId:Ljava/lang/String;

    .line 1573
    const-string/jumbo v27, ""

    .line 1575
    .local v27, "extLogInfoS":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v6, "extLogInfo"

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v27

    .line 1582
    :cond_2
    :goto_2
    const-string/jumbo v2, "logLevel"

    const/4 v6, 0x0

    move-object/from16 v0, v31

    invoke-static {v0, v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v12

    .line 1583
    .local v12, "logLevel":I
    const-string/jumbo v2, "actionId"

    move-object/from16 v0, v31

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1586
    .local v13, "actionId":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "clicked"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1587
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1589
    :try_start_1
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5Logger;->setLastClickSpm(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1596
    :cond_4
    :goto_3
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1597
    const-string/jumbo v2, "H5LoggerPlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "invalid seedId "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1566
    .end local v3    # "spm":Ljava/lang/String;
    .end local v4    # "bizType":Ljava/lang/String;
    .end local v5    # "abTestInfo":Ljava/lang/String;
    .end local v12    # "logLevel":I
    .end local v13    # "actionId":Ljava/lang/String;
    .end local v16    # "seedId":Ljava/lang/String;
    .end local v27    # "extLogInfoS":Ljava/lang/String;
    .end local v29    # "maxCount":Z
    :cond_5
    const/16 v29, 0x0

    goto/16 :goto_1

    .line 1578
    .restart local v3    # "spm":Ljava/lang/String;
    .restart local v4    # "bizType":Ljava/lang/String;
    .restart local v5    # "abTestInfo":Ljava/lang/String;
    .restart local v16    # "seedId":Ljava/lang/String;
    .restart local v27    # "extLogInfoS":Ljava/lang/String;
    .restart local v29    # "maxCount":Z
    :catch_0
    move-exception v25

    .line 1579
    .local v25, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5LoggerPlugin"

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1590
    .end local v25    # "e":Ljava/lang/Exception;
    .restart local v12    # "logLevel":I
    .restart local v13    # "actionId":Ljava/lang/String;
    :catch_1
    move-exception v25

    .line 1591
    .local v25, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5LoggerPlugin"

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1601
    .end local v25    # "e":Ljava/lang/Throwable;
    :cond_6
    const-string/jumbo v2, "H5_PAGE_BEHAVIOR_AUTOCLICK"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "H5_PAGE_BEHAVIOR_AUTOREPORT"

    .line 1602
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "H5_PAGE_HASH_CHANGE"

    .line 1603
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_7
    const/16 v36, 0x1

    .line 1604
    .local v36, "webLog":Z
    :goto_4
    if-nez v36, :cond_8

    if-eqz v31, :cond_0

    invoke-virtual/range {v31 .. v31}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v29, :cond_0

    .line 1608
    :cond_8
    const-string/jumbo v2, "type"

    move-object/from16 v0, v31

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1609
    .local v15, "type":Ljava/lang/String;
    const-string/jumbo v2, "behavior"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "performance"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "monitorWithLocation"

    .line 1610
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "error"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "behaviorAuto"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "135"

    .line 1611
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1612
    const-string/jumbo v15, "monitor"

    .line 1614
    :cond_9
    const-string/jumbo v2, "H5LoggerPlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "remoteLog type "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    const-string/jumbo v2, "ucId"

    move-object/from16 v0, v31

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1618
    .local v17, "ucId":Ljava/lang/String;
    const-string/jumbo v2, "param1"

    move-object/from16 v0, v31

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1619
    .local v7, "param1":Ljava/lang/String;
    const-string/jumbo v2, "param2"

    move-object/from16 v0, v31

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1620
    .local v8, "param2":Ljava/lang/String;
    const-string/jumbo v2, "param3"

    move-object/from16 v0, v31

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1621
    .local v9, "param3":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 1622
    .local v10, "param4":Ljava/lang/String;
    const-string/jumbo v2, "param4"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .line 1625
    .local v30, "param4Obj":Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "from=JSAPI^"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1627
    move-object/from16 v0, v30

    instance-of v2, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_c

    move-object/from16 v2, v30

    .line 1628
    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .local v28, "key":Ljava/lang/String;
    move-object/from16 v2, v30

    .line 1629
    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .line 1630
    .local v34, "val":Ljava/lang/Object;
    move-object/from16 v0, v34

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 1631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v11, "="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v11, "^"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 1603
    .end local v7    # "param1":Ljava/lang/String;
    .end local v8    # "param2":Ljava/lang/String;
    .end local v9    # "param3":Ljava/lang/String;
    .end local v10    # "param4":Ljava/lang/String;
    .end local v15    # "type":Ljava/lang/String;
    .end local v17    # "ucId":Ljava/lang/String;
    .end local v28    # "key":Ljava/lang/String;
    .end local v30    # "param4Obj":Ljava/lang/Object;
    .end local v34    # "val":Ljava/lang/Object;
    .end local v36    # "webLog":Z
    :cond_b
    const/16 v36, 0x0

    goto/16 :goto_4

    .line 1636
    .restart local v7    # "param1":Ljava/lang/String;
    .restart local v8    # "param2":Ljava/lang/String;
    .restart local v9    # "param3":Ljava/lang/String;
    .restart local v10    # "param4":Ljava/lang/String;
    .restart local v15    # "type":Ljava/lang/String;
    .restart local v17    # "ucId":Ljava/lang/String;
    .restart local v30    # "param4Obj":Ljava/lang/Object;
    .restart local v36    # "webLog":Z
    :cond_c
    move-object/from16 v0, v30

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 1637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1640
    :cond_d
    if-eqz v36, :cond_f

    .line 1642
    const-string/jumbo v32, ""

    .line 1643
    .local v32, "refviewId":Ljava/lang/String;
    const-string/jumbo v35, ""

    .line 1644
    .local v35, "viewId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1645
    const-string/jumbo v2, "refViewID"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1646
    const-string/jumbo v2, "viewID"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1649
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "actionId=clicked^ucId=^viewId="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "^refviewId="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "^h5AppVersion="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 50347
    iget-object v6, v6, Lior;->am:Ljava/lang/String;

    .line 1650
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "^url="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 50348
    iget-object v6, v6, Lior;->w:Ljava/lang/String;

    .line 1651
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1654
    .end local v32    # "refviewId":Ljava/lang/String;
    .end local v35    # "viewId":Ljava/lang/String;
    :cond_f
    const-string/jumbo v2, "^"

    invoke-virtual {v10, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1655
    const/4 v2, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v10, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1658
    :cond_10
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1659
    invoke-static/range {v27 .. v27}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v26

    .line 1660
    .local v26, "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v26, :cond_11

    .line 1661
    const-string/jumbo v2, "pageId"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageId:Ljava/lang/String;

    .line 1666
    .end local v26    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    :cond_11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    if-eqz v2, :cond_13

    .line 1667
    const-string/jumbo v2, "H5LoggerPlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "h5RemoteLogClickLogger pageData.pageToken:"

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 50349
    iget-object v11, v11, Lior;->aq:Ljava/lang/String;

    .line 1667
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5LogProvider:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    if-eqz v2, :cond_0

    .line 1669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 50350
    iget-object v2, v2, Lior;->aq:Ljava/lang/String;

    .line 1669
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5Logger;->getPageId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    .line 1670
    .local v33, "spmPageId":Ljava/lang/String;
    if-eqz v33, :cond_12

    .line 1671
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageId:Ljava/lang/String;

    .line 1673
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->entityId:Ljava/lang/String;

    .line 1677
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->getUniteParam4()Ljava/lang/String;

    move-result-object v11

    .line 1673
    invoke-static/range {v2 .. v13}, Lcom/alipay/mobile/nebula/log/H5Logger;->h5RemoteLogClickLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .end local v33    # "spmPageId":Ljava/lang/String;
    :cond_13
    move-object/from16 v14, p0

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v4

    move/from16 v23, v12

    move-object/from16 v24, v13

    .line 1683
    invoke-direct/range {v14 .. v24}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->doLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private remoteLogging(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 12
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1447
    .line 50345
    iget-object v11, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 1448
    .local v11, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v0, "logData"

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v10

    .line 1449
    .local v10, "jSONArray":Lcom/alibaba/fastjson/JSONArray;
    const-string/jumbo v0, "type"

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1450
    .local v1, "type":Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1493
    :cond_0
    :goto_0
    return-void

    .line 1454
    :cond_1
    if-eqz v1, :cond_2

    :try_start_0
    const-string/jumbo v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1455
    :cond_2
    const-string/jumbo v1, "monitor"

    .line 1457
    :cond_3
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 1458
    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->executeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    :cond_4
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 1462
    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    .line 1463
    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    move-object v0, p0

    .line 1462
    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->executeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    :cond_5
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 1466
    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    .line 1467
    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    move-object v0, p0

    .line 1466
    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->executeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    :cond_6
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    .line 1471
    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    .line 1472
    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x3

    .line 1473
    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    .line 1471
    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->executeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    :cond_7
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 1477
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONArray;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1478
    .local v3, "seedId":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONArray;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1479
    .local v4, "param1":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONArray;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1480
    .local v5, "param2":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONArray;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1481
    .local v6, "param3":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v7

    .line 1482
    .local v7, "param4":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->executeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1486
    .end local v3    # "seedId":Ljava/lang/String;
    .end local v4    # "param1":Ljava/lang/String;
    .end local v5    # "param2":Ljava/lang/String;
    .end local v6    # "param3":Ljava/lang/String;
    .end local v7    # "param4":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1487
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "H5LoggerPlugin"

    const-string/jumbo v2, "exception detail"

    invoke-static {v0, v2, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1490
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1491
    .local v8, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v0, "error"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    invoke-interface {p2, v8}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_0
.end method

.method private startSpm(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 841
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v0

    .line 842
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-nez v2, :cond_1

    .line 843
    invoke-static {}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->enableSpmTrackPage()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v0, Lipi;

    if-eqz v2, :cond_1

    .line 844
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lipi;

    check-cast v2, Lipi;

    invoke-interface {v2}, Lipi;->isTrackPage()Z

    move-result v1

    .line 845
    .local v1, "trackPage":Z
    if-nez v1, :cond_1

    .line 846
    const-string/jumbo v2, "H5LoggerPlugin"

    const-string/jumbo v3, "startSpm isTrackPage : false ,return"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    .end local v1    # "trackPage":Z
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 855
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->mIsH5Activity:Z

    if-nez v2, :cond_2

    .line 856
    const-string/jumbo v2, "H5LoggerPlugin"

    const-string/jumbo v3, "is not H5Activity not log"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    if-eqz v2, :cond_0

    .line 864
    const-string/jumbo v2, "viewID"

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 18474
    iget-object v3, v3, Lior;->w:Ljava/lang/String;

    .line 864
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/log/H5Logger;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-string/jumbo v2, "H5LoggerPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isSPM:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->isSPM:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " h5LogProvider:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5LogProvider:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->isSPM:Z

    if-eqz v2, :cond_3

    .line 869
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmId:Ljava/lang/String;

    .line 19386
    const-string/jumbo v4, "H5PageData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setSpmId : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19387
    iput-object v3, v2, Lior;->aX:Ljava/lang/String;

    .line 870
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5LogProvider:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    if-eqz v2, :cond_0

    .line 871
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5LogProvider:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 19933
    iget-object v4, v4, Lior;->aq:Ljava/lang/String;

    .line 871
    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 875
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5LogProvider:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    if-eqz v2, :cond_0

    .line 876
    const-string/jumbo v2, "H5LoggerPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "logAutoBehavorPageStart !isSPM  spmBizType spmUrl:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " token:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 20933
    iget-object v4, v4, Lior;->aq:Ljava/lang/String;

    .line 877
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 876
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5LogProvider:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 21933
    iget-object v4, v4, Lior;->aq:Ljava/lang/String;

    .line 878
    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 23
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    .prologue
    .line 885
    if-eqz p1, :cond_0

    .line 22121
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v20, v0

    .line 885
    if-eqz v20, :cond_0

    .line 23065
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 885
    if-nez v20, :cond_1

    .line 886
    :cond_0
    const/16 v20, 0x0

    .line 989
    :goto_0
    return v20

    .line 888
    :cond_1
    const/4 v14, 0x0

    .line 23081
    .local v14, "page":Liop;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    move-object/from16 v20, v0

    .line 889
    move-object/from16 v0, v20

    instance-of v0, v0, Liop;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 24081
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 890
    .end local v14    # "page":Liop;
    check-cast v14, Liop;

    .line 25065
    .restart local v14    # "page":Liop;
    :cond_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 25121
    .local v3, "action":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 895
    .local v15, "param":Lcom/alibaba/fastjson/JSONObject;
    if-nez v14, :cond_3

    .line 896
    const/16 v20, 0x0

    goto :goto_0

    .line 898
    :cond_3
    const-string/jumbo v20, "reportData"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 899
    const-string/jumbo v20, "spm"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v15, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v16

    .line 900
    .local v16, "spmJson":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_4

    .line 901
    const-string/jumbo v20, "spmId"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmId:Ljava/lang/String;

    .line 902
    const-string/jumbo v20, "bizType"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmBizType:Ljava/lang/String;

    .line 903
    const-string/jumbo v20, "abTestInfo"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->abTestInfo:Ljava/lang/String;

    .line 904
    const-string/jumbo v20, "chInfo"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->chInfo:Ljava/lang/String;

    .line 905
    const-string/jumbo v20, "isSPM"

    const/16 v21, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->isSPM:Z

    .line 906
    const-string/jumbo v20, "url"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmUrl:Ljava/lang/String;

    .line 908
    const-string/jumbo v20, "H5LoggerPlugin"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "logPageStartWithSpmId spmId:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " spmBizType:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmBizType:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " chInfo:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->chInfo:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " token:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    move-object/from16 v22, v0

    .line 25933
    move-object/from16 v0, v22

    iget-object v0, v0, Lior;->aq:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 911
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " isSPM:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->isSPM:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " spmUrl:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " abTestInfo:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->abTestInfo:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 908
    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->startSpm(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 916
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->enableEndSpmClearSpmDetail()Z

    move-result v20

    if-nez v20, :cond_5

    .line 917
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->clearSpmDetail()V

    .line 920
    :cond_5
    const-string/jumbo v20, "spmDetail"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v15, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 921
    .local v10, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_7

    .line 922
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 923
    .local v12, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 924
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 926
    :try_start_0
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 927
    .local v11, "key":Ljava/lang/String;
    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 928
    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 929
    .local v19, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmDetail:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 931
    .end local v11    # "key":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 932
    .local v18, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v20, "H5LoggerPlugin"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 938
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18    # "throwable":Ljava/lang/Throwable;
    :cond_7
    invoke-interface/range {p2 .. p2}, Liny;->sendSuccess()V

    .line 939
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 940
    .end local v10    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v16    # "spmJson":Lcom/alibaba/fastjson/JSONObject;
    :cond_8
    const-string/jumbo v20, "mtBizReport"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 941
    const-string/jumbo v20, "bizName"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 942
    .local v5, "bizName":Ljava/lang/String;
    const-string/jumbo v20, "subName"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 943
    .local v17, "subName":Ljava/lang/String;
    const-string/jumbo v20, "failCode"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 944
    .local v8, "failCode":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_9

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 945
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 946
    :cond_9
    sget-object v20, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 974
    :goto_2
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 949
    :cond_a
    :try_start_1
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 950
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v20, "extParams"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v15, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 951
    .local v7, "extParams":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_b

    .line 952
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 953
    .restart local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 954
    .restart local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 955
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 956
    .restart local v11    # "key":Ljava/lang/String;
    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 957
    .restart local v19    # "value":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-interface {v13, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 969
    .end local v7    # "extParams":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "value":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 970
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v20, "H5LoggerPlugin"

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 960
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "extParams":Lcom/alibaba/fastjson/JSONObject;
    .restart local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    :try_start_2
    const-string/jumbo v20, "appId"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 961
    const-string/jumbo v20, "appId"

    invoke-interface {v14}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v21

    const-string/jumbo v22, "appId"

    invoke-static/range {v21 .. v22}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    :cond_c
    const-string/jumbo v20, "version"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 964
    const-string/jumbo v20, "version"

    .line 965
    invoke-interface {v14}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v21

    const-string/jumbo v22, "appVersion"

    invoke-static/range {v21 .. v22}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 964
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    :cond_d
    move-object/from16 v0, v17

    invoke-static {v5, v0, v8, v13}, Lcom/alipay/mobile/nebula/log/H5Logger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 968
    invoke-interface/range {p2 .. p2}, Liny;->sendSuccess()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 975
    .end local v5    # "bizName":Ljava/lang/String;
    .end local v7    # "extParams":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "failCode":Ljava/lang/String;
    .end local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "subName":Ljava/lang/String;
    :cond_e
    const-string/jumbo v20, "pageMonitor"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 26121
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v20, v0

    .line 976
    const-string/jumbo v21, "actionType"

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 977
    .local v4, "actionType":Ljava/lang/String;
    const-string/jumbo v20, "reset"

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 978
    const-string/jumbo v20, "H5LoggerPlugin"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "pageMonitor jsapi logPageEndWithSpmId "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " spmBizType:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmBizType:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " chInfo:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->chInfo:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " token:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    move-object/from16 v22, v0

    .line 26933
    move-object/from16 v0, v22

    iget-object v0, v0, Lior;->aq:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 979
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 978
    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->endSpm(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 981
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->startSpm(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 986
    :cond_f
    :goto_4
    invoke-interface/range {p2 .. p2}, Liny;->sendSuccess()V

    .line 987
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 982
    :cond_10
    const-string/jumbo v20, "end"

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 983
    const-string/jumbo v20, "H5LoggerPlugin"

    const-string/jumbo v21, "pageMonitor jsapi logPageEndWithSpmId end"

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->endSpm(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto :goto_4

    .line 989
    .end local v4    # "actionType":Ljava/lang/String;
    :cond_11
    const/16 v20, 0x0

    goto/16 :goto_0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 9
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 156
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->mIsH5Activity:Z

    .line 2065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 2121
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 3081
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    iget-object v3, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 160
    instance-of v3, v3, Liop;

    if-eqz v3, :cond_0

    .line 4081
    iget-object v3, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 161
    check-cast v3, Liop;

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    .line 163
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v3}, Liop;->getPageData()Lior;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 164
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    const-string/jumbo v6, "isH5Activity"

    iget-boolean v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->mIsH5Activity:Z

    invoke-virtual {v3, v6, v7}, Lior;->a(Ljava/lang/String;Z)V

    .line 165
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v3}, Liop;->getAvailablePageData()Linv;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->availablePageData:Linv;

    .line 166
    const-string/jumbo v3, "h5ToolbarBack"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    const-string/jumbo v3, "H5_TOOLBAR_BACK_BT"

    invoke-direct {p0, v3, v8}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    move v3, v5

    .line 358
    :goto_1
    return v3

    .line 168
    :cond_2
    const-string/jumbo v3, "h5PageResume"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->handlePageResume(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto :goto_0

    .line 170
    :cond_3
    const-string/jumbo v3, "h5ToolbarClose"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 171
    const-string/jumbo v3, "H5_TOOLBAR_CLOSE_BT"

    invoke-direct {p0, v3, v8}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_4
    const-string/jumbo v3, "h5ToolbarMenu"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 173
    const-string/jumbo v3, "H5_TOOLBAR_MEMU"

    invoke-direct {p0, v3, v8}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_5
    const-string/jumbo v3, "h5ToolbarMenuBt"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 175
    const-string/jumbo v3, "H5_TOOLBAR_MEMU_BT"

    const-string/jumbo v4, "name"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_6
    const-string/jumbo v3, "h5ToolbarReload"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 177
    const-string/jumbo v3, "H5_TOOLBAR_REFRESH_BT"

    invoke-direct {p0, v3, v8}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_7
    const-string/jumbo v3, "optionMenu"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 179
    const-string/jumbo v3, "H5_TITLEBAR_RIGHT_BT"

    invoke-direct {p0, v3, v8}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_8
    const-string/jumbo v3, "subtitleClick"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 181
    const-string/jumbo v3, "H5_TITLEBAR_SUBTITLE_BT"

    invoke-direct {p0, v3, v8}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :cond_9
    const-string/jumbo v3, "h5PageStarted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 183
    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->handlePageStarted(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 184
    goto/16 :goto_1

    .line 186
    :cond_a
    const-string/jumbo v3, "h5PageError"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 187
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logPageError(Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 188
    :cond_b
    const-string/jumbo v3, "h5PageClosed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 189
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logPageClosed(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto/16 :goto_0

    .line 190
    :cond_c
    const-string/jumbo v3, "H5_AL_PAY_RESULT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 191
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logPayResult(Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 192
    :cond_d
    const-string/jumbo v3, "H5_AL_PAY_START"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 193
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logPayStart(Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 194
    :cond_e
    sget-object v3, Liov$a;->f:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 195
    sget-object v3, Liov$a;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 196
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 197
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->webViewInfo:Ljava/lang/String;

    invoke-virtual {v3, v4, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 195
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 198
    :cond_f
    sget-object v3, Liov$a;->e:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 199
    sget-object v3, Liov$a;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 200
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v5, "result"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 201
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v5, "finalUrl"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 202
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->webViewInfo:Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 199
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    move v3, v4

    .line 203
    goto/16 :goto_1

    .line 204
    :cond_10
    sget-object v3, Liov$a;->j:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 205
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logShareResult(Lcom/alibaba/fastjson/JSONObject;)V

    move v3, v4

    .line 206
    goto/16 :goto_1

    .line 207
    :cond_11
    sget-object v3, Liov$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 208
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logFavoritesResult(Lcom/alibaba/fastjson/JSONObject;)V

    move v3, v4

    .line 209
    goto/16 :goto_1

    .line 210
    :cond_12
    sget-object v3, Liov$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 211
    sget-object v3, Liov$a;->b:Ljava/lang/String;

    const-string/jumbo v5, "itemName"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 212
    goto/16 :goto_1

    .line 213
    :cond_13
    sget-object v3, Liov$a;->o:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 214
    sget-object v3, Liov$a;->o:Ljava/lang/String;

    invoke-direct {p0, v3, v8}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 215
    goto/16 :goto_1

    .line 216
    :cond_14
    const-string/jumbo v3, "setClipboard"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 217
    const-string/jumbo v3, "setClipboard"

    invoke-direct {p0, v3, v8}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 218
    goto/16 :goto_1

    .line 219
    :cond_15
    sget-object v3, Liov$a;->k:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 220
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logSessionFromNative(Lcom/alibaba/fastjson/JSONObject;)V

    move v3, v4

    .line 221
    goto/16 :goto_1

    .line 222
    :cond_16
    sget-object v3, Liov$a;->l:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 223
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logSessionToNative()V

    move v3, v4

    .line 224
    goto/16 :goto_1

    .line 225
    :cond_17
    sget-object v3, Liov$a;->q:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 226
    sget-object v3, Liov$a;->q:Ljava/lang/String;

    invoke-direct {p0, v3, v8}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 227
    goto/16 :goto_1

    .line 228
    :cond_18
    sget-object v3, Liov$a;->g:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 229
    sget-object v3, Liov$a;->g:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 230
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    sget-object v5, Lcom/alipay/mobile/nebula/log/H5Logger;->DIAGNOSE:Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v5}, Lior;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 231
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v5, "errorType"

    const-string/jumbo v6, "BizError"

    invoke-virtual {v3, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v5, "errorCode"

    const-string/jumbo v6, "errorCode"

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 232
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 229
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    move v3, v4

    .line 233
    goto/16 :goto_1

    .line 234
    :cond_19
    sget-object v3, Liov$a;->n:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 235
    sget-object v3, Liov$a;->n:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 236
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    sget-object v5, Lcom/alipay/mobile/nebula/log/H5Logger;->MONITOR:Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v5}, Lior;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 237
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v5, "result"

    const-string/jumbo v6, "result"

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v5, "url"

    const-string/jumbo v6, "url"

    .line 238
    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 239
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 235
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    move v3, v4

    .line 240
    goto/16 :goto_1

    .line 241
    :cond_1a
    sget-object v3, Liov$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 242
    sget-object v3, Liov$a;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 243
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/nebula/log/H5Logger;->DIAGNOSE:Ljava/lang/String;

    invoke-virtual {v3, v4, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v4}, Lior;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 244
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "requestUrl"

    const-string/jumbo v6, "requestUrl"

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 245
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 242
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    move v3, v5

    .line 246
    goto/16 :goto_1

    .line 247
    :cond_1b
    const-string/jumbo v3, "H5_GETLOCATION_RESULT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 248
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logGetLocationResult(Lcom/alibaba/fastjson/JSONObject;)V

    move v3, v4

    .line 249
    goto/16 :goto_1

    .line 250
    :cond_1c
    const-string/jumbo v3, "pushWindow"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 251
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logPushWindow(Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 252
    :cond_1d
    const-string/jumbo v3, "remoteLog"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 253
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->handleRemoteLog(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    move v3, v4

    .line 254
    goto/16 :goto_1

    .line 255
    :cond_1e
    const-string/jumbo v3, "remoteLogging"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->remoteLogging(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    move v3, v4

    .line 257
    goto/16 :goto_1

    .line 258
    :cond_1f
    sget-object v3, Liov$a;->m:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 259
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logNetworkPerformanceError(Lcom/alibaba/fastjson/JSONObject;)V

    move v3, v4

    .line 260
    goto/16 :goto_1

    .line 261
    :cond_20
    const-string/jumbo v3, "h5PageAbnormal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 262
    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->reportAbnormal:Z

    if-eqz v3, :cond_21

    move v3, v4

    .line 263
    goto/16 :goto_1

    .line 265
    :cond_21
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->reportAbnormal:Z

    .line 266
    const-string/jumbo v3, "errorType"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->errorType:Ljava/lang/String;

    .line 267
    const-string/jumbo v3, "errorCode"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->blankErrorCode:I

    move v3, v4

    .line 268
    goto/16 :goto_1

    .line 269
    :cond_22
    const-string/jumbo v3, "reportH5Abnormal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 270
    if-eqz v2, :cond_23

    .line 271
    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageAbnormal:Lcom/alibaba/fastjson/JSONArray;

    .line 272
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->reportAbnormal:Z

    :cond_23
    move v3, v4

    .line 274
    goto/16 :goto_1

    .line 275
    :cond_24
    const-string/jumbo v3, "monitorH5Performance"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 276
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->handleMonitorPerformance(Lcom/alibaba/fastjson/JSONObject;)V

    move v3, v5

    .line 277
    goto/16 :goto_1

    .line 278
    :cond_25
    const-string/jumbo v3, "h5PageDownloadApk"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 279
    const-string/jumbo v3, "H5_AL_DOWNLOAD_APK"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 280
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v5, "apkurl"

    const-string/jumbo v6, "url"

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v5, "contentLength"

    const-string/jumbo v6, "contentLength"

    .line 281
    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getLong(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v5, "inApkWhiteList"

    const-string/jumbo v6, "inApkWhiteList"

    .line 282
    invoke-static {v2, v6, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 283
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v5}, Lior;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 279
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    move v3, v4

    .line 284
    goto/16 :goto_1

    .line 285
    :cond_26
    const-string/jumbo v3, "h5PageInterceptScheme"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 286
    const-string/jumbo v3, "H5_AL_INTERCEPT_SCHEME"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 287
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "url"

    const-string/jumbo v6, "url"

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "scheme"

    const-string/jumbo v6, "scheme"

    .line 288
    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "type"

    const-string/jumbo v6, "type"

    .line 289
    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 290
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v4}, Lior;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 286
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 291
    :cond_27
    const-string/jumbo v3, "h5PageQueryPP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 292
    const-string/jumbo v3, "H5_AL_QUERY_PP"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 293
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "queryUrl"

    const-string/jumbo v6, "queryUrl"

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "queryParam"

    const-string/jumbo v6, "queryParam"

    .line 294
    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "statusCode"

    const-string/jumbo v6, "statusCode"

    .line 295
    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 296
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v4}, Lior;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 292
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 297
    :cond_28
    const-string/jumbo v3, "h5PageQueryPPCost"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 298
    const-string/jumbo v3, "H5_AL_QUERY_PP_COST"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 299
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "httpcost"

    const-string/jumbo v6, "httpcost"

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 300
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v4}, Lior;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 298
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 301
    :cond_29
    const-string/jumbo v3, "h5PageJumpPP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 302
    const-string/jumbo v3, "H5_AL_JUMP_PP"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 303
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "detailUrl"

    const-string/jumbo v6, "detailUrl"

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "origin"

    const-string/jumbo v6, "origin"

    .line 304
    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "type"

    const-string/jumbo v6, "type"

    .line 305
    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 306
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v4}, Lior;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 302
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 307
    :cond_2a
    const-string/jumbo v3, "h5PageJumpPPDownload"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 308
    const-string/jumbo v3, "H5_AL_JUMP_PP_DOWNLOAD"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 309
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "downloadUrl"

    const-string/jumbo v6, "downloadUrl"

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "type"

    const-string/jumbo v6, "type"

    .line 310
    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 311
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v4}, Lior;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 308
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 312
    :cond_2b
    const-string/jumbo v3, "h5PageJumpPPDownloadSuccess"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 313
    const-string/jumbo v3, "H5_AL_JUMP_PP_DOWNLOAD_SUCCESS"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 314
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "type"

    const-string/jumbo v6, "type"

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 315
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v4}, Lior;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 313
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 316
    :cond_2c
    const-string/jumbo v3, "H5_VC_OverLimit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 317
    const-string/jumbo v3, "H5_VC_OverLimit"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 318
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "urls"

    const-string/jumbo v6, "urls"

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 319
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "usedMemory"

    const-string/jumbo v6, "usedMemory"

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "totalMemory"

    const-string/jumbo v6, "totalMemory"

    .line 320
    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 321
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 317
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 322
    :cond_2d
    const-string/jumbo v3, "H5_AL_PAGE_RESUME"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 323
    const-string/jumbo v3, "H5_AL_PAGE_RESUME"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 324
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 323
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 325
    :cond_2e
    const-string/jumbo v3, "H5_DOWNLOAD_APK_RESULT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 326
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logDownloadApkResult(Lcom/alibaba/fastjson/JSONObject;)V

    move v3, v4

    .line 327
    goto/16 :goto_1

    .line 328
    :cond_2f
    const-string/jumbo v3, "H5_FILE_DOWNLOAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 329
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logFileDownload(Lcom/alibaba/fastjson/JSONObject;)V

    move v3, v4

    .line 330
    goto/16 :goto_1

    .line 331
    :cond_30
    const-string/jumbo v3, "H5_PAGE_JSAPI_LOGIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 332
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logJSAPILogin(Lcom/alibaba/fastjson/JSONObject;)V

    move v3, v4

    .line 333
    goto/16 :goto_1

    .line 334
    :cond_31
    sget-object v3, Liov$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 335
    sget-object v3, Liov$a;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 336
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 337
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "content"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 338
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 335
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 339
    :cond_32
    const-string/jumbo v3, "h5PagePause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 340
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->handlePagePause(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto/16 :goto_0

    .line 341
    :cond_33
    const-string/jumbo v3, "h5PageBack"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 342
    const-string/jumbo v3, "H5LoggerPlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "H5_PAGE_BACK logPageEndWithSpmId "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " spmBizType:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->spmBizType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " chInfo:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->chInfo:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " token:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 4933
    iget-object v6, v6, Lior;->aq:Ljava/lang/String;

    .line 343
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 342
    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->endSpm(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto/16 :goto_0

    .line 345
    :cond_34
    const-string/jumbo v3, "keepAlivePagePerformance"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 346
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logH5Performance:Z

    .line 348
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    if-eqz v3, :cond_35

    .line 349
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 350
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "fromKeepAlive"

    const-string/jumbo v5, "1"

    invoke-virtual {v1, v3, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    sget-object v5, Liov$a;->k:Ljava/lang/String;

    invoke-interface {v3, v5, v1}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_35
    move v3, v4

    .line 353
    goto/16 :goto_1

    .line 354
    :cond_36
    const-string/jumbo v3, "dslErrorLog"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logDslError()V

    move v3, v4

    .line 356
    goto/16 :goto_1
.end method

.method public onInitialize(Liob;)V
    .locals 5
    .param p1, "coreNode"    # Liob;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 120
    check-cast p1, Liop;

    .end local p1    # "coreNode":Liob;
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    .line 121
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, "param":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v1}, Liop;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->webViewInfo:Ljava/lang/String;

    .line 123
    const-string/jumbo v1, "safePayContext"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->bizContext:Ljava/lang/String;

    .line 124
    const-string/jumbo v1, "bizScenario"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->bizScenario:Ljava/lang/String;

    .line 125
    const-string/jumbo v1, "offlineHost"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->isOfflineApp:Z

    .line 126
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v1}, Liop;->getPageData()Lior;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    .line 127
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    const-string/jumbo v3, "bizScenario"

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->bizScenario:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lior;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    const-string/jumbo v3, "isOfflineApp"

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->isOfflineApp:Z

    invoke-virtual {v1, v3, v4}, Lior;->a(Ljava/lang/String;Z)V

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v1}, Liop;->getAvailablePageData()Linv;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->availablePageData:Linv;

    .line 132
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->reportAbnormal:Z

    .line 133
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->getBugmeViewId(Liop;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->bugmeViewId:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->bizScenario:Ljava/lang/String;

    sput-object v1, Lcom/alipay/mobile/nebula/log/H5Logger;->bizScenario:Ljava/lang/String;

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->mExtraJSReport:Ljava/util/HashMap;

    .line 136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->mPerformanceMap:Ljava/util/HashMap;

    .line 137
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v1}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v1}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v1, v2, :cond_3

    .line 139
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    const-string/jumbo v2, "AndroidWebView"

    invoke-virtual {v1, v2}, Lior;->h(Ljava/lang/String;)V

    .line 146
    :cond_1
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5LogProvider:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 147
    return-void

    :cond_2
    move v1, v2

    .line 125
    goto :goto_0

    .line 140
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v1}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v1, v2, :cond_4

    .line 141
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    const-string/jumbo v2, "UCWebView"

    invoke-virtual {v1, v2}, Lior;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    invoke-interface {v1}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nebula/webview/WebViewType;->RN_VIEW:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v1, v2, :cond_1

    .line 143
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->pageData:Lior;

    const-string/jumbo v2, "RNView"

    invoke-virtual {v1, v2}, Lior;->h(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 1692
    const-string/jumbo v0, "h5ToolbarBack"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1693
    const-string/jumbo v0, "h5ToolbarClose"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1694
    const-string/jumbo v0, "h5ToolbarMenu"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1695
    const-string/jumbo v0, "h5ToolbarReload"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1696
    const-string/jumbo v0, "h5ToolbarMenuBt"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1699
    const-string/jumbo v0, "optionMenu"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1700
    const-string/jumbo v0, "subtitleClick"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1703
    const-string/jumbo v0, "h5PageStarted"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1704
    const-string/jumbo v0, "h5PageClosed"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1705
    const-string/jumbo v0, "h5PageError"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1706
    const-string/jumbo v0, "pushWindow"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1707
    const-string/jumbo v0, "h5PageAbnormal"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1709
    const-string/jumbo v0, "H5_AL_PAY_RESULT"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1710
    const-string/jumbo v0, "H5_AL_PAY_START"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1711
    sget-object v0, Liov$a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1712
    sget-object v0, Liov$a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1713
    sget-object v0, Liov$a;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1714
    sget-object v0, Liov$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1715
    const-string/jumbo v0, "h5PageCreateWebView"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1717
    sget-object v0, Liov$a;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1718
    sget-object v0, Liov$a;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1720
    sget-object v0, Liov$a;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1721
    sget-object v0, Liov$a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1722
    sget-object v0, Liov$a;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1723
    sget-object v0, Liov$a;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1724
    sget-object v0, Liov$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1725
    sget-object v0, Liov$a;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1726
    const-string/jumbo v0, "H5_AL_PAGE_RESUME"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1728
    const-string/jumbo v0, "H5_GETLOCATION_RESULT"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1730
    const-string/jumbo v0, "remoteLog"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1731
    const-string/jumbo v0, "remoteLogging"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1733
    sget-object v0, Liov$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1734
    sget-object v0, Liov$a;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1735
    const-string/jumbo v0, "reportH5Abnormal"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1736
    const-string/jumbo v0, "monitorH5Performance"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1737
    const-string/jumbo v0, "h5PageDownloadApk"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1738
    const-string/jumbo v0, "h5PageInterceptScheme"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1739
    const-string/jumbo v0, "h5PageQueryPP"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1740
    const-string/jumbo v0, "h5PageQueryPPCost"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1741
    const-string/jumbo v0, "h5PageJumpPP"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1742
    const-string/jumbo v0, "h5PageJumpPPDownload"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1743
    const-string/jumbo v0, "h5PageJumpPPDownloadSuccess"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1744
    const-string/jumbo v0, "H5_DOWNLOAD_APK_RESULT"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1745
    const-string/jumbo v0, "H5_FILE_DOWNLOAD"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1746
    const-string/jumbo v0, "H5_PAGE_JSAPI_LOGIN"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1747
    const-string/jumbo v0, "H5_VC_OverLimit"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1748
    sget-object v0, Liov$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1749
    const-string/jumbo v0, "h5PagePause"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1750
    const-string/jumbo v0, "reportData"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1751
    const-string/jumbo v0, "mtBizReport"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1752
    const-string/jumbo v0, "h5PageBack"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1754
    const-string/jumbo v0, "pageMonitor"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1755
    const-string/jumbo v0, "h5PageResume"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1756
    const-string/jumbo v0, "keepAlivePagePerformance"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1757
    const-string/jumbo v0, "dslErrorLog"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 1758
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h5Page:Liop;

    .line 152
    return-void
.end method
