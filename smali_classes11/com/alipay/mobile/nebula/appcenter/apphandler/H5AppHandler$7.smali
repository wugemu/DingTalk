.class final Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7;
.super Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;
.source "H5AppHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->offlineNebulaAppAsync(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

.field final synthetic val$nebulaAppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V
    .locals 0

    .prologue
    .line 932
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7;->val$appId:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iput-object p3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7;->val$nebulaAppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V
    .locals 2
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "savePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 936
    const-string/jumbo v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7$1;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 943
    return-void
.end method
