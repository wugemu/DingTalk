.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;
.super Ljava/lang/Object;
.source "H5PreferAppList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5PreferAppList"

.field public static final defaultTime:J = 0xa4cb80L

.field private static instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList; = null

.field public static final nbprefer:Ljava/lang/String; = "nbprefer"

.field public static final nbsn:Ljava/lang/String; = "nbsn"

.field public static final nbsv:Ljava/lang/String; = "nbsv"

.field private static tinyProcessMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private preferList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->tinyProcessMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getPreferAppListStr()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 52
    .local v3, "savedList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 53
    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->checkExpired()V

    .line 56
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 57
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 58
    .local v1, "h5AppCenterPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    if-eqz v1, :cond_1

    .line 59
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getCommonResourceAppList()Ljava/util/Set;

    move-result-object v0

    .line 60
    .local v0, "appSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 61
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 62
    .local v2, "id":Ljava/lang/String;
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->tinyProcessMap:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 66
    .end local v0    # "appSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->deleteAppInfoAndInstallPath(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkExpired()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 73
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 75
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;

    .line 76
    .local v2, "value":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->getSaveTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->isExpired(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->getNbsv()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->deleteAllAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 81
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;>;"
    .end local v2    # "value":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->savePreferAppList()V

    goto :goto_0
.end method

.method private deleteAllAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const-string/jumbo v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList$1;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private deleteAppInfoAndInstallPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 220
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 221
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v2, :cond_0

    .line 222
    invoke-interface {v2, p1, p2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "installPath":Ljava/lang/String;
    invoke-interface {v2, p1, p2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getDownloadLocalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "downloadPath":Ljava/lang/String;
    const-string/jumbo v4, "H5PreferAppList"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "deleteAllAppInfo, appId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " installPath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " downloadPath :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 227
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 230
    .end local v0    # "downloadPath":Ljava/lang/String;
    .end local v3    # "installPath":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v1

    .line 231
    .local v1, "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    if-eqz v1, :cond_1

    .line 232
    const-string/jumbo v4, "H5PreferAppList"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "deleteDBAppInfo, appId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->deleteAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_1
    return-void
.end method

.method public static enablePreferList()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 294
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 295
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 296
    const-string/jumbo v4, "h5_preferExpired"

    invoke-interface {v0, v4}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 297
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 298
    const-string/jumbo v4, "switch"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "isOpen":Ljava/lang/String;
    const-string/jumbo v4, "off"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 300
    const/4 v3, 0x0

    .line 308
    .end local v1    # "isOpen":Ljava/lang/String;
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return v3
.end method

.method public static enableUsePrefer(Landroid/os/Bundle;)Z
    .locals 3
    .param p0, "param"    # Landroid/os/Bundle;

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "prefer":Z
    if-eqz p0, :cond_0

    const-string/jumbo v1, "nbprefer"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "yes"

    const-string/jumbo v2, "nbprefer"

    .line 240
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    const/4 v0, 0x1

    .line 243
    :cond_0
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;
    .locals 2

    .prologue
    .line 85
    const-class v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    .line 88
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getNbsn(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 366
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;

    .line 367
    .local v0, "preferAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->getNbsn()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "preferNbsn":Ljava/lang/String;
    const-string/jumbo v2, "H5PreferAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " preferNbsn : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .end local v1    # "preferNbsn":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private getPreferAppListStr()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 253
    const-string/jumbo v1, "h5_prefer_app_list"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "preferListStr":Ljava/lang/String;
    const-string/jumbo v1, "H5PreferAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get preferList: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-object v0
.end method

.method private jsonToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p1, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 313
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 314
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 315
    :cond_0
    const/4 v5, 0x0

    .line 330
    :goto_0
    return-object v5

    .line 317
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 318
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;>;"
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 319
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 321
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 322
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 323
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;

    invoke-static {v7, v8}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;

    .line 324
    .local v6, "value":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 326
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "value":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "H5PreferAppList"

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v7, "H5PreferAppList"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "parse map : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private savePreferAppList()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 247
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "preferListStr":Ljava/lang/String;
    const-string/jumbo v1, "H5PreferAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "set preferList: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v1, "h5_prefer_app_list"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public static startCheckPermissionScheme(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 13
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .prologue
    .line 334
    const-string/jumbo v4, "alipays://platformapi/startapp?appId=20001101&token=preferconvert&scheme="

    .line 335
    .local v4, "goSchemeStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v3, "encodeSchemeBuilder":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "alipays://platformapi/startapp?appId="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 338
    .local v0, "copyParams":Landroid/os/Bundle;
    iget-object v10, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    if-eqz v10, :cond_0

    .line 339
    iget-object v10, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    invoke-virtual {v10}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "copyParams":Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 341
    .restart local v0    # "copyParams":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v10, "nbsource"

    const-string/jumbo v11, "debug"

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string/jumbo v10, "nbsn"

    iget-object v11, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v11}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getNbsn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string/jumbo v10, "nbsv"

    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    move-result-object v11

    iget-object v12, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getPreferVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 346
    .local v8, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 348
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    :try_start_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 349
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 350
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 351
    .local v9, "value":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "&"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 354
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "H5PreferAppList"

    invoke-static {v10, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v10, "H5PreferAppList"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "encodeSchemeBuilder : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "encodeScheme":Ljava/lang/String;
    const-class v10, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 359
    .local v5, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    if-eqz v5, :cond_2

    .line 360
    const-string/jumbo v10, "H5PreferAppList"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "scheme : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;)Z

    .line 363
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "nbsn"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p2, v2, v3, p3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->savePreferAppList()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearPreferAppList()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 260
    const-string/jumbo v0, "h5_prefer_app_list"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public clearProcessCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->tinyProcessMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_0
    return-void
.end method

.method public declared-synchronized contains(Ljava/lang/String;)Z
    .locals 10
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 143
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 144
    sget-object v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->tinyProcessMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 145
    .local v1, "containBool":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 185
    .end local v1    # "containBool":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 149
    .restart local v1    # "containBool":Ljava/lang/Boolean;
    :cond_1
    :try_start_1
    const-class v7, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 150
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    .local v2, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v2, :cond_2

    .line 153
    :try_start_2
    const-class v7, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 154
    invoke-virtual {v2, v7}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 155
    .local v3, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    if-eqz v3, :cond_2

    .line 156
    invoke-interface {v3, p1}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->containPreferAppId(Ljava/lang/String;)Z

    move-result v0

    .line 157
    .local v0, "contain":Z
    sget-object v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->tinyProcessMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 160
    .end local v0    # "contain":Z
    .end local v3    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :catch_0
    move-exception v5

    .line 161
    .local v5, "throwable":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v7, "H5PreferAppList"

    invoke-static {v7, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v5    # "throwable":Ljava/lang/Throwable;
    :cond_2
    move v0, v6

    .line 185
    goto :goto_0

    .line 165
    .end local v1    # "containBool":Ljava/lang/Boolean;
    .end local v2    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v0, v6

    .line 166
    goto :goto_0

    .line 168
    :cond_4
    iget-object v7, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 169
    .restart local v0    # "contain":Z
    if-eqz v0, :cond_0

    .line 170
    iget-object v7, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;

    .line 171
    .local v4, "info":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    if-nez v4, :cond_5

    move v0, v6

    .line 172
    goto :goto_0

    .line 175
    :cond_5
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->getSaveTime()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->isExpired(J)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->remove(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->getNbsv()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->deleteAllAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v6

    .line 178
    goto :goto_0

    .line 143
    .end local v0    # "contain":Z
    .end local v4    # "info":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public deleteAppInfoWithAppId(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;

    .line 212
    .local v0, "info":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->getNbsv()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->deleteAppInfoAndInstallPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized getPreferVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    const-class v4, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 117
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v0, :cond_0

    .line 120
    :try_start_1
    const-class v4, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 121
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 122
    .local v1, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    if-eqz v1, :cond_0

    .line 123
    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->getPreferVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 139
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .end local v1    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :goto_0
    monitor-exit p0

    return-object v4

    .line 125
    .restart local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :catch_0
    move-exception v3

    .line 126
    .local v3, "throwable":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v4, "H5PreferAppList"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :cond_0
    const-string/jumbo v4, ""

    goto :goto_0

    .line 130
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 131
    const-string/jumbo v4, ""

    goto :goto_0

    .line 133
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;

    .line 134
    .local v2, "h5PreferAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    if-nez v2, :cond_3

    .line 135
    const-string/jumbo v4, ""

    goto :goto_0

    .line 137
    :cond_3
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->getNbsv()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 115
    .end local v2    # "h5PreferAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public isExpired(J)Z
    .locals 13
    .param p1, "saveTime"    # J

    .prologue
    .line 265
    const-class v7, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 266
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v2, :cond_2

    .line 267
    const-string/jumbo v7, "h5_preferExpired"

    invoke-interface {v2, v7}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 268
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 269
    const/4 v6, 0x0

    .line 271
    .local v6, "time":I
    :try_start_0
    const-string/jumbo v7, "time"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 275
    :goto_0
    if-lez v6, :cond_0

    .line 276
    mul-int/lit16 v7, v6, 0x3e8

    int-to-long v0, v7

    .line 287
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "time":I
    .local v0, "expiredTime":J
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long v10, p1, v0

    cmp-long v7, v8, v10

    if-lez v7, :cond_3

    const/4 v4, 0x1

    .line 288
    .local v4, "result":Z
    :goto_2
    const-string/jumbo v7, "H5PreferAppList"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "result : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " currentTime "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " saveTime : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " expiredTime : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return v4

    .line 272
    .end local v0    # "expiredTime":J
    .end local v4    # "result":Z
    .restart local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v6    # "time":I
    :catch_0
    move-exception v5

    .line 273
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v7, "H5PreferAppList"

    invoke-static {v7, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 278
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_0
    const-wide/32 v0, 0xa4cb80

    .line 280
    .restart local v0    # "expiredTime":J
    goto :goto_1

    .line 281
    .end local v0    # "expiredTime":J
    .end local v6    # "time":I
    :cond_1
    const-wide/32 v0, 0xa4cb80

    .restart local v0    # "expiredTime":J
    goto :goto_1

    .line 284
    .end local v0    # "expiredTime":J
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    const-wide/32 v0, 0xa4cb80

    .restart local v0    # "expiredTime":J
    goto :goto_1

    .line 287
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 103
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;

    .line 104
    .local v0, "info":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->preferList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->savePreferAppList()V

    .line 110
    const-string/jumbo v1, "H5PreferAppList"

    const-string/jumbo v2, "also remove from H5DevAppList"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->remove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    .end local v0    # "info":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
