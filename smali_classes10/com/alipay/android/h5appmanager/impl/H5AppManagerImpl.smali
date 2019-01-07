.class public Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;
.super Ljava/lang/Object;
.source "H5AppManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static DEBUG:Z = false

.field public static final HPM_FILE_NAME:Ljava/lang/String; = "hpmfile.json"

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "H5AppManagerImpl"


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

.field private ctx:Landroid/content/Context;

.field private executor:Ljava/util/concurrent/Executor;

.field private fastSearchMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private h5AppList:Lcom/alipay/android/h5appmanager/impl/H5AppList;

.field private h5AppService:Lcom/alipay/android/h5appmanager/impl/H5AppService;

.field private h5AppStore:Ljava/io/File;

.field private handler:Landroid/os/Handler;

.field private httpClient:Landroid/net/http/AndroidHttpClient;

.field private lastFetchH5Apps:J

.field private lastUpdateFastSearchMap:J

.field private final mLock:Ljava/lang/Object;

.field private mMonitorListener:Lcom/alipay/android/h5appmanager/TrafficMonitorListener;

.field private mMonitorTag:I

.field private mPrebuiltAssetPath:Ljava/lang/String;

.field private final mTimeout:I

.field private prebuiltApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private tracker:Lcom/alipay/android/h5appmanager/tracker/H5Tracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->cachedWebResources:Ljava/util/Map;

    .line 81
    iput-wide v2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->lastUpdateFastSearchMap:J

    .line 82
    iput-wide v2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->lastFetchH5Apps:J

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->prebuiltApps:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->fastSearchMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->handler:Landroid/os/Handler;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->mMonitorTag:I

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->mLock:Ljava/lang/Object;

    .line 107
    const v0, 0xc350

    iput v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->mTimeout:I

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Ljava/lang/String;)Lcom/alipay/android/h5appmanager/AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getAppInfoFromLocalStore(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmDecompression(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->persistentVersionInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmDownload(ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;
    .param p1, "x1"    # Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->installPrebuiltApp(Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getAppInfosByIds(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Ljava/util/Collection;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->downloadApps(Ljava/util/Collection;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->addTrafficTag()V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;)Landroid/net/http/AndroidHttpClient;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->httpClient:Landroid/net/http/AndroidHttpClient;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;)Lcom/alipay/android/h5appmanager/impl/H5AppService;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->h5AppService:Lcom/alipay/android/h5appmanager/impl/H5AppService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;
    .param p1, "x1"    # J

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->lastFetchH5Apps:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Lcom/alipay/android/h5appmanager/impl/H5AppList;)Lcom/alipay/android/h5appmanager/impl/H5AppList;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;
    .param p1, "x1"    # Lcom/alipay/android/h5appmanager/impl/H5AppList;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->h5AppList:Lcom/alipay/android/h5appmanager/impl/H5AppList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Ljava/lang/String;J)Lcom/alipay/android/h5appmanager/AppInfo;
    .locals 2
    .param p0, "x0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->syncToFastSearchMap(Ljava/lang/String;J)Lcom/alipay/android/h5appmanager/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->fastSearchMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private addTrafficTag()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1828
    iget v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->mMonitorTag:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1829
    iget v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->mMonitorTag:I

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1831
    :cond_0
    return-void
.end method

.method private appListFromBackendAvailable()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->h5AppList:Lcom/alipay/android/h5appmanager/impl/H5AppList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->h5AppList:Lcom/alipay/android/h5appmanager/impl/H5AppList;

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppList;->appList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->h5AppList:Lcom/alipay/android/h5appmanager/impl/H5AppList;

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppList;->appList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildTarFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getLocalStorePathByAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".tar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildVersionFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getLocalStorePathByAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "version.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkWhetherHasInitialized(Ljava/util/concurrent/Executor;Lcom/alipay/android/h5appmanager/tracker/H5Tracker;Landroid/content/Context;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "tracker"    # Lcom/alipay/android/h5appmanager/tracker/H5Tracker;
    .param p3, "ctx"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 401
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 402
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "The original parameters[executor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " tracker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ctx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "prompt":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    .end local v0    # "prompt":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private convertJsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .param p1, "tmp"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 766
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 767
    .local v2, "tmpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 768
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 769
    .local v1, "keyItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 770
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 771
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 774
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keyItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    return-object v2
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 779
    const/4 v2, 0x0

    .line 780
    .local v2, "input":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 782
    .local v4, "output":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 783
    .end local v2    # "input":Ljava/io/InputStream;
    .local v3, "input":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 784
    .end local v4    # "output":Ljava/io/OutputStream;
    .local v5, "output":Ljava/io/OutputStream;
    const/16 v6, 0x400

    :try_start_2
    new-array v0, v6, [B

    .line 786
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-lez v1, :cond_0

    .line 787
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 790
    .end local v0    # "buf":[B
    .end local v1    # "bytesRead":I
    :catchall_0
    move-exception v6

    move-object v4, v5

    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 791
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    throw v6

    .line 790
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v0    # "buf":[B
    .restart local v1    # "bytesRead":I
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 791
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 792
    return-void

    .line 790
    .end local v0    # "buf":[B
    .end local v1    # "bytesRead":I
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    goto :goto_1

    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private copyFile(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)V
    .locals 9
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "input"    # Ljava/io/InputStream;
    .param p3, "dest"    # Ljava/io/File;
    .param p4, "cb"    # Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 797
    const/4 v3, 0x0

    .line 798
    .local v3, "output":Ljava/io/OutputStream;
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 799
    .local v6, "totalSize":I
    const/4 v2, 0x0

    .line 801
    .local v2, "currentWrite":I
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 802
    .end local v3    # "output":Ljava/io/OutputStream;
    .local v4, "output":Ljava/io/OutputStream;
    const/16 v7, 0x400

    :try_start_1
    new-array v0, v7, [B

    .line 804
    .local v0, "buf":[B
    :cond_0
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-lez v1, :cond_1

    .line 805
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 806
    add-int/2addr v2, v1

    .line 807
    if-eqz p4, :cond_0

    .line 808
    mul-int/lit8 v7, v2, 0x64

    div-int/2addr v7, v6

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 809
    .local v5, "percent":I
    iget-object v7, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->handler:Landroid/os/Handler;

    new-instance v8, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$4;

    invoke-direct {v8, p0, p4, p1, v5}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$4;-><init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 818
    .end local v0    # "buf":[B
    .end local v1    # "bytesRead":I
    .end local v5    # "percent":I
    :catchall_0
    move-exception v7

    move-object v3, v4

    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v3    # "output":Ljava/io/OutputStream;
    :goto_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 819
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    throw v7

    .line 818
    .end local v3    # "output":Ljava/io/OutputStream;
    .restart local v0    # "buf":[B
    .restart local v1    # "bytesRead":I
    .restart local v4    # "output":Ljava/io/OutputStream;
    :cond_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 819
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 820
    return-void

    .line 818
    .end local v0    # "buf":[B
    .end local v1    # "bytesRead":I
    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v3    # "output":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    goto :goto_1
.end method

.method private createH5AppService()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->h5AppService:Lcom/alipay/android/h5appmanager/impl/H5AppService;

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Lcom/alipay/android/h5appmanager/impl/H5AppService;

    invoke-direct {v0}, Lcom/alipay/android/h5appmanager/impl/H5AppService;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->h5AppService:Lcom/alipay/android/h5appmanager/impl/H5AppService;

    .line 558
    :cond_0
    return-void
.end method

.method private createH5AppStore()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 567
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/h5appmanager/H5AppManager;->getLocalStorePath()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "localStorePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 569
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->h5AppStore:Ljava/io/File;

    .line 574
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->h5AppStore:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 575
    return-void

    .line 572
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->ctx:Landroid/content/Context;

    const-string/jumbo v2, "h5apps"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->h5AppStore:Ljava/io/File;

    goto :goto_0
.end method

.method private createHttpClient()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->h5AppStore:Ljava/io/File;

    if-nez v0, :cond_0

    .line 562
    const-string/jumbo v0, "Android"

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->httpClient:Landroid/net/http/AndroidHttpClient;

    .line 563
    invoke-direct {p0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->createH5AppStore()V

    .line 565
    :cond_0
    return-void
.end method

.method private doInstallPrebuiltApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)Z
    .locals 11
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "assetPath"    # Ljava/lang/String;
    .param p3, "cb"    # Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x1

    .line 824
    iget-object v7, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->executor:Ljava/util/concurrent/Executor;

    iget-object v8, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->tracker:Lcom/alipay/android/h5appmanager/tracker/H5Tracker;

    iget-object v9, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->ctx:Landroid/content/Context;

    invoke-direct {p0, v7, v8, v9}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->checkWhetherHasInitialized(Ljava/util/concurrent/Executor;Lcom/alipay/android/h5appmanager/tracker/H5Tracker;Landroid/content/Context;)V

    .line 825
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 826
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "You shouldn\'t invoke migratePrebuiltApp() in UI thread, or local app is already existed!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 831
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getLocalStorePathByAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 832
    invoke-direct {p0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getInfoFromLocalStore(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 833
    .local v5, "localInfo":Lorg/json/JSONObject;
    if-eqz v5, :cond_4

    iget-object v7, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->fastSearchMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 834
    iget-object v7, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->fastSearchMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/h5appmanager/AppInfo;

    .line 836
    .local v2, "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    :try_start_0
    const-string/jumbo v7, "version"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 837
    const-string/jumbo v7, "version"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    .line 840
    :cond_1
    const-string/jumbo v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 841
    const-string/jumbo v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/alipay/android/h5appmanager/AppInfo;->name:Ljava/lang/String;

    .line 843
    :cond_2
    const-string/jumbo v7, "launchParams"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 844
    const-string/jumbo v7, "launchParams"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->convertJsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v7

    iput-object v7, v2, Lcom/alipay/android/h5appmanager/AppInfo;->launch_params:Ljava/util/Map;

    .line 846
    :cond_3
    const-string/jumbo v7, "extension"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 847
    const-string/jumbo v7, "extension"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->convertJsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v7

    iput-object v7, v2, Lcom/alipay/android/h5appmanager/AppInfo;->extend_info:Ljava/util/Map;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    .end local v2    # "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    .end local v5    # "localInfo":Lorg/json/JSONObject;
    :cond_4
    :goto_0
    return v10

    .line 849
    .restart local v2    # "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    .restart local v5    # "localInfo":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 850
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 856
    .end local v2    # "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v5    # "localInfo":Lorg/json/JSONObject;
    :cond_5
    iget-object v7, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->ctx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 857
    .local v4, "is":Ljava/io/InputStream;
    iget-object v8, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->h5AppStore:Ljava/io/File;

    monitor-enter v8

    .line 858
    :try_start_1
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->h5AppStore:Ljava/io/File;

    const-string/jumbo v9, "tmp.amr"

    invoke-direct {v6, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 859
    .local v6, "tmpAppStore":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "amrSrcFile":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getLocalStorePathByAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 861
    .local v1, "amrTargetDir":Ljava/lang/String;
    iget-object v7, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->prebuiltApps:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 862
    iget-object v7, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->prebuiltApps:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/android/h5appmanager/AppInfo;

    const/4 v9, 0x2

    iput v9, v7, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    .line 864
    :cond_6
    invoke-direct {p0, p1, v4, v6, p3}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->copyFile(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)V

    .line 865
    iget-object v7, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->prebuiltApps:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 866
    iget-object v7, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->prebuiltApps:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/android/h5appmanager/AppInfo;

    const/4 v9, 0x3

    iput v9, v7, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    .line 868
    :cond_7
    invoke-static {v0, v1}, Lcom/alipay/android/h5appmanager/impl/ZipUtil;->unzip(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;

    .line 869
    invoke-static {v6}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->delete(Ljava/io/File;)Z

    .line 871
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->persistentVersionInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    iget-object v7, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->prebuiltApps:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 874
    iget-object v7, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->prebuiltApps:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/android/h5appmanager/AppInfo;

    const/4 v9, 0x4

    iput v9, v7, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    .line 876
    :cond_8
    monitor-exit v8

    goto :goto_0

    .end local v0    # "amrSrcFile":Ljava/lang/String;
    .end local v1    # "amrTargetDir":Ljava/lang/String;
    .end local v6    # "tmpAppStore":Ljava/io/File;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method private downloadAndInstallApp(Lcom/alipay/android/h5appmanager/AppInfo;Ljava/io/File;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Ljava/lang/String;)Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;
    .locals 28
    .param p1, "app"    # Lcom/alipay/android/h5appmanager/AppInfo;
    .param p2, "saveFile"    # Ljava/io/File;
    .param p4, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            "Ljava/io/File;",
            "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;"
        }
    .end annotation

    .prologue
    .line 1364
    .local p3, "cb":Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;, "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    if-eqz p1, :cond_0

    .line 1365
    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "download app: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->url:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V

    .line 1368
    :cond_0
    new-instance v19, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;-><init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$1;)V

    .line 1369
    .local v19, "result":Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->success:Z

    .line 1370
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->url:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1371
    :cond_1
    if-nez p1, :cond_2

    const-string/jumbo v23, "AppInfo is null"

    :goto_0
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->errorDescription:Ljava/lang/String;

    .line 1499
    :goto_1
    return-object v19

    .line 1371
    :cond_2
    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "the url of app(id"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ") is invalid"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_0

    .line 1374
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->url:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->trafficStatsStart(Ljava/lang/String;)V

    .line 1376
    :try_start_0
    invoke-static {}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->startDate:Ljava/lang/String;

    .line 1377
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->url:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->url:Ljava/lang/String;

    .line 1380
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->url:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    check-cast v14, Ljava/net/HttpURLConnection;

    .line 1381
    .local v14, "httpConn":Ljava/net/HttpURLConnection;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1382
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1383
    const/16 v23, 0x2710

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1384
    const/16 v23, 0x2710

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1385
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    .line 1386
    .local v18, "responseCode":I
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    .line 1387
    .local v13, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v13, :cond_4

    .line 1388
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->responseHeader:Ljava/lang/String;

    .line 1391
    :cond_4
    const/16 v23, 0xc8

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 1392
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v10

    .line 1393
    .local v10, "contentType":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    .line 1395
    .local v9, "contentLength":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->url:Ljava/lang/String;

    move-object/from16 v24, v0

    int-to-long v0, v9

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmTraffic(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1397
    if-gtz v9, :cond_5

    .line 1398
    move-object/from16 v0, p1

    iget v9, v0, Lcom/alipay/android/h5appmanager/AppInfo;->size:I

    .line 1401
    :cond_5
    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "Content-Type = "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "Content-Length = "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1404
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    .line 1407
    .local v15, "inputStream":Ljava/io/InputStream;
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1409
    .local v16, "outputStream":Ljava/io/FileOutputStream;
    const/16 v20, 0x0

    .line 1411
    .local v20, "totalBytesRead":I
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v7, v0, [B

    .line 1412
    .local v7, "buffer":[B
    :cond_6
    :goto_2
    invoke-virtual {v15, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "bytesRead":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v8, v0, :cond_b

    .line 1414
    move-object/from16 v0, p1

    iget v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    .line 1415
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    .line 1417
    :cond_7
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v7, v1, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1418
    add-int v20, v20, v8

    .line 1419
    if-eqz p3, :cond_6

    if-lez v9, :cond_6

    .line 1420
    mul-int/lit8 v23, v20, 0x64

    div-int v23, v23, v9

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 1421
    .local v17, "percent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->handler:Landroid/os/Handler;

    move-object/from16 v23, v0

    new-instance v24, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$6;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$6;-><init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Lcom/alipay/android/h5appmanager/AppInfo;I)V

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1481
    .end local v7    # "buffer":[B
    .end local v8    # "bytesRead":I
    .end local v9    # "contentLength":I
    .end local v10    # "contentType":Ljava/lang/String;
    .end local v13    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v14    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v15    # "inputStream":Ljava/io/InputStream;
    .end local v16    # "outputStream":Ljava/io/FileOutputStream;
    .end local v17    # "percent":I
    .end local v18    # "responseCode":I
    .end local v20    # "totalBytesRead":I
    :catch_0
    move-exception v11

    .line 1482
    .local v11, "e":Ljava/lang/Exception;
    sget-boolean v23, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->DEBUG:Z

    if-eqz v23, :cond_8

    .line 1483
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1485
    :cond_8
    if-eqz p3, :cond_9

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->handler:Landroid/os/Handler;

    move-object/from16 v23, v0

    new-instance v24, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$7;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v11, v3}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$7;-><init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Ljava/lang/Exception;Lcom/alipay/android/h5appmanager/AppInfo;)V

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1493
    :cond_9
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->errorDescription:Ljava/lang/String;

    .line 1494
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_a

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, "hpm_unzip"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 1495
    const/16 v23, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmDecompression(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->url:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->trafficStatsEnd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1430
    .restart local v7    # "buffer":[B
    .restart local v8    # "bytesRead":I
    .restart local v9    # "contentLength":I
    .restart local v10    # "contentType":Ljava/lang/String;
    .restart local v13    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v14    # "httpConn":Ljava/net/HttpURLConnection;
    .restart local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v18    # "responseCode":I
    .restart local v20    # "totalBytesRead":I
    :cond_b
    :try_start_1
    invoke-static {}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->finishDate:Ljava/lang/String;

    .line 1431
    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->dataLength:I

    .line 1433
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 1434
    .local v6, "amrPath":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 1435
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 1437
    move-object/from16 v0, p1

    iget v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    .line 1438
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    .line 1442
    :cond_c
    move-object/from16 v0, p1

    iget v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    .line 1443
    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    .line 1445
    :cond_d
    move-object/from16 v0, p4

    invoke-static {v6, v0}, Lcom/alipay/android/h5appmanager/impl/ZipUtil;->unzip(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;

    move-result-object v22

    .line 1446
    .local v22, "zipResult":Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;->mZipResult:Z

    move/from16 v21, v0

    .line 1447
    .local v21, "unzipResult":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;->mCrcValue:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmCrc(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1449
    move/from16 v0, v21

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->unzipResult:Z

    .line 1450
    if-nez v21, :cond_f

    .line 1451
    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "unzip file: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " to target: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " failed!"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1452
    .local v12, "errorDescription":Ljava/lang/String;
    move-object/from16 v0, v19

    iput-object v12, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->errorDescription:Ljava/lang/String;

    .line 1453
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmDecompression(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    const-string/jumbo v23, "H5AppManagerImpl"

    move-object/from16 v0, v23

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    .end local v6    # "amrPath":Ljava/lang/String;
    .end local v7    # "buffer":[B
    .end local v8    # "bytesRead":I
    .end local v9    # "contentLength":I
    .end local v10    # "contentType":Ljava/lang/String;
    .end local v12    # "errorDescription":Ljava/lang/String;
    .end local v15    # "inputStream":Ljava/io/InputStream;
    .end local v16    # "outputStream":Ljava/io/FileOutputStream;
    .end local v20    # "totalBytesRead":I
    .end local v21    # "unzipResult":Z
    .end local v22    # "zipResult":Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;
    :cond_e
    :goto_4
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    .line 1458
    .restart local v6    # "amrPath":Ljava/lang/String;
    .restart local v7    # "buffer":[B
    .restart local v8    # "bytesRead":I
    .restart local v9    # "contentLength":I
    .restart local v10    # "contentType":Ljava/lang/String;
    .restart local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v20    # "totalBytesRead":I
    .restart local v21    # "unzipResult":Z
    .restart local v22    # "zipResult":Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;
    :cond_f
    move-object/from16 v0, p1

    iget v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    .line 1459
    const/16 v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    .line 1461
    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v25, ""

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmDecompression(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    if-eqz p3, :cond_11

    .line 1463
    const/16 v23, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;->onDone(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 1465
    :cond_11
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->success:Z

    .line 1467
    invoke-static {v6}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->delete(Ljava/lang/String;)Z

    .line 1471
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->persistentVersionInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1475
    .end local v6    # "amrPath":Ljava/lang/String;
    .end local v7    # "buffer":[B
    .end local v8    # "bytesRead":I
    .end local v9    # "contentLength":I
    .end local v10    # "contentType":Ljava/lang/String;
    .end local v15    # "inputStream":Ljava/io/InputStream;
    .end local v16    # "outputStream":Ljava/io/FileOutputStream;
    .end local v20    # "totalBytesRead":I
    .end local v21    # "unzipResult":Z
    .end local v22    # "zipResult":Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;
    :cond_12
    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "No file to download. Server replied HTTP code: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1476
    if-eqz p3, :cond_e

    .line 1477
    new-instance v23, Lorg/apache/http/HttpException;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string/jumbo v25, "Server replied HTTP code: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;->onDone(Ljava/lang/Exception;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method private downloadApps(Ljava/util/Collection;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;",
            "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1122
    .local p1, "apps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    .local p2, "cb":Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;, "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->downloadApps(Ljava/util/Collection;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Z)V

    .line 1123
    return-void
.end method

.method private downloadApps(Ljava/util/Collection;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Z)V
    .locals 9
    .param p3, "checkIfNeedToUpgrade"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;",
            "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1097
    .local p1, "apps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    .local p2, "cb":Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;, "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1098
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/h5appmanager/AppInfo;

    .line 1099
    .local v0, "app":Lcom/alipay/android/h5appmanager/AppInfo;
    iget-object v5, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->h5AppStore:Ljava/io/File;

    monitor-enter v5

    .line 1100
    if-eqz p3, :cond_0

    .line 1101
    :try_start_0
    invoke-direct {p0, v0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->needUpgrade(Lcom/alipay/android/h5appmanager/AppInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1102
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "no need to upgrade app(id:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/h5appmanager/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    monitor-exit v5

    goto :goto_0

    .line 1116
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1107
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->h5AppStore:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".amr"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1108
    .local v1, "appDownloadStore":Ljava/io/File;
    iget-object v6, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getLocalStorePathByAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1109
    .local v3, "targetExtractPath":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v6, v0, Lcom/alipay/android/h5appmanager/AppInfo;->url:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 1110
    invoke-direct {p0, v0, v1, p2, v3}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->downloadAndInstallApp(Lcom/alipay/android/h5appmanager/AppInfo;Ljava/io/File;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Ljava/lang/String;)Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;

    move-result-object v2

    .line 1111
    .local v2, "result":Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;
    iget-boolean v6, v2, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->success:Z

    iget-object v7, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    iget-object v8, v0, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8, v2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmDownload(ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;)V

    .line 1116
    .end local v2    # "result":Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1119
    .end local v0    # "app":Lcom/alipay/android/h5appmanager/AppInfo;
    .end local v1    # "appDownloadStore":Ljava/io/File;
    .end local v3    # "targetExtractPath":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private getAppInfoFromLocalStore(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/AppInfo;
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 915
    invoke-direct {p0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getInfoFromLocalStore(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 916
    .local v2, "info":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 917
    const-string/jumbo v4, "H5AppManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "failed to get app info(id:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/4 v0, 0x0

    .line 940
    :goto_0
    return-object v0

    .line 921
    :cond_0
    new-instance v0, Lcom/alipay/android/h5appmanager/AppInfo;

    invoke-direct {v0}, Lcom/alipay/android/h5appmanager/AppInfo;-><init>()V

    .line 922
    .local v0, "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V

    .line 924
    :try_start_0
    const-string/jumbo v4, "appid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    .line 925
    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    .line 926
    const-string/jumbo v4, "support"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "android"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 927
    .local v3, "support":Lorg/json/JSONObject;
    const-string/jumbo v4, "minOS"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/android/h5appmanager/AppInfo;->system_min:Ljava/lang/String;

    .line 928
    const-string/jumbo v4, "maxOS"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/android/h5appmanager/AppInfo;->system_max:Ljava/lang/String;

    .line 929
    const-string/jumbo v4, "minSDK"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/android/h5appmanager/AppInfo;->sdk_min:Ljava/lang/String;

    .line 930
    const-string/jumbo v4, "maxSDK"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/android/h5appmanager/AppInfo;->sdk_max:Ljava/lang/String;

    .line 931
    const-string/jumbo v4, "description"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/android/h5appmanager/AppInfo;->desc:Ljava/lang/String;

    .line 932
    const-string/jumbo v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/android/h5appmanager/AppInfo;->name:Ljava/lang/String;

    .line 933
    const-string/jumbo v4, "launchParams"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->convertJsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/android/h5appmanager/AppInfo;->launch_params:Ljava/util/Map;

    .line 934
    const-string/jumbo v4, "extension"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->convertJsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/android/h5appmanager/AppInfo;->extend_info:Ljava/util/Map;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 935
    .end local v3    # "support":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 936
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 937
    const-string/jumbo v4, "H5AppManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "error occurs while get app info(id:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getAppInfosByIds(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1570
    .local p1, "appIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1571
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1572
    .local v2, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->fastSearchMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/h5appmanager/AppInfo;

    .line 1573
    .local v0, "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    if-eqz v0, :cond_0

    .line 1574
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1577
    .end local v0    # "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static getCurrentTimeStamp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1141
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1142
    .local v1, "sdfDate":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1143
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1144
    .local v2, "strDate":Ljava/lang/String;
    return-object v2
.end method

.method static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1776
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1777
    const-string/jumbo v1, ""

    .line 1784
    :goto_0
    return-object v1

    .line 1780
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1781
    .local v0, "index":I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    .line 1782
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0

    .line 1784
    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getInfoFromLocalStore(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 20
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 944
    const/4 v15, 0x0

    .line 946
    .local v15, "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->buildTarFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 947
    .local v12, "localStore":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 948
    .local v13, "localStoreFile":Ljava/io/File;
    invoke-static {v13}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/io/File;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 949
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "h5 packages(appId:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ") hasn\'t been synced to local"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    .end local v12    # "localStore":Ljava/lang/String;
    .end local v13    # "localStoreFile":Ljava/io/File;
    :catch_0
    move-exception v9

    .line 972
    .local v9, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 975
    if-eqz v15, :cond_0

    .line 977
    :try_start_2
    invoke-virtual {v15}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 973
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    const/4 v5, 0x0

    .line 983
    :goto_2
    return-object v5

    .line 951
    .restart local v12    # "localStore":Ljava/lang/String;
    .restart local v13    # "localStoreFile":Ljava/io/File;
    :cond_1
    :try_start_3
    new-instance v11, Ljava/io/FileInputStream;

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 952
    .local v11, "fis":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 953
    .local v2, "bis":Ljava/io/BufferedInputStream;
    new-instance v16, Lcom/alipay/android/h5appmanager/tar/TarInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 956
    .end local v15    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .local v16, "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :cond_2
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->getNextEntry()Lcom/alipay/android/h5appmanager/tar/TarEntry;

    move-result-object v14

    .local v14, "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    if-eqz v14, :cond_4

    .line 957
    invoke-virtual {v14}, Lcom/alipay/android/h5appmanager/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v10

    .line 958
    .local v10, "entryName":Ljava/lang/String;
    const-string/jumbo v17, "hpmfile.json"

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 959
    const/16 v17, 0x800

    move/from16 v0, v17

    new-array v4, v0, [B

    .line 961
    .local v4, "buffer":[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 962
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->read([B)I

    move-result v6

    .local v6, "count":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_3

    .line 963
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v4, v0, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 971
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "buffer":[B
    .end local v6    # "count":I
    .end local v10    # "entryName":Ljava/lang/String;
    .end local v14    # "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    :catch_1
    move-exception v9

    move-object/from16 v15, v16

    .end local v16    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v15    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    goto :goto_0

    .line 965
    .end local v15    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "count":I
    .restart local v10    # "entryName":Ljava/lang/String;
    .restart local v14    # "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    .restart local v16    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :cond_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 966
    .local v7, "data":[B
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    .line 967
    .local v8, "dataText":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 977
    .local v5, "config":Lorg/json/JSONObject;
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_4
    move-object/from16 v15, v16

    .line 968
    .end local v16    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v15    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    goto :goto_2

    .line 978
    .end local v15    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v16    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :catch_2
    move-exception v9

    .line 979
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 977
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "buffer":[B
    .end local v5    # "config":Lorg/json/JSONObject;
    .end local v6    # "count":I
    .end local v7    # "data":[B
    .end local v8    # "dataText":Ljava/lang/String;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "entryName":Ljava/lang/String;
    :cond_4
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 983
    :goto_5
    const/4 v5, 0x0

    move-object/from16 v15, v16

    .end local v16    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v15    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    goto :goto_2

    .line 978
    .end local v15    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v16    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :catch_3
    move-exception v9

    .line 979
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 978
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v11    # "fis":Ljava/io/InputStream;
    .end local v12    # "localStore":Ljava/lang/String;
    .end local v13    # "localStoreFile":Ljava/io/File;
    .end local v14    # "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    .end local v16    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .local v9, "e":Ljava/lang/Exception;
    .restart local v15    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :catch_4
    move-exception v9

    .line 979
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 975
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    :goto_6
    if-eqz v15, :cond_5

    .line 977
    :try_start_7
    invoke-virtual {v15}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 980
    :cond_5
    :goto_7
    throw v17

    .line 978
    :catch_5
    move-exception v9

    .line 979
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 975
    .end local v9    # "e":Ljava/io/IOException;
    .end local v15    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v11    # "fis":Ljava/io/InputStream;
    .restart local v12    # "localStore":Ljava/lang/String;
    .restart local v13    # "localStoreFile":Ljava/io/File;
    .restart local v16    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :catchall_1
    move-exception v17

    move-object/from16 v15, v16

    .end local v16    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v15    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    goto :goto_6
.end method

.method private getLocalAppInfos()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 374
    iget-object v6, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->h5AppStore:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->getSubDirs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 375
    .local v4, "localApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v2, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 391
    :cond_0
    return-object v2

    .line 381
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 382
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 383
    .local v5, "path":Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "appId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getAppInfoFromLocalStore(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/AppInfo;

    move-result-object v1

    .line 386
    .local v1, "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    if-eqz v1, :cond_2

    .line 387
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getLocalStorePathByAppId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->h5AppStore:Ljava/io/File;

    if-nez v0, :cond_0

    .line 1504
    invoke-direct {p0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->createH5AppStore()V

    .line 1507
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->h5AppStore:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1762
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1763
    const-string/jumbo v2, "*/*"

    .line 1771
    :cond_0
    :goto_0
    return-object v2

    .line 1765
    :cond_1
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1766
    .local v0, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 1767
    .local v1, "map":Landroid/webkit/MimeTypeMap;
    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1768
    .local v2, "type":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1769
    const-string/jumbo v2, "*/*"

    goto :goto_0
.end method

.method static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1788
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1789
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 1790
    .local v0, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1791
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1793
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
    .line 1811
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->cachedWebResources:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1812
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->cachedWebResources:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1817
    .local v0, "appSpecifiedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :goto_0
    return-object v0

    .line 1814
    .end local v0    # "appSpecifiedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1815
    .restart local v0    # "appSpecifiedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->cachedWebResources:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private installPrebuiltApp(Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cb"    # Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;
    .param p2, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1550
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->prebuiltApps:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->mPrebuiltAssetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1551
    invoke-direct {p0, p2, v1, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->doInstallPrebuiltApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1552
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->prebuiltApps:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/h5appmanager/AppInfo;

    .line 1553
    .local v0, "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->fastSearchMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1554
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->fastSearchMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    :cond_0
    if-eqz p1, :cond_1

    .line 1557
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$9;-><init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Lcom/alipay/android/h5appmanager/AppInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1564
    :cond_1
    const/4 v1, 0x1

    .line 1566
    .end local v0    # "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private jsonToAppInfo(Lorg/json/JSONObject;)Lcom/alipay/android/h5appmanager/AppInfo;
    .locals 2
    .param p1, "app"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 744
    new-instance v0, Lcom/alipay/android/h5appmanager/AppInfo;

    invoke-direct {v0}, Lcom/alipay/android/h5appmanager/AppInfo;-><init>()V

    .line 745
    .local v0, "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    const-string/jumbo v1, "appId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    .line 746
    const-string/jumbo v1, "version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    .line 747
    const-string/jumbo v1, "system_min"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/AppInfo;->system_min:Ljava/lang/String;

    .line 748
    const-string/jumbo v1, "system_max"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/AppInfo;->system_max:Ljava/lang/String;

    .line 749
    const-string/jumbo v1, "sdk_min"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/AppInfo;->sdk_min:Ljava/lang/String;

    .line 750
    const-string/jumbo v1, "sdk_max"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/AppInfo;->sdk_max:Ljava/lang/String;

    .line 751
    const-string/jumbo v1, "client_min"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/AppInfo;->client_min:Ljava/lang/String;

    .line 752
    const-string/jumbo v1, "online"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/AppInfo;->online:Ljava/lang/String;

    .line 753
    const-string/jumbo v1, "auto_install"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/android/h5appmanager/AppInfo;->auto_install:Z

    .line 754
    const-string/jumbo v1, "size"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alipay/android/h5appmanager/AppInfo;->size:I

    .line 755
    const-string/jumbo v1, "icon_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/AppInfo;->icon_url:Ljava/lang/String;

    .line 756
    const-string/jumbo v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/AppInfo;->name:Ljava/lang/String;

    .line 758
    const-string/jumbo v1, "created_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/AppInfo;->created_time:Ljava/lang/String;

    .line 759
    const-string/jumbo v1, "launch_params"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->convertJsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/AppInfo;->launch_params:Ljava/util/Map;

    .line 760
    const-string/jumbo v1, "extend_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->convertJsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/h5appmanager/AppInfo;->extend_info:Ljava/util/Map;

    .line 761
    return-object v0
.end method

.method private loadFileFromAssets(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 657
    .local v0, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 658
    .local v3, "in":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 660
    .local v5, "localBufferedReader":Ljava/io/BufferedReader;
    const/16 v6, 0x800

    new-array v1, v6, [C

    .line 662
    .local v1, "data":[C
    :goto_0
    invoke-virtual {v5, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    .local v4, "len":I
    if-lez v4, :cond_1

    .line 663
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 673
    .end local v1    # "data":[C
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "len":I
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 674
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 676
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 665
    .restart local v1    # "data":[C
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "len":I
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 666
    if-eqz v3, :cond_0

    .line 668
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 669
    :catch_1
    move-exception v2

    .line 670
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1821
    sget-boolean v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1822
    const-string/jumbo v0, "H5AppManagerImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    :cond_0
    return-void
.end method

.method private logHpmDecompression(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appVersion"    # Ljava/lang/String;
    .param p4, "errorDescription"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 507
    new-instance v0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    invoke-direct {v0}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;-><init>()V

    .line 508
    .local v0, "builder":Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 509
    .local v1, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 510
    const-string/jumbo v2, "appId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string/jumbo v2, "appVersion"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    if-nez p1, :cond_0

    .line 513
    const-string/jumbo v2, "errorDescription"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->tracker:Lcom/alipay/android/h5appmanager/tracker/H5Tracker;

    const-string/jumbo v3, "hpm_unzip"

    invoke-virtual {v0, v3}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->id(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->result(Landroid/os/Bundle;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->createEvent()Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/android/h5appmanager/tracker/H5Tracker;->send(Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;)V

    .line 516
    return-void
.end method

.method private logHpmDownload(ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appVersion"    # Ljava/lang/String;
    .param p4, "downloadResult"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 522
    new-instance v0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    invoke-direct {v0}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;-><init>()V

    .line 523
    .local v0, "builder":Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 524
    .local v1, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 525
    const-string/jumbo v2, "appId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string/jumbo v2, "appVersion"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string/jumbo v2, "dataLength"

    iget v3, p4, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->dataLength:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 528
    const-string/jumbo v2, "startDate"

    iget-object v3, p4, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->startDate:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string/jumbo v2, "finishDate"

    iget-object v3, p4, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->finishDate:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string/jumbo v2, "upzipResult"

    iget-boolean v3, p4, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->unzipResult:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 531
    const-string/jumbo v2, "url"

    iget-object v3, p4, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string/jumbo v2, "responseHeader"

    iget-object v3, p4, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->responseHeader:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    if-nez p1, :cond_0

    .line 534
    const-string/jumbo v2, "errorDescription"

    iget-object v3, p4, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->errorDescription:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->tracker:Lcom/alipay/android/h5appmanager/tracker/H5Tracker;

    const-string/jumbo v3, "hpm_download"

    invoke-virtual {v0, v3}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->id(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->result(Landroid/os/Bundle;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->createEvent()Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/android/h5appmanager/tracker/H5Tracker;->send(Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;)V

    .line 537
    return-void
.end method

.method private logHpmDuplicateDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "remoteVersion"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 482
    new-instance v0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    invoke-direct {v0}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;-><init>()V

    .line 483
    .local v0, "builder":Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 484
    .local v1, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "appId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string/jumbo v2, "appVersion"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string/jumbo v2, "remoteVersion"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->tracker:Lcom/alipay/android/h5appmanager/tracker/H5Tracker;

    const-string/jumbo v3, "hmp_DuplicateDownload"

    invoke-virtual {v0, v3}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->id(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->result(Landroid/os/Bundle;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->createEvent()Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/android/h5appmanager/tracker/H5Tracker;->send(Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;)V

    .line 489
    return-void
.end method

.method private logHpmLoad(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "success"    # Z
    .param p3, "verifyResult"    # Ljava/lang/String;
    .param p4, "appVersion"    # Ljava/lang/String;
    .param p5, "errorDescription"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 455
    new-instance v0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    invoke-direct {v0}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;-><init>()V

    .line 456
    .local v0, "builder":Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 457
    .local v1, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 458
    const-string/jumbo v2, "verifyResult"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string/jumbo v2, "appId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string/jumbo v2, "appVersion"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    if-nez p2, :cond_0

    .line 463
    const-string/jumbo v2, "errorDescription"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->tracker:Lcom/alipay/android/h5appmanager/tracker/H5Tracker;

    const-string/jumbo v3, "hpm_load"

    invoke-virtual {v0, v3}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->id(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->result(Landroid/os/Bundle;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->createEvent()Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/android/h5appmanager/tracker/H5Tracker;->send(Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;)V

    .line 466
    return-void
.end method

.method private logHpmMigrate(ZLjava/lang/String;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "errorMessage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 736
    new-instance v0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    invoke-direct {v0}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;-><init>()V

    .line 737
    .local v0, "builder":Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 738
    .local v1, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 739
    const-string/jumbo v2, "errorDescription"

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    .end local p2    # "errorMessage":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->tracker:Lcom/alipay/android/h5appmanager/tracker/H5Tracker;

    const-string/jumbo v3, "hpm_migrate"

    invoke-virtual {v0, v3}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->id(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->result(Landroid/os/Bundle;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->createEvent()Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/android/h5appmanager/tracker/H5Tracker;->send(Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;)V

    .line 741
    return-void
.end method

.method private logHpmSync(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "errorDescription"    # Ljava/lang/String;
    .param p3, "appList"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 433
    new-instance v0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    invoke-direct {v0}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;-><init>()V

    .line 434
    .local v0, "builder":Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 435
    .local v1, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 436
    const-string/jumbo v2, "appList"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    if-nez p1, :cond_0

    .line 438
    const-string/jumbo v2, "errorDescription"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->tracker:Lcom/alipay/android/h5appmanager/tracker/H5Tracker;

    const-string/jumbo v3, "hpm_sync"

    invoke-virtual {v0, v3}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->id(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->result(Landroid/os/Bundle;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->createEvent()Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/android/h5appmanager/tracker/H5Tracker;->send(Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;)V

    .line 441
    return-void
.end method

.method private needUpgrade(Lcom/alipay/android/h5appmanager/AppInfo;)Z
    .locals 23
    .param p1, "app"    # Lcom/alipay/android/h5appmanager/AppInfo;

    .prologue
    .line 1019
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->buildTarFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1021
    .local v18, "tarFilePath":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1022
    .local v12, "needUpgrade":Z
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/h5appmanager/AppInfo;->getVersion()Ljava/lang/String;

    move-result-object v16

    .line 1023
    .local v16, "remoteVersion":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->buildVersionFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1025
    .local v20, "versionFilePath":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v19

    .line 1026
    .local v19, "versionFileExisted":Z
    invoke-static/range {v18 .. v18}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 1027
    const/4 v12, 0x1

    .line 1072
    :cond_0
    :goto_0
    return v12

    .line 1028
    :cond_1
    if-eqz v19, :cond_0

    .line 1030
    const/4 v5, 0x0

    .line 1031
    .local v5, "fileReader":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 1033
    .local v2, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .local v6, "fileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1035
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .local v3, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 1036
    .local v10, "localVersion":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_3

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 1037
    const-string/jumbo v21, "\\."

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1038
    .local v11, "localVersionArray":[Ljava/lang/String;
    const-string/jumbo v21, "\\."

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1039
    .local v17, "remoteVersionArray":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v21, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1040
    .local v13, "numComponents":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v13, :cond_2

    .line 1041
    aget-object v21, v17, v7

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 1042
    .local v14, "remote":J
    aget-object v21, v11, v7

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1043
    .local v8, "local":J
    const-string/jumbo v21, "158"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1044
    cmp-long v21, v14, v8

    if-lez v21, :cond_5

    .line 1045
    const/4 v12, 0x1

    .line 1055
    .end local v8    # "local":J
    .end local v14    # "remote":J
    :cond_2
    :goto_2
    if-nez v12, :cond_3

    move-object/from16 v0, v16

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 1056
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v21

    if-eqz v21, :cond_3

    .line 1057
    const/4 v12, 0x1

    .line 1064
    .end local v7    # "i":I
    .end local v11    # "localVersionArray":[Ljava/lang/String;
    .end local v13    # "numComponents":I
    .end local v17    # "remoteVersionArray":[Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 1065
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1066
    :catch_0
    move-exception v4

    .line 1067
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1049
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v7    # "i":I
    .restart local v8    # "local":J
    .restart local v11    # "localVersionArray":[Ljava/lang/String;
    .restart local v13    # "numComponents":I
    .restart local v14    # "remote":J
    .restart local v17    # "remoteVersionArray":[Ljava/lang/String;
    :cond_4
    cmp-long v21, v14, v8

    if-eqz v21, :cond_5

    .line 1050
    const/4 v12, 0x1

    .line 1051
    goto :goto_2

    .line 1040
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1060
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .end local v7    # "i":I
    .end local v8    # "local":J
    .end local v10    # "localVersion":Ljava/lang/String;
    .end local v11    # "localVersionArray":[Ljava/lang/String;
    .end local v13    # "numComponents":I
    .end local v14    # "remote":J
    .end local v17    # "remoteVersionArray":[Ljava/lang/String;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catch_1
    move-exception v4

    .line 1061
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1064
    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1065
    :cond_6
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 1066
    :catch_2
    move-exception v4

    .line 1067
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1063
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    .line 1064
    :goto_4
    if-eqz v2, :cond_7

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1065
    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1068
    :cond_8
    :goto_5
    throw v21

    .line 1066
    :catch_3
    move-exception v4

    .line 1067
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1063
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v21

    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v21

    move-object v2, v3

    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .line 1060
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_4
    move-exception v4

    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_3
.end method

.method static parseUrl(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1797
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1798
    const/4 v1, 0x0

    .line 1806
    :goto_0
    return-object v1

    .line 1800
    :cond_0
    const/4 v1, 0x0

    .line 1802
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1803
    :catch_0
    move-exception v0

    .line 1804
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5AppManagerImpl"

    const-string/jumbo v3, "parse url exception."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private persistentVersionInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "remoteVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 887
    invoke-direct {p0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getInfoFromLocalStore(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 889
    .local v1, "localInfo":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 890
    :try_start_0
    const-string/jumbo v3, "version"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 891
    .local v2, "version":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 892
    if-eqz p2, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 893
    invoke-direct {p0, p1, v2, p2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmDuplicateDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    :cond_0
    if-eqz p2, :cond_2

    .line 896
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->writeVersionFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    .end local v2    # "version":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 899
    .restart local v2    # "version":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->writeVersionFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 902
    .end local v2    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private syncAndInstallAppFormLwp(Lcom/alipay/android/h5appmanager/AppInfo;Ljava/io/File;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;
    .locals 10
    .param p1, "app"    # Lcom/alipay/android/h5appmanager/AppInfo;
    .param p2, "saveFile"    # Ljava/io/File;
    .param p4, "target"    # Ljava/lang/String;
    .param p5, "atomicInteger"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            "Ljava/io/File;",
            "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")",
            "Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1174
    .local p3, "cb":Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;, "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    if-eqz p1, :cond_0

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "download app: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/android/h5appmanager/AppInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V

    .line 1177
    :cond_0
    iget-object v0, p1, Lcom/alipay/android/h5appmanager/AppInfo;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->trafficStatsStart(Ljava/lang/String;)V

    .line 1179
    new-instance v2, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;-><init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$1;)V

    .line 1180
    .local v2, "result":Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->success:Z

    .line 1181
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alipay/android/h5appmanager/AppInfo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1182
    :cond_1
    if-nez p1, :cond_4

    const-string/jumbo v0, "AppInfo is null"

    :goto_0
    iput-object v0, v2, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->errorDescription:Ljava/lang/String;

    .line 1183
    if-eqz p1, :cond_2

    .line 1184
    iget-boolean v0, v2, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->success:Z

    iget-object v1, p1, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmDownload(ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;)V

    .line 1190
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1191
    if-eqz p5, :cond_3

    .line 1192
    :try_start_0
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_3

    .line 1193
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1195
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1348
    :goto_1
    return-object v2

    .line 1182
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "the url of app(id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") is invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1195
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1198
    :cond_5
    invoke-static {}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->startDate:Ljava/lang/String;

    .line 1199
    iget-object v0, p1, Lcom/alipay/android/h5appmanager/AppInfo;->url:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->url:Ljava/lang/String;

    .line 1200
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->init(Landroid/content/Context;)V

    .line 1202
    const-string/jumbo v0, "REQUEST"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/doraemon/request/Request;

    .line 1205
    .local v8, "request":Lcom/alibaba/doraemon/request/Request;
    iget-object v0, p1, Lcom/alipay/android/h5appmanager/AppInfo;->url:Ljava/lang/String;

    invoke-interface {v8, v0}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v0

    sget-object v1, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setPriority(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v9

    new-instance v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;-><init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;Lcom/alipay/android/h5appmanager/AppInfo;Ljava/io/File;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 1206
    invoke-interface {v9, v0}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 1347
    invoke-interface {v8}, Lcom/alibaba/doraemon/request/Request;->start()V

    goto :goto_1
.end method

.method private syncApps(Ljava/util/Collection;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 8
    .param p3, "atomicInteger"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;",
            "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1075
    .local p1, "apps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    .local p2, "cb":Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;, "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/h5appmanager/AppInfo;

    .line 1077
    .local v1, "app":Lcom/alipay/android/h5appmanager/AppInfo;
    iget-object v7, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->h5AppStore:Ljava/io/File;

    monitor-enter v7

    .line 1078
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->h5AppStore:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ".amr"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1079
    .local v2, "appDownloadStore":Ljava/io/File;
    iget-object v0, v1, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getLocalStorePathByAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "targetExtractPath":Ljava/lang/String;
    move-object v0, p0

    move-object v3, p2

    move-object v5, p3

    .line 1081
    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->syncAndInstallAppFormLwp(Lcom/alipay/android/h5appmanager/AppInfo;Ljava/io/File;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;

    .line 1082
    monitor-exit v7

    goto :goto_0

    .end local v2    # "appDownloadStore":Ljava/io/File;
    .end local v4    # "targetExtractPath":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1085
    .end local v1    # "app":Lcom/alipay/android/h5appmanager/AppInfo;
    :cond_0
    return-void
.end method

.method private syncToFastSearchMap(Ljava/lang/String;J)Lcom/alipay/android/h5appmanager/AppInfo;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "now"    # J

    .prologue
    .line 998
    const/4 v2, 0x0

    .line 1000
    .local v2, "result":Lcom/alipay/android/h5appmanager/AppInfo;
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->appListFromBackendAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1001
    iget-object v4, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->h5AppList:Lcom/alipay/android/h5appmanager/impl/H5AppList;

    iget-object v4, v4, Lcom/alipay/android/h5appmanager/impl/H5AppList;->appList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/h5appmanager/AppInfo;

    .line 1002
    .local v0, "app":Lcom/alipay/android/h5appmanager/AppInfo;
    iget-object v3, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    .line 1004
    .local v3, "tmpAppId":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->fastSearchMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    if-eqz p1, :cond_0

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1006
    move-object v2, v0

    goto :goto_0

    .line 1009
    .end local v0    # "app":Lcom/alipay/android/h5appmanager/AppInfo;
    .end local v3    # "tmpAppId":Ljava/lang/String;
    :cond_1
    iput-wide p2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->lastUpdateFastSearchMap:J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    :cond_2
    :goto_1
    return-object v2

    .line 1011
    :catch_0
    move-exception v1

    .line 1013
    .local v1, "expected":Ljava/lang/ClassCastException;
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_1
.end method

.method private writeVersionFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 908
    invoke-direct {p0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->buildVersionFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 909
    .local v1, "versionFilePath":Ljava/lang/String;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 910
    .local v0, "fileWriter":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 912
    return-void
.end method


# virtual methods
.method public enableDebug(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 122
    sput-boolean p1, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->DEBUG:Z

    .line 123
    return-void
.end method

.method fetchAppList(Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 578
    .local p1, "cb":Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;, "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback<Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;>;"
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;-><init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 618
    return-void
.end method

.method public getWebResource(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 1718
    iget-object v6, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->executor:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->tracker:Lcom/alipay/android/h5appmanager/tracker/H5Tracker;

    iget-object v8, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->ctx:Landroid/content/Context;

    invoke-direct {p0, v6, v7, v8}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->checkWhetherHasInitialized(Ljava/util/concurrent/Executor;Lcom/alipay/android/h5appmanager/tracker/H5Tracker;Landroid/content/Context;)V

    .line 1720
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1748
    :cond_0
    :goto_0
    return-object v5

    .line 1726
    :cond_1
    move-object v3, p2

    .local v3, "processedUrl":Ljava/lang/String;
    const-string/jumbo v6, "#"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1727
    .local v2, "inPageHashStart":I
    if-eq v2, v9, :cond_2

    .line 1728
    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1731
    :cond_2
    const-string/jumbo v6, "?"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1732
    .local v4, "queryParamStart":I
    if-eq v4, v9, :cond_3

    .line 1733
    invoke-virtual {v3, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1736
    :cond_3
    invoke-direct {p0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getWebResourceMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1738
    .local v0, "appSpecifiedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1739
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

    .line 1740
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1741
    .local v1, "data":[B
    new-instance v5, Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;

    invoke-direct {v5}, Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;-><init>()V

    .line 1742
    .local v5, "webResource":Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;
    const-string/jumbo v6, "utf-8"

    iput-object v6, v5, Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;->encoding:Ljava/lang/String;

    .line 1743
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;->headers:Ljava/util/Map;

    .line 1744
    invoke-static {v3}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;->mimeType:Ljava/lang/String;

    .line 1745
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v6, v5, Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;->is:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public initialize(Ljava/util/concurrent/Executor;Lcom/alipay/android/h5appmanager/tracker/H5Tracker;Landroid/content/Context;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "tracker"    # Lcom/alipay/android/h5appmanager/tracker/H5Tracker;
    .param p3, "ctx"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->checkWhetherHasInitialized(Ljava/util/concurrent/Executor;Lcom/alipay/android/h5appmanager/tracker/H5Tracker;Landroid/content/Context;)V

    .line 114
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->executor:Ljava/util/concurrent/Executor;

    .line 115
    iput-object p2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->tracker:Lcom/alipay/android/h5appmanager/tracker/H5Tracker;

    .line 116
    iput-object p3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->ctx:Landroid/content/Context;

    .line 117
    invoke-direct {p0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->createHttpClient()V

    .line 118
    invoke-direct {p0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->createH5AppService()V

    .line 119
    return-void
.end method

.method public logHpmCrc(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "crcValue"    # J

    .prologue
    .line 494
    new-instance v0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    invoke-direct {v0}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;-><init>()V

    .line 495
    .local v0, "builder":Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 496
    .local v1, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "appId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string/jumbo v2, "appVersion"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string/jumbo v2, "crcValue"

    invoke-virtual {v1, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 499
    iget-object v2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->tracker:Lcom/alipay/android/h5appmanager/tracker/H5Tracker;

    const-string/jumbo v3, "hmp_crc_value"

    invoke-virtual {v0, v3}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->id(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->result(Landroid/os/Bundle;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->createEvent()Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/android/h5appmanager/tracker/H5Tracker;->send(Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;)V

    .line 501
    return-void
.end method

.method public logHpmQuery(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "errorDescription"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 469
    new-instance v0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    invoke-direct {v0}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;-><init>()V

    .line 470
    .local v0, "builder":Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 471
    .local v1, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 472
    const-string/jumbo v2, "appId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    if-nez p1, :cond_0

    .line 474
    const-string/jumbo v2, "errorDescription"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->tracker:Lcom/alipay/android/h5appmanager/tracker/H5Tracker;

    const-string/jumbo v3, "hpm_query"

    invoke-virtual {v0, v3}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->id(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->result(Landroid/os/Bundle;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->createEvent()Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/android/h5appmanager/tracker/H5Tracker;->send(Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;)V

    .line 477
    return-void
.end method

.method logHpmTraffic(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "size"    # J

    .prologue
    .line 540
    iget-object v3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->tracker:Lcom/alipay/android/h5appmanager/tracker/H5Tracker;

    if-eqz v3, :cond_0

    .line 541
    new-instance v0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    invoke-direct {v0}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;-><init>()V

    .line 542
    .local v0, "builder":Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 543
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "appId"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string/jumbo v3, "size"

    invoke-virtual {v1, v3, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 546
    const-string/jumbo v3, "hpm_traffic"

    .line 547
    invoke-virtual {v0, v3}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->id(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    move-result-object v3

    .line 548
    invoke-virtual {v3, v1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->result(Landroid/os/Bundle;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    move-result-object v3

    .line 549
    invoke-virtual {v3}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->createEvent()Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;

    move-result-object v2

    .line 550
    .local v2, "event":Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;
    iget-object v3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->tracker:Lcom/alipay/android/h5appmanager/tracker/H5Tracker;

    invoke-interface {v3, v2}, Lcom/alipay/android/h5appmanager/tracker/H5Tracker;->send(Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;)V

    .line 552
    .end local v0    # "builder":Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "event":Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;
    :cond_0
    return-void
.end method

.method public logHpmUpdate(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "appList"    # Ljava/lang/String;
    .param p3, "errorDescription"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 444
    new-instance v0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    invoke-direct {v0}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;-><init>()V

    .line 445
    .local v0, "builder":Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 446
    .local v1, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 447
    const-string/jumbo v2, "appList"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    if-nez p1, :cond_0

    .line 449
    const-string/jumbo v2, "errorDescription"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->tracker:Lcom/alipay/android/h5appmanager/tracker/H5Tracker;

    const-string/jumbo v3, "hpm_update"

    invoke-virtual {v0, v3}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->id(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->result(Landroid/os/Bundle;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->createEvent()Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/android/h5appmanager/tracker/H5Tracker;->send(Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;)V

    .line 452
    return-void
.end method

.method public migratePrebuiltApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "configPath"    # Ljava/lang/String;
    .param p2, "appPath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 680
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 681
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Original parameters: [configPath:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " appPath:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 684
    :cond_1
    iput-object p2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->mPrebuiltAssetPath:Ljava/lang/String;

    .line 685
    iget-object v10, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->ctx:Landroid/content/Context;

    invoke-direct {p0, p1, v10}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->loadFileFromAssets(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 686
    .local v4, "config":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 688
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 689
    .local v5, "configJson":Lorg/json/JSONObject;
    const-string/jumbo v10, "appList"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 690
    .local v3, "appList":Lorg/json/JSONArray;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 691
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v10

    if-ge v7, v10, :cond_3

    .line 693
    :try_start_1
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 694
    .local v0, "app":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->jsonToAppInfo(Lorg/json/JSONObject;)Lcom/alipay/android/h5appmanager/AppInfo;

    move-result-object v2

    .line 696
    .local v2, "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    const/4 v10, 0x4

    iput v10, v2, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    .line 698
    iget-object v10, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->prebuiltApps:Ljava/util/Map;

    iget-object v11, v2, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    iget-object v10, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->fastSearchMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v11, v2, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    invoke-virtual {v10, v11, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    .line 691
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 700
    .end local v0    # "app":Lorg/json/JSONObject;
    .end local v2    # "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    :catch_0
    move-exception v6

    .line 701
    .local v6, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 732
    .end local v3    # "appList":Lorg/json/JSONArray;
    .end local v5    # "configJson":Lorg/json/JSONObject;
    .end local v6    # "e":Lorg/json/JSONException;
    .end local v7    # "i":I
    :cond_2
    :goto_1
    return v8

    .line 706
    .restart local v3    # "appList":Lorg/json/JSONArray;
    .restart local v5    # "configJson":Lorg/json/JSONObject;
    :cond_3
    iget-object v10, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->prebuiltApps:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 707
    .local v1, "appId":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-direct {p0, v11, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->installPrebuiltApp(Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 709
    .end local v1    # "appId":Ljava/lang/String;
    .end local v3    # "appList":Lorg/json/JSONArray;
    .end local v5    # "configJson":Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    .line 710
    .restart local v6    # "e":Lorg/json/JSONException;
    sget-boolean v9, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_4

    .line 711
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 713
    :cond_4
    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmMigrate(ZLjava/lang/String;)V

    goto :goto_1

    .line 715
    .end local v6    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v6

    .line 716
    .local v6, "e":Ljava/io/IOException;
    sget-boolean v9, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_5

    .line 717
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 719
    :cond_5
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmMigrate(ZLjava/lang/String;)V

    goto :goto_1

    .line 721
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 722
    .local v6, "e":Ljava/lang/IllegalStateException;
    sget-boolean v9, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_6

    .line 723
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 725
    :cond_6
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmMigrate(ZLjava/lang/String;)V

    goto :goto_1

    .line 731
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    .restart local v3    # "appList":Lorg/json/JSONArray;
    .restart local v5    # "configJson":Lorg/json/JSONObject;
    :cond_7
    const-string/jumbo v8, ""

    invoke-direct {p0, v9, v8}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmMigrate(ZLjava/lang/String;)V

    move v8, v9

    .line 732
    goto :goto_1
.end method

.method public preloadWebResource(Ljava/lang/String;)Z
    .locals 44
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 1610
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->executor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->tracker:Lcom/alipay/android/h5appmanager/tracker/H5Tracker;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->checkWhetherHasInitialized(Ljava/util/concurrent/Executor;Lcom/alipay/android/h5appmanager/tracker/H5Tracker;Landroid/content/Context;)V

    .line 1611
    invoke-direct/range {p0 .. p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getWebResourceMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v16

    .line 1612
    .local v16, "appSpecifiedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1614
    const/4 v4, 0x1

    .line 1714
    :goto_0
    return v4

    .line 1616
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    .line 1617
    .local v38, "start":J
    const/16 v40, 0x0

    .line 1619
    .local v40, "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->buildTarFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1621
    .local v34, "localStore":Ljava/lang/String;
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1622
    .local v35, "localStoreFile":Ljava/io/File;
    invoke-static/range {v35 .. v35}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1623
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "h5 packages(appId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") hasn\'t been synced to local"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1699
    .end local v34    # "localStore":Ljava/lang/String;
    .end local v35    # "localStoreFile":Ljava/io/File;
    :catch_0
    move-exception v24

    .line 1700
    .local v24, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    .line 1701
    const/4 v11, 0x0

    const-string/jumbo v12, "N"

    const-string/jumbo v13, "fail"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v14}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmLoad(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1704
    if-eqz v40, :cond_1

    .line 1706
    :try_start_2
    invoke-virtual/range {v40 .. v40}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1702
    .end local v24    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1625
    .restart local v34    # "localStore":Ljava/lang/String;
    .restart local v35    # "localStoreFile":Ljava/io/File;
    :cond_2
    :try_start_3
    new-instance v29, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v34

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1626
    .local v29, "fis":Ljava/io/InputStream;
    new-instance v17, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1627
    .local v17, "bis":Ljava/io/BufferedInputStream;
    new-instance v41, Lcom/alipay/android/h5appmanager/tar/TarInputStream;

    move-object/from16 v0, v41

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1629
    .end local v40    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .local v41, "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :try_start_4
    const-string/jumbo v30, ""

    .line 1630
    .local v30, "host":Ljava/lang/String;
    new-instance v43, Ljava/util/HashMap;

    invoke-direct/range {v43 .. v43}, Ljava/util/HashMap;-><init>()V

    .line 1631
    .local v43, "tmpResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    new-instance v42, Ljava/util/HashMap;

    invoke-direct/range {v42 .. v42}, Ljava/util/HashMap;-><init>()V

    .line 1632
    .local v42, "tmpAppSpecifiedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    const/4 v8, 0x0

    .line 1633
    .local v8, "hpmVersion":Ljava/lang/String;
    :cond_3
    :goto_3
    invoke-virtual/range {v41 .. v41}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->getNextEntry()Lcom/alipay/android/h5appmanager/tar/TarEntry;

    move-result-object v37

    .local v37, "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    if-eqz v37, :cond_d

    .line 1634
    invoke-virtual/range {v37 .. v37}, Lcom/alipay/android/h5appmanager/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v25

    .line 1636
    .local v25, "entryName":Ljava/lang/String;
    invoke-virtual/range {v37 .. v37}, Lcom/alipay/android/h5appmanager/tar/TarEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "hpmfile.json"

    .line 1637
    move-object/from16 v0, v25

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1638
    :cond_4
    const-string/jumbo v4, "hpmfile.json"

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1639
    const/16 v4, 0x800

    new-array v0, v4, [B

    move-object/from16 v19, v0

    .line 1641
    .local v19, "buffer":[B
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1642
    .local v18, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_4
    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->read([B)I

    move-result v21

    .local v21, "count":I
    const/4 v4, -0x1

    move/from16 v0, v21

    if-eq v0, v4, :cond_5

    .line 1643
    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    .line 1699
    .end local v8    # "hpmVersion":Ljava/lang/String;
    .end local v18    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "buffer":[B
    .end local v21    # "count":I
    .end local v25    # "entryName":Ljava/lang/String;
    .end local v30    # "host":Ljava/lang/String;
    .end local v37    # "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    .end local v42    # "tmpAppSpecifiedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .end local v43    # "tmpResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :catch_1
    move-exception v24

    move-object/from16 v40, v41

    .end local v41    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v40    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    goto/16 :goto_1

    .line 1645
    .end local v40    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v8    # "hpmVersion":Ljava/lang/String;
    .restart local v18    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v19    # "buffer":[B
    .restart local v21    # "count":I
    .restart local v25    # "entryName":Ljava/lang/String;
    .restart local v30    # "host":Ljava/lang/String;
    .restart local v37    # "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    .restart local v41    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v42    # "tmpAppSpecifiedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .restart local v43    # "tmpResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v22

    .line 1646
    .local v22, "data":[B
    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1647
    .local v23, "dataText":Ljava/lang/String;
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1652
    .local v20, "config":Lorg/json/JSONObject;
    const-string/jumbo v4, "version"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1659
    const-string/jumbo v4, "host"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v31

    .line 1660
    .local v31, "joHost":Lorg/json/JSONObject;
    const-string/jumbo v4, "online"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1662
    const-string/jumbo v4, ""

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface/range {v43 .. v43}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1663
    invoke-interface/range {v43 .. v43}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 1664
    .local v32, "key":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v43

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v42

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 1704
    .end local v8    # "hpmVersion":Ljava/lang/String;
    .end local v18    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "buffer":[B
    .end local v20    # "config":Lorg/json/JSONObject;
    .end local v21    # "count":I
    .end local v22    # "data":[B
    .end local v23    # "dataText":Ljava/lang/String;
    .end local v25    # "entryName":Ljava/lang/String;
    .end local v30    # "host":Ljava/lang/String;
    .end local v31    # "joHost":Lorg/json/JSONObject;
    .end local v32    # "key":Ljava/lang/String;
    .end local v37    # "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    .end local v42    # "tmpAppSpecifiedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .end local v43    # "tmpResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :catchall_0
    move-exception v4

    move-object/from16 v40, v41

    .end local v17    # "bis":Ljava/io/BufferedInputStream;
    .end local v29    # "fis":Ljava/io/InputStream;
    .end local v34    # "localStore":Ljava/lang/String;
    .end local v35    # "localStoreFile":Ljava/io/File;
    .end local v41    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v40    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :goto_6
    if-eqz v40, :cond_6

    .line 1706
    :try_start_5
    invoke-virtual/range {v40 .. v40}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1709
    :cond_6
    :goto_7
    throw v4

    .line 1666
    .end local v40    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v8    # "hpmVersion":Ljava/lang/String;
    .restart local v17    # "bis":Ljava/io/BufferedInputStream;
    .restart local v18    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v19    # "buffer":[B
    .restart local v20    # "config":Lorg/json/JSONObject;
    .restart local v21    # "count":I
    .restart local v22    # "data":[B
    .restart local v23    # "dataText":Ljava/lang/String;
    .restart local v25    # "entryName":Ljava/lang/String;
    .restart local v29    # "fis":Ljava/io/InputStream;
    .restart local v30    # "host":Ljava/lang/String;
    .restart local v31    # "joHost":Lorg/json/JSONObject;
    .restart local v34    # "localStore":Ljava/lang/String;
    .restart local v35    # "localStoreFile":Ljava/io/File;
    .restart local v37    # "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    .restart local v41    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .restart local v42    # "tmpAppSpecifiedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .restart local v43    # "tmpResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_7
    :try_start_6
    invoke-interface/range {v43 .. v43}, Ljava/util/Map;->clear()V

    .line 1669
    :cond_8
    const-string/jumbo v4, "launchParams"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v33

    .line 1670
    .local v33, "launchParamsJson":Lorg/json/JSONObject;
    const-string/jumbo v4, "url"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "url"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1671
    .local v36, "relativeLaunchUrl":Ljava/lang/String;
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "launchParamsJson: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->appListFromBackendAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1673
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->fastSearchMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alipay/android/h5appmanager/AppInfo;

    .line 1674
    .local v15, "app":Lcom/alipay/android/h5appmanager/AppInfo;
    if-eqz v15, :cond_3

    .line 1675
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/alipay/android/h5appmanager/AppInfo;->launch_url:Ljava/lang/String;

    goto/16 :goto_3

    .line 1670
    .end local v15    # "app":Lcom/alipay/android/h5appmanager/AppInfo;
    .end local v36    # "relativeLaunchUrl":Ljava/lang/String;
    :cond_9
    const-string/jumbo v36, ""

    goto :goto_8

    .line 1682
    .end local v18    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "buffer":[B
    .end local v20    # "config":Lorg/json/JSONObject;
    .end local v21    # "count":I
    .end local v22    # "data":[B
    .end local v23    # "dataText":Ljava/lang/String;
    .end local v31    # "joHost":Lorg/json/JSONObject;
    .end local v33    # "launchParamsJson":Lorg/json/JSONObject;
    :cond_a
    const/16 v4, 0x800

    new-array v0, v4, [B

    move-object/from16 v19, v0

    .line 1684
    .restart local v19    # "buffer":[B
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1685
    .restart local v18    # "bos":Ljava/io/ByteArrayOutputStream;
    :goto_9
    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->read([B)I

    move-result v21

    .restart local v21    # "count":I
    const/4 v4, -0x1

    move/from16 v0, v21

    if-eq v0, v4, :cond_b

    .line 1686
    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 1688
    :cond_b
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v22

    .line 1690
    .restart local v22    # "data":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1691
    .local v28, "entryPath":Ljava/lang/String;
    const-string/jumbo v4, ""

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1692
    move-object/from16 v42, v43

    .line 1694
    :cond_c
    move-object/from16 v0, v42

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1697
    .end local v18    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "buffer":[B
    .end local v21    # "count":I
    .end local v22    # "data":[B
    .end local v25    # "entryName":Ljava/lang/String;
    .end local v28    # "entryPath":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1698
    const/4 v6, 0x1

    const-string/jumbo v7, "N"

    const-string/jumbo v9, ""

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmLoad(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1706
    :try_start_7
    invoke-virtual/range {v41 .. v41}, Lcom/alipay/android/h5appmanager/tar/TarInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1712
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v26, v4, v38

    .line 1713
    .local v26, "elapse":J
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parse tar package elapse "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1714
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1707
    .end local v26    # "elapse":J
    :catch_2
    move-exception v24

    .line 1708
    .local v24, "e":Ljava/io/IOException;
    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 1707
    .end local v8    # "hpmVersion":Ljava/lang/String;
    .end local v17    # "bis":Ljava/io/BufferedInputStream;
    .end local v29    # "fis":Ljava/io/InputStream;
    .end local v30    # "host":Ljava/lang/String;
    .end local v34    # "localStore":Ljava/lang/String;
    .end local v35    # "localStoreFile":Ljava/io/File;
    .end local v37    # "te":Lcom/alipay/android/h5appmanager/tar/TarEntry;
    .end local v41    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    .end local v42    # "tmpAppSpecifiedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .end local v43    # "tmpResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .local v24, "e":Ljava/lang/Exception;
    .restart local v40    # "tis":Lcom/alipay/android/h5appmanager/tar/TarInputStream;
    :catch_3
    move-exception v24

    .line 1708
    .local v24, "e":Ljava/io/IOException;
    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 1707
    .end local v24    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v24

    .line 1708
    .restart local v24    # "e":Ljava/io/IOException;
    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 1704
    .end local v24    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    goto/16 :goto_6
.end method

.method public queryAllApps(Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;>;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "cb":Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;, "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback<Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;>;"
    const/4 v1, 0x1

    .line 419
    iget-object v6, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->executor:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->tracker:Lcom/alipay/android/h5appmanager/tracker/H5Tracker;

    iget-object v8, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->ctx:Landroid/content/Context;

    invoke-direct {p0, v6, v7, v8}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->checkWhetherHasInitialized(Ljava/util/concurrent/Executor;Lcom/alipay/android/h5appmanager/tracker/H5Tracker;Landroid/content/Context;)V

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 421
    .local v2, "now":J
    iget-wide v6, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->lastFetchH5Apps:J

    sub-long v4, v2, v6

    .line 423
    .local v4, "outdatedTime":J
    invoke-direct {p0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->appListFromBackendAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x1b7740

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    :cond_0
    move v0, v1

    .line 424
    .local v0, "needFetchFromBackend":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 425
    invoke-virtual {p0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->fetchAppList(Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)V

    .line 429
    :goto_1
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->fastSearchMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    return-object v1

    .line 423
    .end local v0    # "needFetchFromBackend":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 427
    .restart local v0    # "needFetchFromBackend":Z
    :cond_2
    const-string/jumbo v6, ""

    const-string/jumbo v7, "the update interval hasn\'t been reached, no update performed!"

    invoke-virtual {p0, v1, v6, v7}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmUpdate(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public queryApp(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/AppInfo;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 627
    iget-object v2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->tracker:Lcom/alipay/android/h5appmanager/tracker/H5Tracker;

    iget-object v4, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->ctx:Landroid/content/Context;

    invoke-direct {p0, v2, v3, v4}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->checkWhetherHasInitialized(Ljava/util/concurrent/Executor;Lcom/alipay/android/h5appmanager/tracker/H5Tracker;Landroid/content/Context;)V

    .line 628
    iget-object v2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->fastSearchMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/h5appmanager/AppInfo;

    .line 629
    .local v0, "result":Lcom/alipay/android/h5appmanager/AppInfo;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 630
    .local v1, "success":Z
    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v2, ""

    :goto_1
    invoke-virtual {p0, v1, p1, v2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmQuery(ZLjava/lang/String;Ljava/lang/String;)V

    .line 631
    return-object v0

    .line 629
    .end local v1    # "success":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 630
    .restart local v1    # "success":Z
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "query app(id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") failed as app not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public queryAppVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 635
    invoke-direct {p0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getInfoFromLocalStore(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 636
    .local v2, "localInfo":Lorg/json/JSONObject;
    const-string/jumbo v3, ""

    .line 638
    .local v3, "version":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 639
    :try_start_0
    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 644
    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 645
    invoke-virtual {p0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->queryApp(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/AppInfo;

    move-result-object v0

    .line 646
    .local v0, "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    if-eqz v0, :cond_1

    .line 647
    iget-object v3, v0, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    .line 650
    .end local v0    # "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    :cond_1
    return-object v3

    .line 641
    :catch_0
    move-exception v1

    .line 642
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public queryInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 882
    invoke-direct {p0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getInfoFromLocalStore(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recycleWebResource(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->tracker:Lcom/alipay/android/h5appmanager/tracker/H5Tracker;

    iget-object v2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->ctx:Landroid/content/Context;

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->checkWhetherHasInitialized(Ljava/util/concurrent/Executor;Lcom/alipay/android/h5appmanager/tracker/H5Tracker;Landroid/content/Context;)V

    .line 1754
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->cachedWebResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->cachedWebResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1756
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->cachedWebResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 408
    iput-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->executor:Ljava/util/concurrent/Executor;

    .line 409
    iput-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->ctx:Landroid/content/Context;

    .line 410
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->cachedWebResources:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 411
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->fastSearchMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 412
    return-void
.end method

.method public removeLocalApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getLocalStorePathByAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->delete(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestUpdateAllApp(Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "cb":Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;, "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    const/4 v7, 0x4

    .line 1581
    iget-object v4, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->executor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->tracker:Lcom/alipay/android/h5appmanager/tracker/H5Tracker;

    iget-object v6, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->ctx:Landroid/content/Context;

    invoke-direct {p0, v4, v5, v6}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->checkWhetherHasInitialized(Ljava/util/concurrent/Executor;Lcom/alipay/android/h5appmanager/tracker/H5Tracker;Landroid/content/Context;)V

    .line 1582
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1583
    .local v2, "availableApps":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1584
    .local v1, "appsToUpdate":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    iget-object v4, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->fastSearchMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/h5appmanager/AppInfo;

    .line 1585
    .local v0, "app":Lcom/alipay/android/h5appmanager/AppInfo;
    const/4 v3, 0x0

    .line 1586
    .local v3, "localTarExisted":Z
    iget v5, v0, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    if-eq v5, v7, :cond_0

    iget-object v5, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    .line 1587
    invoke-direct {p0, v5}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->buildTarFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1588
    :cond_0
    if-eqz v3, :cond_1

    .line 1589
    iput v7, v0, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    .line 1591
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1593
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1596
    .end local v0    # "app":Lcom/alipay/android/h5appmanager/AppInfo;
    .end local v3    # "localTarExisted":Z
    :cond_3
    iget-object v4, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->executor:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$10;

    invoke-direct {v5, p0, v1, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$10;-><init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Ljava/util/List;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1603
    return-object v2
.end method

.method public requestUpdateApp(Ljava/util/Collection;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1516
    .local p1, "appIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "cb":Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;, "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->tracker:Lcom/alipay/android/h5appmanager/tracker/H5Tracker;

    iget-object v3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->ctx:Landroid/content/Context;

    invoke-direct {p0, v1, v2, v3}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->checkWhetherHasInitialized(Ljava/util/concurrent/Executor;Lcom/alipay/android/h5appmanager/tracker/H5Tracker;Landroid/content/Context;)V

    .line 1518
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1519
    :cond_0
    const/4 v1, 0x0

    .line 1546
    :goto_0
    return v1

    .line 1522
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1524
    .local v0, "appIdsInstalled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$8;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$8;-><init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Ljava/util/Collection;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1546
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setMonitorListener(Lcom/alipay/android/h5appmanager/TrafficMonitorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/android/h5appmanager/TrafficMonitorListener;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->mMonitorListener:Lcom/alipay/android/h5appmanager/TrafficMonitorListener;

    .line 371
    return-void
.end method

.method public setMonitorTag(I)V
    .locals 0
    .param p1, "tag"    # I

    .prologue
    .line 366
    iput p1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->mMonitorTag:I

    .line 367
    return-void
.end method

.method public declared-synchronized sync(Ljava/lang/String;Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;)V
    .locals 22
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .local v6, "appInfos":Lorg/json/JSONArray;
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v9, "failedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v16, "upgradeList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_5

    .line 252
    const-string/jumbo v4, "unknown"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    .local v4, "appId":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string/jumbo v18, "appId"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 256
    new-instance v10, Lcom/google/gson/Gson;

    invoke-direct {v10}, Lcom/google/gson/Gson;-><init>()V

    .line 257
    .local v10, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    const-class v18, Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/android/h5appmanager/AppInfo;

    .line 258
    .local v5, "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->fastSearchMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string/jumbo v17, "4"

    invoke-virtual {v5}, Lcom/alipay/android/h5appmanager/AppInfo;->getExtend_info()Ljava/util/Map;

    move-result-object v18

    const-string/jumbo v19, "status"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 261
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->removeLocalApp(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 262
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "failed to delete app(id:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V

    .line 263
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    .end local v5    # "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    .end local v10    # "gson":Lcom/google/gson/Gson;
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 240
    .end local v4    # "appId":Ljava/lang/String;
    .end local v6    # "appInfos":Lorg/json/JSONArray;
    .end local v9    # "failedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v16    # "upgradeList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    :catch_0
    move-exception v8

    .line 241
    .local v8, "e":Lorg/json/JSONException;
    :try_start_3
    sget-boolean v17, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->DEBUG:Z

    if-eqz v17, :cond_1

    .line 242
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 244
    :cond_1
    const/16 v17, 0x0

    invoke-virtual {v8}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmSync(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 362
    .end local v8    # "e":Lorg/json/JSONException;
    :goto_2
    monitor-exit p0

    return-void

    .line 266
    .restart local v4    # "appId":Ljava/lang/String;
    .restart local v5    # "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    .restart local v6    # "appInfos":Lorg/json/JSONArray;
    .restart local v9    # "failedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "gson":Lcom/google/gson/Gson;
    .restart local v11    # "i":I
    .restart local v16    # "upgradeList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->needUpgrade(Lcom/alipay/android/h5appmanager/AppInfo;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 267
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "need upgrade app(id:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/android/h5appmanager/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 273
    .end local v5    # "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    .end local v10    # "gson":Lcom/google/gson/Gson;
    :catch_1
    move-exception v8

    .line 274
    .restart local v8    # "e":Lorg/json/JSONException;
    :try_start_5
    sget-boolean v17, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->DEBUG:Z

    if-eqz v17, :cond_3

    .line 275
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 277
    :cond_3
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "fail list app(id:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 239
    .end local v4    # "appId":Ljava/lang/String;
    .end local v6    # "appInfos":Lorg/json/JSONArray;
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v9    # "failedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v16    # "upgradeList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 270
    .restart local v4    # "appId":Ljava/lang/String;
    .restart local v5    # "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    .restart local v6    # "appInfos":Lorg/json/JSONArray;
    .restart local v9    # "failedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "gson":Lcom/google/gson/Gson;
    .restart local v11    # "i":I
    .restart local v16    # "upgradeList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    :cond_4
    :try_start_6
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "no need to upgrade app(id:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/android/h5appmanager/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 283
    .end local v4    # "appId":Ljava/lang/String;
    .end local v5    # "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    .end local v10    # "gson":Lcom/google/gson/Gson;
    :cond_5
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getLocalAppInfos()Ljava/util/List;

    move-result-object v12

    .line 284
    .local v12, "localAppInfos":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_6
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/android/h5appmanager/AppInfo;

    .line 285
    .restart local v5    # "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    const/4 v14, 0x0

    .line 286
    .local v14, "needUpgrade":Z
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alipay/android/h5appmanager/AppInfo;

    .line 287
    .local v15, "upgradeApp":Lcom/alipay/android/h5appmanager/AppInfo;
    invoke-virtual {v15}, Lcom/alipay/android/h5appmanager/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v5}, Lcom/alipay/android/h5appmanager/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 288
    const/4 v14, 0x1

    .line 292
    .end local v15    # "upgradeApp":Lcom/alipay/android/h5appmanager/AppInfo;
    :cond_8
    if-nez v14, :cond_6

    .line 293
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;->onAppInfo(Lcom/alipay/android/h5appmanager/AppInfo;)V

    .line 294
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "callback: no need upgrade app(id:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/android/h5appmanager/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 302
    .end local v5    # "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    .end local v14    # "needUpgrade":Z
    :cond_9
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 303
    .local v7, "atomicInteger":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "upgradeList\u7684\u5927\u5c0f\u662f:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V

    .line 304
    new-instance v17, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v9}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$2;-><init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;Ljava/util/List;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v7}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->syncApps(Ljava/util/Collection;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 339
    :try_start_8
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v17

    if-eqz v17, :cond_a

    .line 341
    :try_start_9
    const-string/jumbo v17, "\u5f00\u59cbwait\u5566"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    const-wide/32 v20, 0xc350

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 347
    :cond_a
    :goto_4
    :try_start_a
    const-string/jumbo v17, "\u7ed3\u675fwait\u5566"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V

    .line 348
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 349
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "true:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V

    .line 350
    const/16 v17, 0x1

    const-string/jumbo v19, ""

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmSync(ZLjava/lang/String;Ljava/lang/String;)V

    .line 362
    :goto_5
    monitor-exit v18

    goto/16 :goto_2

    :catchall_1
    move-exception v17

    monitor-exit v18
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v17
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 343
    :catch_2
    move-exception v8

    .line 344
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_c
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 352
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_b
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, " of "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, " operations failed (appId: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 353
    .local v13, "msg":Ljava/lang/String;
    const/4 v11, 0x0

    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_d

    .line 354
    if-eqz v11, :cond_c

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, ", "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 355
    :cond_c
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 353
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 357
    :cond_d
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, ")"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 358
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "false:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V

    .line 360
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v13, v2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmSync(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_5
.end method

.method public declared-synchronized syncFromAppInfo(Ljava/util/List;Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;)V
    .locals 18
    .param p2, "callback"    # Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;",
            "Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v6, "failedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v12, "upgradeList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_3

    .line 131
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/android/h5appmanager/AppInfo;

    iget-object v2, v13, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    .line 133
    .local v2, "appId":Ljava/lang/String;
    new-instance v13, Lcom/google/gson/Gson;

    invoke-direct {v13}, Lcom/google/gson/Gson;-><init>()V

    .line 134
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/h5appmanager/AppInfo;

    .line 135
    .local v3, "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->fastSearchMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v13, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v13, "4"

    invoke-virtual {v3}, Lcom/alipay/android/h5appmanager/AppInfo;->getExtend_info()Ljava/util/Map;

    move-result-object v14

    const-string/jumbo v15, "status"

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 138
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->removeLocalApp(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 139
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "failed to delete app(id:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V

    .line 140
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 143
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->needUpgrade(Lcom/alipay/android/h5appmanager/AppInfo;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 144
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "need upgrade app(id:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/android/h5appmanager/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 126
    .end local v2    # "appId":Ljava/lang/String;
    .end local v3    # "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    .end local v6    # "failedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "i":I
    .end local v12    # "upgradeList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 147
    .restart local v2    # "appId":Ljava/lang/String;
    .restart local v3    # "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    .restart local v6    # "failedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "i":I
    .restart local v12    # "upgradeList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    :cond_2
    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "no need to upgrade app(id:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/android/h5appmanager/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 153
    .end local v2    # "appId":Ljava/lang/String;
    .end local v3    # "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getLocalAppInfos()Ljava/util/List;

    move-result-object v8

    .line 154
    .local v8, "localAppInfos":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/h5appmanager/AppInfo;

    .line 155
    .restart local v3    # "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    const/4 v10, 0x0

    .line 156
    .local v10, "needUpgrade":Z
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/android/h5appmanager/AppInfo;

    .line 157
    .local v11, "upgradeApp":Lcom/alipay/android/h5appmanager/AppInfo;
    invoke-virtual {v11}, Lcom/alipay/android/h5appmanager/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lcom/alipay/android/h5appmanager/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 158
    const/4 v10, 0x1

    .line 162
    .end local v11    # "upgradeApp":Lcom/alipay/android/h5appmanager/AppInfo;
    :cond_6
    if-nez v10, :cond_4

    .line 163
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;->onAppInfo(Lcom/alipay/android/h5appmanager/AppInfo;)V

    .line 164
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "callback: no need upgrade app(id:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/android/h5appmanager/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 172
    .end local v3    # "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    .end local v10    # "needUpgrade":Z
    :cond_7
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v4, v13}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 173
    .local v4, "atomicInteger":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "upgradeList\u7684\u5927\u5c0f\u662f:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V

    .line 174
    new-instance v13, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v13, v0, v1, v6}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$1;-><init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;Ljava/util/List;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v4}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->syncApps(Ljava/util/Collection;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :try_start_2
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v13

    if-eqz v13, :cond_8

    .line 211
    :try_start_3
    const-string/jumbo v13, "\u5f00\u59cbwait\u5566"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->mLock:Ljava/lang/Object;

    const-wide/32 v16, 0xc350

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 217
    :cond_8
    :goto_3
    :try_start_4
    const-string/jumbo v13, "\u7ed3\u675fwait\u5566"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V

    .line 218
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 219
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "true:"

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V

    .line 220
    const/4 v13, 0x1

    const-string/jumbo v15, ""

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v15, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmSync(ZLjava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    .line 213
    :catch_0
    move-exception v5

    .line 214
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 232
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v13

    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 222
    :cond_9
    :try_start_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, " of "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, " operations failed (appId: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 223
    .local v9, "msg":Ljava/lang/String;
    const/4 v7, 0x0

    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_b

    .line 224
    if-eqz v7, :cond_a

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, ", "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 225
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 223
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 227
    :cond_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, ")"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 228
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "false:"

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->log(Ljava/lang/String;)V

    .line 230
    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9, v15}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmSync(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_4
.end method

.method public trafficStatsEnd(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->mMonitorListener:Lcom/alipay/android/h5appmanager/TrafficMonitorListener;

    if-eqz v0, :cond_0

    .line 1841
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->mMonitorListener:Lcom/alipay/android/h5appmanager/TrafficMonitorListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/h5appmanager/TrafficMonitorListener;->endStats(Ljava/lang/String;)V

    .line 1843
    :cond_0
    return-void
.end method

.method public trafficStatsStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->mMonitorListener:Lcom/alipay/android/h5appmanager/TrafficMonitorListener;

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->mMonitorListener:Lcom/alipay/android/h5appmanager/TrafficMonitorListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/h5appmanager/TrafficMonitorListener;->startStats(Ljava/lang/String;)V

    .line 1837
    :cond_0
    return-void
.end method
