.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;
.super Ljava/lang/Object;
.source "H5AppHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$FallBackListen;
    }
.end annotation


# static fields
.field public static final CHECK_KEY:Ljava/lang/String; = "nebulaStartflag"

.field public static final CHECK_VALUE:Ljava/lang/String; = "yes"

.field private static final DEGBU_ERROR_CODE:I = 0x3eb

.field private static final NORMAL_EROOR_CODE:I = 0x3e9

.field public static final PERF_IS_LOCAL_KEY:Ljava/lang/String; = "is_local"

.field public static final PERF_OPENAPP_TIME_KEY:Ljava/lang/String; = "perf_open_app_time"

.field private static final PERF_RPC_TIME_KEY:Ljava/lang/String; = "perf_rpc_time"

.field private static TAG:Ljava/lang/String; = null

.field private static final TIME:I = 0x3e8

.field private static final appInfoEmptyUrl:Ljava/lang/String; = "https://render.alipay.com/p/s/tinyapperror/?appId=%s&errorCode=%d"

.field private static final defaultTime:I = 0x1e

.field private static downloadFail:Ljava/lang/String; = null

.field public static h5EventHandlerService:Lcom/alipay/mobile/h5container/service/H5EventHandlerService; = null

.field private static installFail:Ljava/lang/String; = null

.field private static isFirstStartApp:Z = false

.field private static final prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

.field public static final sAppIcon:Ljava/lang/String; = "appIcon"

.field public static final sAppName:Ljava/lang/String; = "appName"

.field public static final sAppSlogan:Ljava/lang/String; = "appSlogan"

.field private static waitCount:I

.field private static waitMax:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "H5AppHandler"

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->waitCount:I

    .line 81
    const/4 v0, 0x4

    sput v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->waitMax:I

    .line 87
    const-string/jumbo v0, "installFail"

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->installFail:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, "downloadFail"

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->downloadFail:Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    .line 109
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->isFirstStartApp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->paramParse(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;
    .param p4, "x4"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .prologue
    .line 67
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->openApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    return-void
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->installFail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static/range {p0 .. p5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->offlineFail(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->downloadFail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .prologue
    .line 67
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->install(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->startApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->finalStartApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .prologue
    .line 67
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->doShowError(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-static/range {p0 .. p7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->updateSuccess(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p3, "x3"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Landroid/os/Bundle;
    .param p9, "x9"    # Z

    .prologue
    .line 67
    invoke-static/range {p0 .. p9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->updateFail(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->waitCount:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 67
    sput p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->waitCount:I

    return p0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->waitMax:I

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->exitPageAndOpenUrl(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->setDevReq(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)V

    return-void
.end method

.method static synthetic access$900(Landroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->getResourcePackageList(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static checkDebugMode(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Landroid/os/Bundle;)Z
    .locals 6
    .param p0, "startAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "copyParam"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 506
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->enableTinyAppDebugMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 507
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->hasAuth:Z

    if-nez v3, :cond_3

    .line 509
    invoke-static {p1, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->doRpcAuth(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 549
    :goto_0
    return v2

    .line 514
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->enablePreferList()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 516
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->enableUsePrefer(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 518
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 519
    const-string/jumbo v3, "nbsv"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, "preferVersion":Ljava/lang/String;
    const-string/jumbo v3, "nbsn"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "nbScene":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 522
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 523
    invoke-virtual {v3, v4, v1, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .end local v0    # "nbScene":Ljava/lang/String;
    .end local v1    # "preferVersion":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->enableUsePrefer(Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 542
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 543
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 544
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->startCheckPermissionScheme(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    goto :goto_0

    .line 527
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 528
    sget-object v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "deleteAppInfo "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from H5PreferAppList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 532
    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->deleteAppInfoWithAppId(Ljava/lang/String;)V

    .line 534
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->syncApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    goto/16 :goto_0

    .line 549
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private static doShowError(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 4
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "loadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .prologue
    .line 1255
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->logError(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;)V

    .line 1257
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->setUseDevMode(Ljava/lang/String;Z)V

    .line 1260
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$16;

    invoke-direct {v1, p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$16;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1283
    return-void
.end method

.method public static exitAndStartApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 12
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .prologue
    .line 1021
    if-nez p0, :cond_0

    .line 1155
    :goto_0
    return-void

    .line 1026
    :cond_0
    if-eqz p1, :cond_1

    .line 1029
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->pageDestroy()Z

    move-result v2

    .line 1031
    .local v2, "destroy":Z
    sget-object v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "destroy:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    if-eqz v2, :cond_1

    .line 1034
    sget-object v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "has exit not startApp"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1039
    .end local v2    # "destroy":Z
    :cond_1
    if-eqz p1, :cond_2

    .line 1040
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->getPageStatues()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 1041
    sget-object v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "H5PageStatues.HAS_START_APP not startApp again"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1045
    :cond_2
    if-eqz p1, :cond_3

    .line 1046
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->getPageStatues()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 1047
    sget-object v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "H5PageStatues.SHOW_FAIL not startApp again"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1052
    :cond_3
    if-eqz p1, :cond_4

    .line 1053
    const/4 v7, 0x3

    invoke-interface {p1, v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->setPageStatue(I)V

    .line 1057
    :cond_4
    const-string/jumbo v7, "nebulaH5TinyApp"

    iget-object v8, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaAppType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1083
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->getStartLoadingTime()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 1084
    .local v4, "extraDelayTime":J
    const-wide/16 v8, 0x12c

    cmp-long v7, v4, v8

    if-gtz v7, :cond_5

    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-gez v7, :cond_7

    .line 1085
    :cond_5
    const-wide/16 v4, 0x0

    .line 1090
    :goto_1
    long-to-int v0, v4

    .line 1091
    .local v0, "animDelay":I
    long-to-int v6, v4

    .line 1093
    .local v6, "startAppDelay":I
    const-class v7, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1094
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1095
    .local v3, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v3, :cond_6

    .line 1096
    const-string/jumbo v7, "h5_openLoadingDelay"

    invoke-interface {v3, v7}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1097
    .local v1, "config":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string/jumbo v7, "yes"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1098
    add-int/lit16 v6, v6, 0x12c

    .line 1101
    .end local v1    # "config":Ljava/lang/String;
    :cond_6
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->playExitAnimation(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V

    .line 1102
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;

    invoke-direct {v8, p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    int-to-long v10, v6

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1111
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;

    invoke-direct {v8, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    const-wide/16 v10, 0x9c4

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1087
    .end local v0    # "animDelay":I
    .end local v3    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v6    # "startAppDelay":I
    :cond_7
    const-wide/16 v8, 0x12c

    sub-long v4, v8, v4

    goto :goto_1

    .line 1122
    .end local v4    # "extraDelayTime":J
    :cond_8
    sget-boolean v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->isFirstStartApp:Z

    if-eqz v7, :cond_9

    .line 1123
    const/4 v7, 0x0

    sput-boolean v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->isFirstStartApp:Z

    .line 1125
    const/16 v7, 0x1f4

    invoke-static {p1, v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->playExitAnimation(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V

    .line 1126
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$12;

    invoke-direct {v8, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$12;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    const-wide/16 v10, 0x3e8

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1136
    sget-object v7, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isFirstStartApp startApp"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->startApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    goto/16 :goto_0

    .line 1140
    :cond_9
    const/16 v7, 0x1f4

    invoke-static {p1, v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->playExitAnimation(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V

    .line 1141
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$13;

    invoke-direct {v8, p1, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$13;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    const-wide/16 v10, 0x3e8

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private static exitPageAndOpenUrl(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .prologue
    .line 604
    if-nez p1, :cond_0

    .line 632
    :goto_0
    return-void

    .line 608
    :cond_0
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->getPageStatues()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 609
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "has show fail not open"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :cond_1
    const/16 v0, 0x1f4

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->playExitAnimation(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V

    .line 615
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;

    invoke-direct {v1, p1, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static finalStartApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 4
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .prologue
    .line 1193
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startApp "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " nebulaAppType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaAppType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v1, "nebulaStartflag"

    const-string/jumbo v2, "yes"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->putAppType(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 1199
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v1, "nebula_loading_version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v1, "nebula_loading_version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v1, "nebula_loading_version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5LoadingApp;->remove(Ljava/lang/String;)V

    .line 1207
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/b;->c()Lcom/alipay/mobile/framework/c;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sourceAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    .line 1208
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1210
    return-void
.end method

.method private static getLoadingImpl()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .locals 4

    .prologue
    .line 1445
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1446
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_1

    .line 1447
    const-string/jumbo v3, "h5_newloadpage"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1448
    .local v2, "value":Ljava/lang/String;
    const-string/jumbo v3, "no"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1450
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;-><init>()V

    .line 1463
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 1456
    :cond_1
    const-class v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 1457
    .local v1, "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    if-nez v1, :cond_0

    .line 1461
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    .line 1463
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;

    .end local v1    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;-><init>()V

    goto :goto_0
.end method

.method private static getResourcePackageList(Landroid/os/Bundle;)Ljava/util/List;
    .locals 6
    .param p0, "copyParam"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    const-string/jumbo v4, "nbpkgres"

    invoke-static {p0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 554
    .local v2, "packageList":Lcom/alibaba/fastjson/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v3, "resPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 557
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 558
    .local v0, "appId":Ljava/lang/Object;
    check-cast v0, Ljava/lang/String;

    .end local v0    # "appId":Ljava/lang/Object;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 561
    :catch_0
    move-exception v1

    .line 562
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 564
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v3
.end method

.method private static getTimeout(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)I
    .locals 19
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "appStartParam"    # Landroid/os/Bundle;
    .param p3, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .prologue
    .line 1368
    const-class v16, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1369
    .local v7, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v7, :cond_0

    .line 1370
    const-string/jumbo v16, "h5_loading_timeout"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1371
    .local v15, "value":Ljava/lang/String;
    const-string/jumbo v16, "no"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1372
    const/4 v4, -0x1

    .line 1440
    .end local v15    # "value":Ljava/lang/String;
    :goto_0
    return v4

    .line 1376
    :cond_0
    if-eqz p2, :cond_1

    .line 1377
    const-string/jumbo v16, "nbprepareTime"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1378
    .local v9, "nbprepareTime":Ljava/lang/String;
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 1379
    .local v5, "data":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1381
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->isSyncType(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1382
    const-string/jumbo v8, "force"

    .line 1386
    .local v8, "key":Ljava/lang/String;
    :goto_1
    invoke-static {v5, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1387
    .local v14, "time":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1389
    :try_start_0
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1390
    .local v4, "cost":I
    sget-object v16, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "data "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " key "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1392
    .end local v4    # "cost":I
    :catch_0
    move-exception v13

    .line 1393
    .local v13, "throwable":Ljava/lang/Throwable;
    sget-object v16, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v0, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1400
    .end local v5    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "nbprepareTime":Ljava/lang/String;
    .end local v13    # "throwable":Ljava/lang/Throwable;
    .end local v14    # "time":Ljava/lang/String;
    :cond_1
    const-class v16, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 1401
    .local v6, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v6, :cond_9

    .line 1402
    const-string/jumbo v16, "expireTime"

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getConfigExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1403
    .local v11, "preReqRate":Ljava/lang/String;
    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 1404
    .local v10, "preJson":Lcom/alibaba/fastjson/JSONObject;
    sget-object v16, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " prepareTime :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " loadingType:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_8

    .line 1407
    const-string/jumbo v16, "switch"

    move-object/from16 v0, v16

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1408
    .local v12, "switchValue":Ljava/lang/String;
    const-string/jumbo v16, "0"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 1410
    const/4 v8, 0x0

    .line 1412
    .restart local v8    # "key":Ljava/lang/String;
    if-eqz p3, :cond_9

    .line 1413
    move-object/from16 v0, p3

    iget v2, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_channel:I

    .line 1414
    .local v2, "app_channel":I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v10, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 1415
    .local v3, "channelJsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_2

    .line 1416
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->isSyncType(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1417
    const-string/jumbo v8, "force"

    .line 1424
    :cond_2
    :goto_2
    invoke-static {v3, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1425
    .restart local v15    # "value":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 1426
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1384
    .end local v2    # "app_channel":I
    .end local v3    # "channelJsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v8    # "key":Ljava/lang/String;
    .end local v10    # "preJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "preReqRate":Ljava/lang/String;
    .end local v12    # "switchValue":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    .restart local v5    # "data":Lcom/alibaba/fastjson/JSONObject;
    .restart local v9    # "nbprepareTime":Ljava/lang/String;
    :cond_3
    const-string/jumbo v8, "try"

    .restart local v8    # "key":Ljava/lang/String;
    goto/16 :goto_1

    .line 1418
    .end local v5    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "nbprepareTime":Ljava/lang/String;
    .restart local v2    # "app_channel":I
    .restart local v3    # "channelJsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v6    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v10    # "preJson":Lcom/alibaba/fastjson/JSONObject;
    .restart local v11    # "preReqRate":Ljava/lang/String;
    .restart local v12    # "switchValue":Ljava/lang/String;
    :cond_4
    const-string/jumbo v16, "synctry"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1419
    const-string/jumbo v8, "tryup"

    goto :goto_2

    .line 1420
    :cond_5
    const-string/jumbo v16, "try"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1421
    const-string/jumbo v8, "tryoff"

    goto :goto_2

    .line 1428
    .restart local v15    # "value":Ljava/lang/String;
    :cond_6
    const/16 v4, 0x1e

    goto/16 :goto_0

    .line 1434
    .end local v2    # "app_channel":I
    .end local v3    # "channelJsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "key":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    :cond_7
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 1437
    .end local v12    # "switchValue":Ljava/lang/String;
    :cond_8
    const/16 v4, 0x1e

    goto/16 :goto_0

    .line 1440
    .end local v10    # "preJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "preReqRate":Ljava/lang/String;
    :cond_9
    const/4 v4, -0x1

    goto/16 :goto_0
.end method

.method private static goFallback(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$FallBackListen;)V
    .locals 9
    .param p0, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p1, "fallBackListen"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$FallBackListen;

    .prologue
    const/4 v8, 0x0

    .line 1292
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;

    .line 1293
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;

    .line 1294
    .local v1, "h5FallbackStreamProvider":Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;
    if-eqz v1, :cond_3

    if-eqz p0, :cond_3

    .line 1295
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1296
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1297
    .local v6, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v6, :cond_1

    .line 1298
    const-string/jumbo v0, "h5_tiny_app_fallback"

    invoke-interface {v6, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1299
    .local v7, "value":Ljava/lang/String;
    const-string/jumbo v0, "no"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1300
    const-string/jumbo v0, "configIsClose"

    invoke-interface {p1, v8, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$FallBackListen;->canGoFallback(ZLjava/lang/String;)V

    .line 1355
    .end local v6    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v7    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1306
    .restart local v6    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 1307
    const/4 v0, 0x1

    const-string/jumbo v4, ""

    invoke-interface {p1, v0, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$FallBackListen;->canGoFallback(ZLjava/lang/String;)V

    goto :goto_0

    .line 1311
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->fallback_base_url:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "api_permission"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1312
    .local v2, "api_permission":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->fallback_base_url:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "appConfig.json"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1313
    .local v3, "appConfigUrl":Ljava/lang/String;
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "api_permission "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " appConfigUrl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1315
    const-string/jumbo v0, "RPC"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v8

    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;-><init>(Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$FallBackListen;)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1351
    .end local v2    # "api_permission":Ljava/lang/String;
    .end local v3    # "appConfigUrl":Ljava/lang/String;
    .end local v6    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_3
    if-eqz p1, :cond_0

    .line 1352
    const-string/jumbo v0, "fallbackAppInfoIsEmpty"

    invoke-interface {p1, v8, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$FallBackListen;->canGoFallback(ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static hasCheckParam(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "param"    # Landroid/os/Bundle;

    .prologue
    .line 115
    if-eqz p0, :cond_0

    const-string/jumbo v0, "nebulaStartflag"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yes"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static install(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "nebulaAppProvider"    # Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .prologue
    .line 967
    const-string/jumbo v0, "URGENT_DISPLAY"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$8;

    invoke-direct {v1, p2, p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$8;-><init>(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 974
    return-void
.end method

.method public static isSyncType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 1359
    const-string/jumbo v0, "syncforce"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sync"

    .line 1360
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 1359
    goto :goto_0
.end method

.method private static logError(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;)V
    .locals 6
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1213
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 1214
    .local v0, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_0

    .line 1215
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "appId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^step="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1216
    .local v4, "param3":Ljava/lang/String;
    const-string/jumbo v1, "H5_APP_PREPARE"

    const-string/jumbo v2, "monitor"

    const-string/jumbo v3, ""

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    .end local v4    # "param3":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static logInstallStatus(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "isInstall"    # Z

    .prologue
    .line 957
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    .line 958
    .local v0, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 959
    .local v6, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "appId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^isInstall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^installPackageConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "h5_installPackageConfig"

    .line 961
    invoke-interface {v6, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 962
    .local v4, "param3":Ljava/lang/String;
    const-string/jumbo v1, "H5_APP_INSTALL_STATUS"

    const-string/jumbo v2, "monitor"

    const-string/jumbo v3, ""

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    .end local v4    # "param3":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static offlineFail(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p2, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p5, "offMode"    # Ljava/lang/String;

    .prologue
    .line 717
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setEndTime(J)V

    .line 718
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setErrorCode(Ljava/lang/String;)V

    .line 719
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setNbUrl(Ljava/lang/String;)V

    .line 721
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->uploadPrepareLog()V

    .line 722
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->exitPageAndOpenUrl(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    .line 726
    :goto_0
    return-void

    .line 724
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->showError(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static offlineNebulaAppAsync(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .prologue
    .line 918
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 919
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 920
    .local v2, "nebulaAppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 954
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v2, p0, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 925
    .local v1, "isInstalled":Z
    if-nez v1, :cond_3

    .line 926
    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v2, p0, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 927
    .local v0, "isAvailable":Z
    sget-object v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "offlineNebulaAppAsync App appId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isAvailable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    if-nez v0, :cond_2

    .line 930
    sget-object v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "offlineNebulaAppAsync :downloadApp appId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    new-instance v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7;

    invoke-direct {v4, p0, p1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7;-><init>(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V

    invoke-interface {v2, p0, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->downloadApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    goto :goto_0

    .line 947
    :cond_2
    sget-object v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "offlineNebulaAppAsync App appId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to install "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->install(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V

    .line 949
    iget-object v3, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->logInstallStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 952
    .end local v0    # "isAvailable":Z
    :cond_3
    sget-object v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "offlineNebulaAppAsync App appId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is install "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static openApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 4
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p2, "syncUpdate"    # Ljava/lang/String;
    .param p3, "copyParam"    # Landroid/os/Bundle;
    .param p4, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .prologue
    .line 981
    iget-boolean v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->isCloseBtnClicked:Z

    if-nez v1, :cond_1

    .line 983
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setEndTime(J)V

    .line 984
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setErrorCode(Ljava/lang/String;)V

    .line 985
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->uploadPrepareLog()V

    .line 987
    invoke-static {p3, p4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->addRecentAppForDebugMode(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 990
    const-string/jumbo v1, "synctry"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "syncforce"

    .line 991
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 993
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v1, p3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->updateNebulaAppAsync(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 995
    :cond_0
    if-eqz p1, :cond_3

    .line 996
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->enableExitAndStartAppOnMain()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 997
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$9;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$9;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 1015
    :cond_1
    :goto_0
    return-void

    .line 1005
    :cond_2
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->exitAndStartApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1010
    :catch_0
    move-exception v0

    .line 1011
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startApp [targetAppId] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1008
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->startApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static paramParse(Landroid/os/Bundle;)V
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 120
    const-string/jumbo v0, "nbupdate"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 121
    const-string/jumbo v0, "nboffline"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 122
    const-string/jumbo v0, "nburl"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 123
    const-string/jumbo v0, "nbversion"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 124
    const-string/jumbo v0, "nboffmode"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 125
    return-void
.end method

.method private static playExitAnimation(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V
    .locals 4
    .param p0, "manager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p1, "delay"    # I

    .prologue
    .line 635
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$3;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 644
    return-void
.end method

.method private static setDevReq(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)V
    .locals 1
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "appReq"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .prologue
    .line 661
    if-eqz p1, :cond_0

    .line 662
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getDevInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsn:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->scene:Ljava/lang/String;

    .line 663
    const-string/jumbo v0, "debug"

    iput-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->nbsource:Ljava/lang/String;

    .line 665
    :cond_0
    return-void
.end method

.method private static setStartParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "appIconUrl"    # Ljava/lang/String;
    .param p2, "slogan"    # Ljava/lang/String;
    .param p3, "param"    # Landroid/os/Bundle;

    .prologue
    .line 129
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 130
    .local v1, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v1, :cond_1

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "appIcon"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v4, "appName"

    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string/jumbo v4, "appSlogan"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-class v4, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 137
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 139
    .local v2, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getMultiProcessTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 142
    .local v3, "lpid":I
    sget-object v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "lpid "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    if-eqz v3, :cond_0

    .line 144
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getMultiProcessTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .end local v3    # "lpid":I
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setSyncOffline(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 24
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "syncOffline"    # Ljava/lang/String;
    .param p2, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p3, "syncUpdate"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p6, "offMode"    # Ljava/lang/String;
    .param p7, "copyParam"    # Landroid/os/Bundle;

    .prologue
    .line 735
    const-string/jumbo v6, "sync"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static/range {p7 .. p7}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->enableDSL(Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 737
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/appcenter/util/H5LoadingApp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-class v6, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 740
    .local v7, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v7, :cond_1

    if-nez p5, :cond_2

    .line 893
    .end local v7    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_1
    :goto_0
    return-void

    .line 744
    .restart local v7    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v7, v6, v8}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    .line 745
    .local v21, "isAvailable":Z
    sget-object v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "syncOffline=sync "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p5

    iget-object v9, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v8, "is_local"

    move/from16 v0, v21

    invoke-virtual {v6, v8, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 750
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v8, "perf_open_app_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-virtual {v6, v8, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 751
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v8, "perf_rpc_time"

    sget-object v9, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getRequestEndTime()J

    move-result-wide v14

    sget-object v9, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getRequestBeginTime()J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-virtual {v6, v8, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 753
    if-nez v21, :cond_7

    .line 755
    if-eqz p0, :cond_3

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->enableMultiProcess:Z

    if-eqz v6, :cond_3

    .line 756
    const-class v6, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 757
    .local v19, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v19, :cond_3

    .line 758
    invoke-virtual/range {v19 .. v19}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->startLiteProcessAsync()Z

    .line 762
    .end local v19    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_3
    move-object/from16 v23, p1

    .line 763
    .local v23, "loadingType":Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 764
    move-object/from16 v23, p6

    .line 767
    :cond_4
    if-nez p2, :cond_6

    .line 768
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->getLoadingImpl()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    move-result-object p2

    .line 769
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 770
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    move-object/from16 v2, p5

    invoke-static {v6, v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->getTimeout(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)I

    move-result v6

    .line 769
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-static {v0, v7, v1, v2, v6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->showPackageLoadingPage(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;I)V

    .line 780
    :cond_5
    :goto_1
    move-object/from16 v10, p2

    .line 781
    .local v10, "finalH5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    sget-object v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setDownloadTime(J)V

    .line 782
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;

    move-object/from16 v8, p0

    move-object/from16 v9, p5

    move-object/from16 v11, p3

    move-object/from16 v12, p7

    move-object/from16 v13, p4

    move-object/from16 v14, p6

    invoke-direct/range {v6 .. v14}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;-><init>(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    move-object/from16 v0, v16

    invoke-interface {v7, v15, v0, v6}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->downloadApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    goto/16 :goto_0

    .line 773
    .end local v10    # "finalH5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingTypeListen()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;

    move-result-object v20

    .line 774
    .local v20, "h5LoadingTypeListen":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;
    if-eqz v20, :cond_5

    .line 775
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 776
    move-object/from16 v0, v23

    move-object/from16 v1, p7

    move-object/from16 v2, p5

    invoke-static {v6, v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->getTimeout(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 775
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v6, v8}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;->onGetType(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 856
    .end local v20    # "h5LoadingTypeListen":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;
    .end local v23    # "loadingType":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v7, v6, v8}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    .line 857
    .local v22, "isInstall":Z
    sget-object v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "isInstall "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    if-eqz v22, :cond_8

    .line 859
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p7

    move-object/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->openApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    goto/16 :goto_0

    .line 862
    :cond_8
    sget-object v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setInstallTime(J)V

    .line 863
    move-object/from16 v13, p2

    .line 864
    .local v13, "finalH5LoadingManager1":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    new-instance v11, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;

    move-object/from16 v12, p0

    move-object/from16 v14, p3

    move-object/from16 v15, p7

    move-object/from16 v16, p5

    move-object/from16 v17, p4

    move-object/from16 v18, p6

    invoke-direct/range {v11 .. v18}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v6, v8, v11}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->installApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    goto/16 :goto_0

    .line 887
    .end local v7    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v13    # "finalH5LoadingManager1":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .end local v21    # "isAvailable":Z
    .end local v22    # "isInstall":Z
    :cond_9
    invoke-static/range {p5 .. p5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isH5AppPkg(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 888
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->offlineNebulaAppAsync(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 891
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p7

    move-object/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->openApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    goto/16 :goto_0
.end method

.method private static showError(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V
    .locals 1
    .param p0, "loadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p1, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p4, "offMode"    # Ljava/lang/String;

    .prologue
    .line 1227
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->downloadFail:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->installFail:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "try"

    .line 1228
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1230
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$15;

    invoke-direct {v0, p1, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$15;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    invoke-static {p3, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->goFallback(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$FallBackListen;)V

    .line 1250
    :goto_0
    return-void

    .line 1248
    :cond_1
    invoke-static {p1, p2, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->doShowError(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    goto :goto_0
.end method

.method private static showPackageLoadingPage(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;I)V
    .locals 11
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "h5AppProvider"    # Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .param p2, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p3, "loadingType"    # Ljava/lang/String;
    .param p4, "timeout"    # I

    .prologue
    .line 897
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getIconUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 898
    .local v6, "appIconUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 899
    .local v7, "appName":Ljava/lang/String;
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v1, "NebulaWalletAppName"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const/4 v8, 0x1

    .line 901
    .local v8, "enableSlogan":Z
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 902
    .local v9, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v9, :cond_0

    const-string/jumbo v0, "no"

    const-string/jumbo v1, "h5_loadpageslogan"

    invoke-interface {v9, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    const/4 v8, 0x0

    .line 905
    :cond_0
    const-string/jumbo v10, ""

    .line 906
    .local v10, "slogan":Ljava/lang/String;
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isSmallProgramFromOpenPlat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getSlogan(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    .line 910
    invoke-static {v7, v6, v10, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->setStartParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object v0, p2

    move-object v3, p3

    move-object v4, p0

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->open(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;I)V

    .line 913
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v1, "packageLoadingShown"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 914
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setPageStatus(I)V

    .line 915
    return-void
.end method

.method private static startApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 8
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1158
    if-eqz p1, :cond_0

    .line 1159
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->getPageStatues()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 1160
    sget-object v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "pageStatues.currentPageStatues == PageStatues.SHOW_FAIL not startApp again"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    :goto_0
    return-void

    .line 1164
    :cond_0
    iget-boolean v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->useAppX:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    if-nez v5, :cond_3

    const-string/jumbo v5, "66666672"

    iget-object v6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    move v2, v3

    .line 1165
    .local v2, "enableOuter":Z
    :goto_1
    iget-boolean v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->useAppX:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    if-ne v5, v3, :cond_4

    iget-boolean v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->isUsePresetPopmenu:Z

    if-eqz v5, :cond_4

    move v0, v3

    .line 1166
    .local v0, "enableInner":Z
    :goto_2
    iget v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    if-ne v5, v7, :cond_5

    iget-boolean v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->enableUpDownAnimWithoutAppinfo:Z

    if-eqz v5, :cond_5

    move v1, v3

    .line 1167
    .local v1, "enableNoAppinfo":Z
    :goto_3
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "H5AppHandler.startApp enableOuter "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " enableInner "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " enableNoAppinfo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    if-nez v2, :cond_1

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 1169
    :cond_1
    if-nez p1, :cond_6

    .line 1171
    sget-object v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "put needAnimInTiny true"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v5, "needAnimInTiny"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1179
    :cond_2
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1180
    const-string/jumbo v3, "URGENT_DISPLAY"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$14;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$14;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .end local v0    # "enableInner":Z
    .end local v1    # "enableNoAppinfo":Z
    .end local v2    # "enableOuter":Z
    :cond_3
    move v2, v4

    .line 1164
    goto :goto_1

    .restart local v2    # "enableOuter":Z
    :cond_4
    move v0, v4

    .line 1165
    goto :goto_2

    .restart local v0    # "enableInner":Z
    :cond_5
    move v1, v4

    .line 1166
    goto :goto_3

    .line 1175
    .restart local v1    # "enableNoAppinfo":Z
    :cond_6
    sget-object v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "put needAnimInTiny false"

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v5, "needAnimInTiny"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 1187
    :cond_7
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->finalStartApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    goto/16 :goto_0
.end method

.method public static syncApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 48
    .param p0, "startAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .prologue
    .line 155
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->clear()V

    .line 156
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setBeginTime(J)V

    .line 158
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->h5EventHandlerService:Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    if-nez v5, :cond_0

    .line 160
    const-class v5, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    sput-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->h5EventHandlerService:Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 163
    :cond_0
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 164
    .local v6, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-nez v6, :cond_2

    .line 498
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isOffLine(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    .line 169
    invoke-static {v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 170
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    invoke-interface {v6, v5, v15}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->showOfflinePage(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 174
    :cond_3
    const/4 v5, 0x0

    sput v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->waitCount:I

    .line 176
    const/16 v32, 0x0

    .line 178
    .local v32, "hasAppInfo":Z
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v22, "copyParam":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    if-eqz v5, :cond_4

    .line 182
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "copyParam":Landroid/os/Bundle;
    check-cast v22, Landroid/os/Bundle;

    .line 186
    .restart local v22    # "copyParam":Landroid/os/Bundle;
    :cond_4
    invoke-static/range {v22 .. v22}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 187
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v5, v15}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->remove(Ljava/lang/String;)V

    .line 190
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    .line 191
    .local v38, "millis":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-interface {v6, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 192
    .local v25, "currentNbVersion":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v26, v16, v38

    .line 193
    .local v26, "cost":J
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " getVersion "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " cost:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, v26

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setGetDBVersionTime(J)V

    .line 196
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-interface {v6, v5, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v20

    .line 197
    .local v20, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v20, :cond_6

    .line 198
    const/16 v32, 0x1

    .line 201
    :cond_6
    const/16 v45, 0x0

    .line 202
    .local v45, "useDev":Z
    const-string/jumbo v41, ""

    .line 203
    .local v41, "nbsv":Ljava/lang/String;
    const-string/jumbo v40, ""

    .line 206
    .local v40, "nbsn":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v5, v15}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 207
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->setUseDevMode(Ljava/lang/String;Z)V

    .line 209
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v5, v15}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getDevInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    move-result-object v30

    .line 210
    .local v30, "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    const/16 v45, 0x1

    .line 211
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsv:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 212
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsn:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 213
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v0, v30

    iget-object v15, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsv:Ljava/lang/String;

    invoke-interface {v6, v5, v15}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v20

    .line 214
    if-eqz v20, :cond_14

    const/16 v32, 0x1

    .line 215
    :goto_1
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "nbsv "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsv:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " hasAppInfo:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .end local v30    # "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    :goto_2
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->mergeConmonStartParam(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Landroid/os/Bundle;

    .line 224
    invoke-static/range {v22 .. v22}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->paramParse(Landroid/os/Bundle;)V

    .line 227
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->checkDebugMode(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 232
    const-string/jumbo v5, "nbversion"

    .line 233
    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 235
    .local v47, "wantNebulaVersion":Ljava/lang/String;
    const-string/jumbo v5, "nboffline"

    .line 236
    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 238
    .local v7, "syncOffline":Ljava/lang/String;
    const-string/jumbo v5, "nbupdate"

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 239
    .local v18, "syncUpdate":Ljava/lang/String;
    const-string/jumbo v5, "nburl"

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 240
    .local v12, "nbUrl":Ljava/lang/String;
    const-string/jumbo v5, "nboffmode"

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 243
    .local v13, "nbOffMode":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 244
    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->enableKeepAlive(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 245
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->needStopLiteProcessByAppId(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 246
    :cond_7
    const-class v5, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 247
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 248
    .local v31, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v31, :cond_8

    .line 249
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->stopLiteProcessByAppIdInServer(Ljava/lang/String;)V

    .line 254
    .end local v31    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_8
    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 255
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->addTinyAppRecord(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 259
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v5, v15}, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    if-nez v32, :cond_b

    .line 260
    :cond_a
    const-string/jumbo v18, "syncforce"

    .line 264
    :cond_b
    const/16 v36, 0x0

    .line 265
    .local v36, "isOutOfReqRate":Z
    if-eqz v32, :cond_c

    .line 266
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->isOutOfReqRate(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v36

    .line 267
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "[syncApp] outOfReqRate: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v36

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    if-eqz v36, :cond_c

    .line 270
    const-string/jumbo v18, "synctry"

    .line 274
    :cond_c
    if-eqz v20, :cond_16

    .line 275
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->setAppType(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;)V

    .line 276
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 277
    .local v42, "nebulaVersion":Ljava/lang/String;
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "nebulaVersion "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    .line 287
    .end local v42    # "nebulaVersion":Ljava/lang/String;
    :cond_d
    :goto_3
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "targetAppId:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " wantNebulaVersion:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v47

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " syncOffline:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " syncUpdate:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " currentNbVersion:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " nbUrl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "nbOffMode: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setRequestMode(Ljava/lang/String;)V

    .line 295
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v5, v7, v13}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setOfflineMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v5, v15}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setAppId(Ljava/lang/String;)V

    .line 297
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    invoke-virtual {v5, v15}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setVersion(Ljava/lang/String;)V

    .line 301
    const-string/jumbo v5, "synctry"

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string/jumbo v5, "syncforce"

    .line 302
    move-object/from16 v0, v18

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 304
    :cond_e
    move-object/from16 v0, v25

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v43

    .line 306
    .local v43, "openResult":I
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "currentNbVersion"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " wantNebulaVersion:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v47

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, v43

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v5, -0x1

    move/from16 v0, v43

    if-eq v0, v5, :cond_f

    .line 311
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v5, v15}, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    if-eqz v32, :cond_f

    .line 313
    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    if-eqz v36, :cond_1a

    .line 317
    :cond_f
    move-object/from16 v37, v18

    .line 318
    .local v37, "loadingType":Ljava/lang/String;
    const-string/jumbo v5, "synctry"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string/jumbo v5, "sync"

    .line 319
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    if-eqz v20, :cond_10

    .line 321
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 322
    invoke-interface {v6, v5, v15}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v35

    .line 323
    .local v35, "isAvailable":Z
    if-nez v35, :cond_17

    .line 324
    const-string/jumbo v37, "syncforce"

    .line 335
    .end local v35    # "isAvailable":Z
    :cond_10
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->getLoadingImpl()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    move-result-object v9

    .line 336
    .local v9, "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 337
    move-object/from16 v0, v37

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v5, v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->getTimeout(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)I

    move-result v5

    .line 336
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-static {v0, v6, v9, v1, v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->showPackageLoadingPage(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;I)V

    .line 339
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 341
    .local v33, "hashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v23, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    invoke-direct/range {v23 .. v23}, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;-><init>()V

    .line 342
    .local v23, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    const-string/jumbo v5, "synctry"

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 343
    const-string/jumbo v5, "synctry"

    move-object/from16 v0, v23

    iput-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    .line 350
    :goto_5
    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v5

    if-nez v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v15, 0xf

    if-le v5, v15, :cond_12

    .line 351
    :cond_11
    const-string/jumbo v5, "NO"

    move-object/from16 v0, v23

    iput-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->stableRpc:Ljava/lang/String;

    .line 355
    :cond_12
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 356
    .local v29, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v29, :cond_13

    .line 357
    const-string/jumbo v5, "H5_loading_use_stableRpc"

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 358
    .local v46, "value":Ljava/lang/String;
    const-string/jumbo v5, "yes"

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 360
    const-string/jumbo v5, "NO"

    move-object/from16 v0, v23

    iput-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->stableRpc:Ljava/lang/String;

    .line 366
    .end local v46    # "value":Ljava/lang/String;
    :cond_13
    if-eqz v45, :cond_19

    .line 367
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "useDev "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " nbsn:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v40

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->setDevReq(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)V

    .line 376
    :goto_6
    move-object/from16 v11, v18

    .line 377
    .local v11, "finalSyncUpdate":Ljava/lang/String;
    move-object/from16 v8, v41

    .line 378
    .local v8, "finalNbsv":Ljava/lang/String;
    move/from16 v10, v32

    .line 379
    .local v10, "finalHasAppInfo":Z
    move-object/from16 v14, v22

    .line 380
    .local v14, "finalCopyParam":Landroid/os/Bundle;
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setRequestBeginTime(J)V

    .line 382
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v5

    .line 383
    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppMap(Ljava/util/Map;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v5

    const/4 v15, 0x1

    .line 384
    invoke-virtual {v5, v15}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setForceRpc(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v5

    .line 385
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v5

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setStartTime(J)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v5

    .line 387
    invoke-static/range {v22 .. v22}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->getResourcePackageList(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setResPackageList(Ljava/util/List;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v24

    .line 389
    .local v24, "builder":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    new-instance v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v14}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 486
    .local v4, "h5UpdateAppCallback":Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setUpdateCallback(Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v5

    invoke-interface {v6, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V

    goto/16 :goto_0

    .line 214
    .end local v4    # "h5UpdateAppCallback":Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    .end local v7    # "syncOffline":Ljava/lang/String;
    .end local v8    # "finalNbsv":Ljava/lang/String;
    .end local v9    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .end local v10    # "finalHasAppInfo":Z
    .end local v11    # "finalSyncUpdate":Ljava/lang/String;
    .end local v12    # "nbUrl":Ljava/lang/String;
    .end local v13    # "nbOffMode":Ljava/lang/String;
    .end local v14    # "finalCopyParam":Landroid/os/Bundle;
    .end local v18    # "syncUpdate":Ljava/lang/String;
    .end local v23    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .end local v24    # "builder":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    .end local v29    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v33    # "hashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v36    # "isOutOfReqRate":Z
    .end local v37    # "loadingType":Ljava/lang/String;
    .end local v43    # "openResult":I
    .end local v47    # "wantNebulaVersion":Ljava/lang/String;
    .restart local v30    # "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    :cond_14
    const/16 v32, 0x0

    goto/16 :goto_1

    .line 218
    .end local v30    # "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    :cond_15
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->setUseDevMode(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 280
    .restart local v7    # "syncOffline":Ljava/lang/String;
    .restart local v12    # "nbUrl":Ljava/lang/String;
    .restart local v13    # "nbOffMode":Ljava/lang/String;
    .restart local v18    # "syncUpdate":Ljava/lang/String;
    .restart local v36    # "isOutOfReqRate":Z
    .restart local v47    # "wantNebulaVersion":Ljava/lang/String;
    :cond_16
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    .line 281
    const-class v5, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    .line 282
    .local v28, "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    if-eqz v28, :cond_d

    .line 283
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->setIfNeedUpDownAnimWithoutAppinfo(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    goto/16 :goto_3

    .line 326
    .end local v28    # "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    .restart local v35    # "isAvailable":Z
    .restart local v37    # "loadingType":Ljava/lang/String;
    .restart local v43    # "openResult":I
    :cond_17
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 327
    invoke-interface {v6, v5, v15}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v34

    .line 328
    .local v34, "install":Z
    if-nez v34, :cond_10

    .line 329
    const-string/jumbo v37, "syncforce"

    goto/16 :goto_4

    .line 345
    .end local v34    # "install":Z
    .end local v35    # "isAvailable":Z
    .restart local v9    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .restart local v23    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .restart local v33    # "hashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_18
    const-string/jumbo v5, "syncforce"

    move-object/from16 v0, v23

    iput-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    goto/16 :goto_5

    .line 371
    .restart local v29    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 372
    invoke-interface {v6, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 373
    .local v44, "queryVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v44

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 490
    .end local v9    # "h5LoadingManager":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .end local v23    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .end local v29    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v33    # "hashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v37    # "loadingType":Ljava/lang/String;
    .end local v44    # "queryVersion":Ljava/lang/String;
    :cond_1a
    const/16 v17, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move-object/from16 v19, v12

    move-object/from16 v21, v13

    invoke-static/range {v15 .. v22}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->updateSuccess(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 495
    .end local v43    # "openResult":I
    :cond_1b
    const/16 v17, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move-object/from16 v19, v12

    move-object/from16 v21, v13

    invoke-static/range {v15 .. v22}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->updateSuccess(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private static updateFail(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 9
    .param p0, "syncUpdate"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "startAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p3, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p4, "syncOffline"    # Ljava/lang/String;
    .param p5, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p6, "appId"    # Ljava/lang/String;
    .param p7, "offMode"    # Ljava/lang/String;
    .param p8, "copyParam"    # Landroid/os/Bundle;
    .param p9, "rpcError"    # Z

    .prologue
    .line 572
    const-string/jumbo v0, "syncforce"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 573
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setEndTime(J)V

    .line 574
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setErrorCode(Ljava/lang/String;)V

    .line 575
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setNbUrl(Ljava/lang/String;)V

    .line 576
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->uploadPrepareLog()V

    .line 577
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    invoke-static {p1, p3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->exitPageAndOpenUrl(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    .line 600
    :goto_0
    return-void

    .line 580
    :cond_0
    if-eqz p9, :cond_1

    .line 581
    const-string/jumbo v0, "RpcError"

    invoke-static {p2, v0, p3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->doShowError(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    goto :goto_0

    .line 585
    :cond_1
    const-string/jumbo v0, "appNotExist"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->logError(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;)V

    .line 588
    invoke-static/range {p8 .. p8}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 589
    const-string/jumbo v0, "https://render.alipay.com/p/s/tinyapperror/?appId=%s&errorCode=%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p6, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x3eb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 593
    .local v8, "errorPageUrl":Ljava/lang/String;
    :goto_1
    invoke-static {v8, p3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->exitPageAndOpenUrl(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    goto :goto_0

    .line 591
    .end local v8    # "errorPageUrl":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "https://render.alipay.com/p/s/tinyapperror/?appId=%s&errorCode=%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p6, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x3e9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "errorPageUrl":Ljava/lang/String;
    goto :goto_1

    .end local v8    # "errorPageUrl":Ljava/lang/String;
    :cond_3
    move-object v0, p2

    move-object v1, p4

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 597
    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->setSyncOffline(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static updateNebulaAppAsync(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "copyParam"    # Landroid/os/Bundle;

    .prologue
    .line 672
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    .line 673
    .local v0, "executor":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    if-eqz v0, :cond_0

    .line 674
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$4;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$4;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 710
    :cond_0
    return-void
.end method

.method private static updateSuccess(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "syncOffline"    # Ljava/lang/String;
    .param p2, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .param p3, "syncUpdate"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p6, "offMode"    # Ljava/lang/String;
    .param p7, "copyParam"    # Landroid/os/Bundle;

    .prologue
    .line 651
    invoke-static {p7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-static {v0, p7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->updateApplicationDescription(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 655
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->setSyncOffline(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 657
    return-void
.end method
