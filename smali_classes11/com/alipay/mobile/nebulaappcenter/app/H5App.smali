.class public Lcom/alipay/mobile/nebulaappcenter/app/H5App;
.super Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;
.source "H5App.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;


# static fields
.field private static final H5NebulaApp:Ljava/lang/String; = "H5NebulaApp"

.field private static patchInstalling:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

.field private final appsPath:Ljava/lang/String;

.field private asyncInstall:Z

.field private context:Landroid/content/Context;

.field private downloadCallback:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

.field private downloadScene:Ljava/lang/String;

.field private h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

.field private h5ExternalDownloadManager:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

.field private h5PatchFail:Z

.field private networkListener:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

.field private preInstall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->patchInstalling:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;-><init>()V

    .line 50
    const-string/jumbo v0, "H5NebulaApp"

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->context:Landroid/content/Context;

    .line 60
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->getInstance()Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    .line 68
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5PatchFail:Z

    .line 70
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->asyncInstall:Z

    .line 73
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->preInstall:Z

    .line 82
    const-string/jumbo v0, "/nebulaInstallApps/"

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappcenter/util/H5AppGlobal;->getInstallPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appsPath:Ljava/lang/String;

    .line 83
    const-class v0, Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5ExternalDownloadManager:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5ExternalDownloadManager:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "h5ExternalDownloadManager == null use H5AppDownLoadImpl"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoadImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoadImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5ExternalDownloadManager:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    .line 89
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5ExternalDownloadManager:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    return-object v0
.end method

.method static synthetic access$402(Lcom/alipay/mobile/nebulaappcenter/app/H5App;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappcenter/app/H5App;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->preInstall:Z

    return p1
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5PatchFail:Z

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebulaappcenter/app/H5App;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappcenter/app/H5App;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getLastPkgPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private clearPatchDBInfo()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 791
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "clearPatchDBInfo "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    .line 793
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->saveAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)V

    .line 796
    :cond_0
    return-void
.end method

.method private closeStream(Ljava/io/Closeable;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/Closeable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 514
    if-eqz p1, :cond_0

    .line 515
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private controlConcurrentPatch()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 780
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 781
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 782
    const-string/jumbo v2, "h5_controlConcurrentPatch"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 784
    const/4 v2, 0x0

    .line 787
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private deleteOldPkgByFullInstall(Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appsPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 882
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteOldPkgByFullInstall "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 885
    :cond_0
    return-void
.end method

.method private disableAllPreInstall()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 416
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 417
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 418
    const-string/jumbo v2, "h5_enableAllPreInstall"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    const/4 v2, 0x1

    .line 423
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private doDownloadApp()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownLoadRequest()Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    move-result-object v0

    .line 160
    .local v0, "h5DownloadRequest":Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5ExternalDownloadManager:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    if-eqz v2, :cond_2

    .line 166
    const-string/jumbo v2, "IO"

    new-instance v3, Lcom/alipay/mobile/nebulaappcenter/app/H5App$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App$1;-><init>(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)V

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 174
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5ExternalDownloadManager:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    invoke-interface {v2, v0, p0}, Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;->addDownload(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    .line 177
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->isFromPreDownload()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->initNetWorkListen()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "throwable":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 184
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "doDownloadApp h5ExternalDownloadManager is null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enablePatch()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    const/4 v0, 0x1

    .line 101
    .local v0, "enable":Z
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5PatchProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5PatchProvider;

    .line 102
    .local v3, "h5PatchProvider":Lcom/alipay/mobile/nebula/provider/H5PatchProvider;
    if-nez v3, :cond_1

    .line 103
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "H5PatchProvider ==null not use patch"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x0

    .line 121
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "enablePatch "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return v0

    .line 106
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v5, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getLastPkgPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "file":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    const/4 v0, 0x0

    .line 110
    :cond_2
    if-nez v0, :cond_0

    .line 112
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 113
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v2, :cond_0

    .line 114
    const-string/jumbo v5, "h5_clear_patch"

    invoke-interface {v2, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, "no"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->clearPatchDBInfo()V

    goto :goto_0
.end method

.method private getDownLoadFileName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->package_url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDownLoadRequest()Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "downloadUrl":Ljava/lang/String;
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;-><init>()V

    .line 195
    .local v1, "request":Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->setAppId(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->setVersion(Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_dsec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->setDescription(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->setTitle(Ljava/lang/String;)V

    .line 201
    :cond_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->setDownloadUrl(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownLoadFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->setFileName(Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadScene:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->setScene(Ljava/lang/String;)V

    .line 204
    return-object v1
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fileKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 524
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 525
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 527
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method private getInstallFileName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->package_url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLastPkgPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 888
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    invoke-virtual {v5, p1}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->findInstallAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 889
    .local v1, "installVersion":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v3, v4

    .line 903
    :goto_0
    return-object v3

    .line 892
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    invoke-virtual {v5, p1, v1}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .line 893
    .local v2, "lastInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v2, :cond_2

    .line 894
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;-><init>()V

    .line 895
    .local v0, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 896
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->getInstalledPath()Ljava/lang/String;

    move-result-object v3

    .line 897
    .local v3, "lastInstallPath":Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 898
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "lastInstallPath:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " lastVersion:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    .end local v3    # "lastInstallPath":Ljava/lang/String;
    :cond_2
    move-object v3, v4

    .line 903
    goto :goto_0
.end method

.method private initNetWorkListen()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->networkListener:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->auto_install:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadCallback:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " has downloadCallback not cacel"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_3
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;-><init>(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->networkListener:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    .line 247
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->networkListener:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->addListener(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;)V

    goto :goto_0
.end method

.method private varargs declared-synchronized installApp([Ljava/lang/String;)Z
    .locals 17
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 647
    monitor-enter p0

    const/4 v10, 0x0

    .line 649
    .local v10, "filePath":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 650
    const/4 v3, 0x0

    .line 775
    :goto_0
    monitor-exit p0

    return v3

    .line 653
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    move-object/from16 v0, p1

    array-length v3, v0

    if-lez v3, :cond_1

    .line 654
    const/4 v3, 0x0

    aget-object v10, p1, v3

    .line 656
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "installApp filePath:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 659
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 660
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "installApp !file.exists()"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/4 v3, 0x0

    goto :goto_0

    .line 665
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "is install return"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const/4 v3, 0x1

    goto :goto_0

    .line 672
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 674
    const-string/jumbo v3, "H5_APP_UNZIP"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const-string/jumbo v5, "^step=start^isPatch=no"

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    .line 677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 678
    .local v14, "time":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->deleteOldPkgByFullInstall(Ljava/lang/String;)V

    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getInstalledPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/alipay/mobile/nebula/util/H5ZipUtil;->unZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 680
    .local v16, "unZipResult":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " installApp spend unzip "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v14

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    if-eqz v16, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isInstalled()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_5

    .line 683
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "H5_APP_UNZIP fail"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/io/File;)Z

    .line 685
    const-string/jumbo v3, "H5_APP_UNZIP"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const-string/jumbo v5, "^step=fail^isPatch=no"

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 690
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "installApp !unZipResult || !isInstalled() return false"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 686
    :catch_0
    move-exception v8

    .line 687
    .local v8, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "installApp delete exception"

    invoke-static {v3, v4, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 688
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 695
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/io/File;)Z

    .line 696
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->onInstallComplete(Z)V

    .line 697
    const-string/jumbo v3, "H5_APP_UNZIP"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const-string/jumbo v5, "^step=success^isPatch=no"

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    .line 699
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 701
    .end local v14    # "time":J
    .end local v16    # "unZipResult":Z
    :cond_6
    const-string/jumbo v3, "H5_APP_UNZIP"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const-string/jumbo v5, "^step=start^isPatch=yes"

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "h5App patcher update. appId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; filePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " patch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v5, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " patchInstalling : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->patchInstalling:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    sget-boolean v3, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->patchInstalling:Z

    if-eqz v3, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->controlConcurrentPatch()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "patchInstalling return;"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string/jumbo v3, "H5_APP_UNZIP"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const-string/jumbo v5, "^step=patchInstalling^isPatch=yes"

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    .line 709
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 711
    :cond_7
    const/4 v3, 0x1

    sput-boolean v3, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->patchInstalling:Z

    .line 714
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getLastPkgPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 716
    .local v12, "lathPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3, v12}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->patchH5File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 718
    .local v13, "patcherResult":Z
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5PatchFail:Z

    .line 721
    const/4 v3, 0x0

    sput-boolean v3, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->patchInstalling:Z

    .line 723
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 724
    .local v2, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v2, :cond_8

    .line 725
    const-string/jumbo v3, "h5_nebulaApp_installApp_patch"

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "success="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_8
    if-nez v13, :cond_b

    .line 731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->deleteOldPkgByFullInstall(Ljava/lang/String;)V

    .line 733
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 735
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->clearPatchDBInfo()V

    .line 737
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->preInstall:Z

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWifi()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 740
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->doDownloadApp()V

    .line 743
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "installApp !patcherResult return false"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string/jumbo v3, "H5_APP_UNZIP"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const-string/jumbo v5, "^step=fail^isPatch=yes"

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    .line 745
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 748
    :cond_b
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/io/File;)Z

    .line 750
    invoke-static {v12}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 751
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->onInstallComplete(Z)V

    .line 753
    const-string/jumbo v3, "H5_APP_UNZIP"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const-string/jumbo v5, "^step=success^isPatch=yes"

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 754
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 758
    .end local v2    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v9    # "file":Ljava/io/File;
    .end local v12    # "lathPath":Ljava/lang/String;
    .end local v13    # "patcherResult":Z
    :catch_1
    move-exception v11

    .line 759
    .local v11, "globalException":Ljava/lang/Exception;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "error"

    invoke-static {v3, v4, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 762
    const/4 v3, 0x0

    sput-boolean v3, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->patchInstalling:Z

    .line 764
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getInstalledPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 765
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 766
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 768
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "h5App patcher fail And downloadAll start."

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->clearPatchDBInfo()V

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadApp()V

    .line 775
    .end local v11    # "globalException":Ljava/lang/Exception;
    :cond_d
    :goto_1
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 772
    .restart local v11    # "globalException":Ljava/lang/Exception;
    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->onInstallComplete(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 647
    .end local v11    # "globalException":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private loadJsonFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 999
    .local v0, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1000
    .local v3, "in":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1002
    .local v5, "localBufferedReader":Ljava/io/BufferedReader;
    const/16 v6, 0x400

    new-array v1, v6, [C

    .line 1004
    .local v1, "data":[C
    :goto_0
    invoke-virtual {v5, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    .local v4, "len":I
    if-lez v4, :cond_0

    .line 1005
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1015
    .end local v1    # "data":[C
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "len":I
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 1016
    .local v2, "e":Ljava/io/FileNotFoundException;
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1007
    .restart local v1    # "data":[C
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "len":I
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1010
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1011
    :catch_1
    move-exception v2

    .line 1012
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    invoke-static {v6, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1017
    .end local v1    # "data":[C
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "len":I
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .line 1018
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private patchH5File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "lathPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 950
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 951
    :cond_0
    const/4 v13, 0x0

    .line 992
    :goto_0
    return v13

    .line 954
    :cond_1
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 956
    .local v9, "file":Ljava/io/File;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDefaultDownloadDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 957
    .local v8, "downloadDirectoryPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_patch/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 958
    .local v15, "unzipDirectory":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/alipay/mobile/nebula/util/H5ZipUtil;->unZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 959
    .local v14, "unZipResult":Z
    if-nez v14, :cond_2

    .line 960
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 961
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/io/File;)Z

    .line 962
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2

    .line 964
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/patch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 965
    .local v5, "patchPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/md5.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 966
    .local v12, "md5Path":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 967
    .local v6, "oldMd5":Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 968
    .local v7, "patchMd5":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->loadJsonFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 969
    .local v10, "jsonMd5":Ljava/lang/String;
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 970
    .local v11, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 971
    const-string/jumbo v2, "old"

    invoke-static {v11, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 972
    const-string/jumbo v2, "patch"

    invoke-static {v11, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 974
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "oldMd5 : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", patchMd5: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 976
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 979
    :cond_5
    const/4 v13, 0x0

    .line 980
    .local v13, "patcherResult":Z
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5PatchProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5PatchProvider;

    .line 981
    .local v1, "h5PatchProvider":Lcom/alipay/mobile/nebula/provider/H5PatchProvider;
    if-eqz v1, :cond_6

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->context:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getInstalledPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p3

    invoke-interface/range {v1 .. v7}, Lcom/alipay/mobile/nebula/provider/H5PatchProvider;->patcherDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 988
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "patcherResult :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " appId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 985
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "h5PatchProvider==null , setProvider for H5PatchProvider"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setWalletPreset()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 834
    const-class v7, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 835
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 836
    .local v5, "presetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getH5PresetPkg()Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 839
    :try_start_0
    invoke-interface {v5}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getH5PresetPkg()Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;

    move-result-object v3

    .line 840
    .local v3, "h5PresetPkg":Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;->getPreSetInfo()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 841
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;->getPreSetInfo()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 842
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isInstalled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 866
    .end local v3    # "h5PresetPkg":Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;
    :cond_0
    :goto_0
    return-void

    .line 845
    .restart local v3    # "h5PresetPkg":Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;
    :cond_1
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;->getPreSetInfo()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;

    .line 846
    .local v1, "details":Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;->appId:Ljava/lang/String;

    .line 847
    .local v0, "amrName":Ljava/lang/String;
    iget-object v6, v1, Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;->version:Ljava/lang/String;

    .line 848
    .local v6, "version":Ljava/lang/String;
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "setWalletPreset getPreSetInfo  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 850
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 851
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->context:Landroid/content/Context;

    .line 852
    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;->getPresetPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 853
    .local v4, "isSrc":Ljava/io/InputStream;
    if-eqz v4, :cond_0

    .line 854
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "setWalletPreset "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 855
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 854
    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const/4 v7, 0x1

    invoke-virtual {p0, v4, v7}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->presetAppPackage(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 862
    .end local v0    # "amrName":Ljava/lang/String;
    .end local v1    # "details":Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;
    .end local v3    # "h5PresetPkg":Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;
    .end local v4    # "isSrc":Ljava/io/InputStream;
    .end local v6    # "version":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 863
    .local v2, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "setWalletPreset not exist"

    invoke-static {v7, v8, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final downloadApp()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->setWalletPreset()V

    .line 803
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadCallback:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    if-eqz v0, :cond_2

    .line 804
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isPkgAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadCallback:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownLoadRequest()Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    move-result-object v1

    .line 806
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownloadedFilePath()Ljava/lang/String;

    move-result-object v2

    .line 805
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V

    .line 817
    :cond_1
    :goto_0
    return-void

    .line 810
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isPkgAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isDownloading()Z

    move-result v0

    if-nez v0, :cond_1

    .line 816
    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->doDownloadApp()V

    goto :goto_0
.end method

.method public downloadApp(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V
    .locals 1
    .param p1, "h5DownloadCallback"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .prologue
    .line 821
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadApp(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Ljava/lang/String;)V

    .line 822
    return-void
.end method

.method public downloadApp(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "h5DownloadCallback"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;
    .param p2, "scene"    # Ljava/lang/String;

    .prologue
    .line 826
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadCallback:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .line 827
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadScene:Ljava/lang/String;

    .line 828
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadApp()V

    .line 830
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 155
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDownloadLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownloadedFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->enablePatch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    .line 141
    :goto_0
    return-object v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->package_url:Ljava/lang/String;

    goto :goto_0

    .line 141
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDownloadedFilePath()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 539
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDefaultDownloadDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "downloadDirectoryPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownLoadFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, "downloadedFilePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "downloadedFilePath:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .end local v1    # "downloadedFilePath":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public getInstalledPath()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 629
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-nez v1, :cond_0

    .line 630
    const-string/jumbo v0, ""

    .line 636
    :goto_0
    return-object v0

    .line 633
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appsPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getInstallFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getInstalledPath:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public installApp()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isPkgAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownloadedFilePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->installApp([Ljava/lang/String;)Z

    move-result v0

    .line 436
    .local v0, "installSuccess":Z
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "installApp appId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    if-nez v0, :cond_0

    .line 440
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    const-string/jumbo v4, "4"

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->updateUnavailableReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_0
    return v0

    .line 434
    .end local v0    # "installSuccess":Z
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isInstalled()Z

    move-result v0

    .restart local v0    # "installSuccess":Z
    goto :goto_0
.end method

.method public installApp(Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)Z
    .locals 2
    .param p1, "h5AppInstallListen"    # Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->installApp()Z

    move-result v0

    .line 450
    .local v0, "result":Z
    if-eqz p1, :cond_0

    .line 451
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5PatchFail:Z

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;->onResult(ZZ)V

    .line 453
    :cond_0
    return v0
.end method

.method public installApp(Z)Z
    .locals 1
    .param p1, "async"    # Z

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->asyncInstall:Z

    .line 459
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->installApp()Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 1025
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isPkgAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloading()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 870
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5ExternalDownloadManager:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    if-nez v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isDownloading h5ExternalDownloadManager==null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5ExternalDownloadManager:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5ExternalDownloadManager:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    .line 874
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;->isDownloading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 873
    goto :goto_0
.end method

.method public isInstalled()Z
    .locals 17

    .prologue
    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-nez v2, :cond_0

    .line 568
    const/4 v2, 0x0

    .line 623
    :goto_0
    return v2

    .line 570
    :cond_0
    new-instance v10, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getInstalledPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 571
    .local v10, "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isInstalled: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " appId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 571
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 576
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 577
    .local v13, "listFiles":[Ljava/io/File;
    if-eqz v13, :cond_6

    array-length v2, v13

    if-lez v2, :cond_6

    .line 579
    array-length v12, v13

    .line 580
    .local v12, "length":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isInstalled length:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const/4 v2, 0x4

    if-ge v12, v2, :cond_5

    .line 585
    const-string/jumbo v5, ""

    .line 586
    .local v5, "fileNote":Ljava/lang/String;
    const/4 v7, 0x0

    .line 587
    .local v7, "containTar":Z
    array-length v3, v13

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v9, v13, v2

    .line 588
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    .line 589
    .local v14, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "install dir file "

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 591
    const-string/jumbo v4, "tar"

    invoke-virtual {v14, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 592
    const/4 v7, 0x1

    .line 587
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 595
    .end local v9    # "f":Ljava/io/File;
    .end local v14    # "name":Ljava/lang/String;
    :cond_2
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 596
    .local v1, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v1, :cond_3

    .line 597
    const-string/jumbo v2, "h5_nebulaApp_intallApp_exception"

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v2

    if-nez v2, :cond_4

    .line 601
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 602
    .local v11, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v11, :cond_5

    .line 603
    const-string/jumbo v2, "h5_delete_installAppFile"

    invoke-interface {v11, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 604
    .local v15, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isH5AppPkg(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v7, :cond_5

    .line 606
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->deleteNebulaInstallFileAndDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "install file is broken delete return notInstall"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 612
    .end local v11    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v15    # "value":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in Main thread not delete"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    .end local v1    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v5    # "fileNote":Ljava/lang/String;
    .end local v7    # "containTar":Z
    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 618
    .end local v12    # "length":I
    .end local v13    # "listFiles":[Ljava/io/File;
    :catch_0
    move-exception v8

    .line 619
    .local v8, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    invoke-static {v2, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 623
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public isPkgAvailable()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownloadedFilePath()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "downloadPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 557
    .local v1, "isAvailable":Z
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 558
    const/4 v1, 0x1

    .line 560
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isPkgAvailable: path:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isAvailable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    return v1
.end method

.method public onCancel(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V
    .locals 3
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 262
    const-string/jumbo v0, "H5_APP_DOWNLOAD"

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const-string/jumbo v2, "^step=cancel"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "download onCancel"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->networkListener:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    if-eqz v0, :cond_0

    .line 265
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->networkListener:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->removeListener(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;)V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->networkListener:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadCallback:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadCallback:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onCancel(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V

    .line 273
    :cond_1
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V
    .locals 5
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "errorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 280
    const-string/jumbo v1, "H5_APP_DOWNLOAD"

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "^step=fail^err=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "appId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " download onFailed, errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",errorMsg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownloadedFilePath()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "downloadFilePath":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    const-string/jumbo v1, "IO"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulaappcenter/app/H5App$3;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App$3;-><init>(Lcom/alipay/mobile/nebulaappcenter/app/H5App;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->networkListener:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    if-eqz v1, :cond_2

    .line 299
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->networkListener:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->removeListener(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;)V

    .line 300
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->networkListener:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    .line 303
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadCallback:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    if-eqz v1, :cond_3

    .line 304
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadCallback:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    invoke-virtual {v1, p1, p2, p3}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V

    .line 307
    :cond_3
    const-string/jumbo v1, "IO"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulaappcenter/app/H5App$4;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App$4;-><init>(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 315
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz v1, :cond_4

    .line 316
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/wifidownload/H5WifiDownloadList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_4
    return-void
.end method

.method public onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V
    .locals 5
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "savePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 333
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NebulaApp\u79bb\u7ebf\u5305\u4e0b\u8f7d\u5b8c\u6210\uff1aappName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " appId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " savePath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->networkListener:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    if-eqz v1, :cond_1

    .line 341
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->networkListener:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->removeListener(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;)V

    .line 342
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->networkListener:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadCallback:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    if-eqz v1, :cond_3

    .line 347
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadCallback:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V

    .line 413
    :cond_2
    :goto_0
    return-void

    .line 353
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz v1, :cond_2

    .line 355
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->disableAllPreInstall()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 356
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "disableAllPreInstall true, not pre install"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 362
    .local v0, "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_5

    const-string/jumbo v1, "preset"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_6

    .line 363
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->isInStrategy(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 364
    :cond_6
    const-string/jumbo v1, "H5NebulaApp"

    new-instance v2, Lcom/alipay/mobile/nebulaappcenter/app/H5App$5;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App$5;-><init>(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)V

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->executeOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 376
    :cond_7
    const-string/jumbo v1, "H5NebulaApp"

    new-instance v2, Lcom/alipay/mobile/nebulaappcenter/app/H5App$6;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App$6;-><init>(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)V

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->executeOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public declared-synchronized onInstallComplete(Z)V
    .locals 7
    .param p1, "isInstallSuccess"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 907
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 940
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 910
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onInstallComplete:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v5, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " appId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v5, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 913
    if-eqz p1, :cond_0

    .line 915
    :try_start_2
    iget-boolean v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->asyncInstall:Z

    if-eqz v3, :cond_3

    .line 916
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 917
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 918
    const-string/jumbo v3, "H5_async_install"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 919
    .local v2, "value":Ljava/lang/String;
    const-string/jumbo v3, "no"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 920
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getInstalledPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->insertInstalledAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 936
    .end local v0    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 937
    .local v1, "throwable":Ljava/lang/Throwable;
    :try_start_3
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 907
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 923
    .restart local v0    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string/jumbo v3, "IO"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/nebulaappcenter/app/H5App$7;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App$7;-><init>(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 933
    .end local v0    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v2    # "value":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h5AppDBService:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getInstalledPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->insertInstalledAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public onPrepare(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V
    .locals 1
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadCallback:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadCallback:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onPrepare(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V

    .line 257
    :cond_0
    return-void
.end method

.method public onProgress(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;I)V
    .locals 1
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "progress"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadCallback:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadCallback:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onProgress(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;I)V

    .line 327
    :cond_0
    return-void
.end method

.method public presetApp(Ljava/io/InputStream;Lcom/alipay/mobile/nebula/appcenter/api/H5LoadPresetListen;)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "h5LoadPresetListen"    # Lcom/alipay/mobile/nebula/appcenter/api/H5LoadPresetListen;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getInstalledPath()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "installPath":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->presetH5pkg(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v1

    .line 473
    .local v1, "success":Z
    if-eqz p2, :cond_0

    .line 474
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "presetApp "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    if-eqz v1, :cond_1

    .line 476
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->onInstallComplete(Z)V

    .line 477
    invoke-interface {p2, v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5LoadPresetListen;->getPresetPath(Ljava/lang/String;)V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/alipay/mobile/nebula/appcenter/api/H5LoadPresetListen;->getPresetPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public presetAppPackage(Ljava/io/InputStream;Z)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getInstalledPath()Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "installPath":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->presetH5pkg(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v1

    .line 465
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 466
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->onInstallComplete(Z)V

    .line 468
    :cond_0
    return-void
.end method

.method public presetH5pkg(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 8
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "installPath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 487
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    .local v0, "appInstallDir":Ljava/io/File;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 489
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " presetAppPackage has exits,not to unzip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->closeStream(Ljava/io/Closeable;)V

    .line 503
    .end local v0    # "appInstallDir":Ljava/io/File;
    :goto_0
    return v3

    .line 492
    .restart local v0    # "appInstallDir":Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5ZipUtil;->unZip(Ljava/io/InputStream;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 493
    .local v2, "unZipResult":Z
    if-nez v2, :cond_1

    .line 501
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->closeStream(Ljava/io/Closeable;)V

    move v3, v4

    .line 494
    goto :goto_0

    .line 501
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 497
    .end local v0    # "appInstallDir":Ljava/io/File;
    .end local v2    # "unZipResult":Z
    :catch_0
    move-exception v1

    .line 498
    .local v1, "globalException":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 499
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 501
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->closeStream(Ljava/io/Closeable;)V

    move v3, v4

    .line 503
    goto :goto_0

    .line 501
    .end local v1    # "globalException":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->closeStream(Ljava/io/Closeable;)V

    throw v3
.end method

.method public setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 2
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 128
    if-eqz p1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->TAG:Ljava/lang/String;

    .line 131
    :cond_0
    return-void
.end method
