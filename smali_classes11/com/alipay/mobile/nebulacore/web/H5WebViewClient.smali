.class public Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
.super Ljava/lang/Object;
.source "H5WebViewClient.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebViewClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;
    }
.end annotation


# static fields
.field public static final DURATION_ERROR:I = 0xea60

.field private static final DURATION_LOG:I = 0x2710

.field private static final SIZE_200_KB:I = 0x32000

.field private static final SIZE_60_KB:I = 0xf000

.field private static sOrderedExecutor:Ljava/util/concurrent/Executor;

.field private static sVisitHistoryQueue:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public TAG:Ljava/lang/String;

.field private availablePageData:Linv;

.field private checkingUrl:Ljava/lang/String;

.field private fallbackLogArray:Lcom/alibaba/fastjson/JSONArray;

.field private first404Page:Z

.field private h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field private hasErrorRouted:Z

.field private hasOnPageStarted:Z

.field private hasShouldInterceptRequest:Z

.field private isFirstPage:Z

.field private lastAbntime:J

.field private lastPageIndex:I

.field private mAsyncSendEventHandler:Landroid/os/Handler;

.field private mBugMeViewId:Ljava/lang/String;

.field private mEnableAsyncSendEvent:Z

.field private mH5ContentProvider:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

.field private mLastPageHeight:I

.field private mPageUpdated:Z

.field private mResetChromeFileThreadPriority:Z

.field private mUcLongRender3s:Z

.field private mUcLongRender6s:Z

.field private pageData:Lior;

.field private requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/web/ResourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private resourcePkgIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shareUrl:Ljava/lang/String;

.field private webDriverHelper:Liph;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 160
    new-instance v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->sVisitHistoryQueue:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 7
    .param p1, "page"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string/jumbo v3, "H5WebViewClient"

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    .line 146
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->isFirstPage:Z

    .line 147
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->first404Page:Z

    .line 151
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mUcLongRender3s:Z

    .line 152
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mUcLongRender6s:Z

    .line 154
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mEnableAsyncSendEvent:Z

    .line 156
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mAsyncSendEventHandler:Landroid/os/Handler;

    .line 166
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->hasOnPageStarted:Z

    .line 167
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->hasShouldInterceptRequest:Z

    .line 170
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->hasErrorRouted:Z

    .line 1244
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mResetChromeFileThreadPriority:Z

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    .line 174
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "isPrerender"

    invoke-static {v3, v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_preRender"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    .line 177
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 178
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lior;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 179
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getAvailablePageData()Linv;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->availablePageData:Linv;

    .line 180
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mPageUpdated:Z

    .line 181
    const/high16 v3, -0x80000000

    iput v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->lastPageIndex:I

    .line 182
    iput v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mLastPageHeight:I

    .line 183
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->getBugmeViewId(Liop;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mBugMeViewId:Ljava/lang/String;

    .line 184
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "url"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lior;->c(Ljava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lior;->i(Ljava/lang/String;)V

    .line 186
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->requestMap:Ljava/util/Map;

    .line 187
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->resourcePkgIdList:Ljava/util/List;

    .line 189
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContentView()Landroid/view/View;

    move-result-object v2

    .line 190
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 191
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    new-instance v3, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 225
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getWebDriverHelper()Liph;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->webDriverHelper:Liph;

    .line 227
    const-string/jumbo v3, "h5_asyncSendEvent"

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "configAsyncSendEvent":Ljava/lang/String;
    const-string/jumbo v3, "NO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 229
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mEnableAsyncSendEvent:Z

    .line 232
    :cond_1
    const-string/jumbo v3, "h5_fallback_log"

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->fallbackLogArray:Lcom/alibaba/fastjson/JSONArray;

    .line 233
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->sendBugMeNetworkEvent(Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alibaba/fastjson/JSONArray;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->fallbackLogArray:Lcom/alibaba/fastjson/JSONArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .prologue
    .line 112
    iget v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mLastPageHeight:I

    return v0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
    .param p1, "x1"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mLastPageHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->isFirstPage:Z

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
    .param p1, "x1"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->isFirstPage:Z

    return p1
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mH5ContentProvider:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->sendBugMeAppPkgInfo()V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->resourcePkgIdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->loadErrorPage(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->initReqPageData(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->reqStartLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private addResourcePackage(Ljava/lang/String;)V
    .locals 10
    .param p1, "appIdList"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 774
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    const-class v8, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 778
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v2, :cond_0

    .line 779
    const-string/jumbo v8, "h5_pkgresmode"

    invoke-interface {v2, v8}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, "configStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 781
    .local v3, "joConfig":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "switchheader"

    invoke-static {v3, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 782
    .local v7, "value":Ljava/lang/String;
    const/4 v4, 0x3

    .line 784
    .local v4, "limit":I
    :try_start_0
    const-string/jumbo v8, "limit"

    const-string/jumbo v9, "3"

    invoke-static {v3, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 788
    :goto_1
    const-string/jumbo v8, "off"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 791
    const-string/jumbo v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 792
    .local v5, "list":[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v8, v5

    if-eqz v8, :cond_0

    array-length v8, v5

    if-gt v8, v4, :cond_0

    .line 795
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 796
    .local v6, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v8, "URGENT_DISPLAY"

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v8

    new-instance v9, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$4;

    invoke-direct {v9, p0, v6}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$4;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Ljava/util/List;)V

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 785
    .end local v5    # "list":[Ljava/lang/String;
    .end local v6    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 786
    .local v1, "e":Ljava/lang/NumberFormatException;
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private checkDSLError(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 3
    .param p1, "webView"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1130
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isUcCheckDsl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1134
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lior;

    move-result-object v0

    .line 32870
    iget-object v0, v0, Lior;->ak:Ljava/lang/String;

    .line 1134
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isLogBlankScreen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "isTinyApp"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->dslJs:Ljava/lang/String;

    .line 1136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1137
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->dslJs:Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$6;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$6;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method private copyReportMark(Ljava/lang/String;Landroid/webkit/WebResourceResponse;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/webkit/WebResourceResponse;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1422
    const-class v8, Lioh;

    .line 1423
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lioh;

    .line 1424
    .local v5, "h5GetAllResponse":Lioh;
    if-eqz v5, :cond_0

    .line 1426
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "h5_stamper"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getConfigBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 1427
    .local v4, "enableStamper":Z
    if-eqz v4, :cond_2

    .line 1428
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "h5GetAllResponse is not null"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const/4 v0, 0x0

    .line 1430
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v2

    .line 1432
    .local v2, "buffer":[B
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1434
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    if-ltz v6, :cond_1

    .line 1435
    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1447
    .end local v6    # "len":I
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 1448
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "copyReportMark exception : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1450
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 1451
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1457
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "enableStamper":Z
    :cond_0
    :goto_2
    return-void

    .line 1437
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v4    # "enableStamper":Z
    .restart local v6    # "len":I
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1439
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1440
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1442
    .local v7, "stream2":Ljava/io/InputStream;
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "call h5GetAllResponse.setData"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "response.setData(stream2)"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    invoke-virtual {p2, v7}, Landroid/webkit/WebResourceResponse;->setData(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1450
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 1451
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .line 1450
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "len":I
    .end local v7    # "stream2":Ljava/io/InputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v8

    :goto_3
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 1451
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v8

    .line 1454
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    :cond_2
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "h5GetAllResponse is null"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1450
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 1447
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private getPageTitle(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1772
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 1773
    .local v0, "title":Ljava/lang/String;
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 1774
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, ".html"

    .line 1775
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, ".htm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 1776
    .local v1, "titlePartOfUrl":Z
    :goto_0
    if-nez v1, :cond_3

    .line 1779
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "!titlePartOfUrl"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    .end local v1    # "titlePartOfUrl":Z
    :cond_1
    :goto_1
    return-object v0

    .line 1775
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1783
    .restart local v1    # "titlePartOfUrl":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized getSingleThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 11

    .prologue
    .line 1372
    const-class v10, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    monitor-enter v10

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->sOrderedExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 1373
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x1e

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$H5SingleThreadFactory;

    const-string/jumbo v0, "H5_InterceptRequest_SingleThreadExecutor"

    invoke-direct {v8, v0}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$H5SingleThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;

    invoke-direct {v9}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->sOrderedExecutor:Ljava/util/concurrent/Executor;

    .line 1379
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->sOrderedExecutor:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v0

    .line 1372
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method private initReqPageData(Landroid/net/Uri;)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1460
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->availablePageData:Linv;

    if-eqz v3, :cond_0

    .line 1461
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->availablePageData:Linv;

    .line 34070
    const-string/jumbo v4, "H5AvailablePageData"

    const-string/jumbo v5, "reportReqStart"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34071
    iget-boolean v4, v3, Linv;->b:Z

    if-eqz v4, :cond_0

    iget-wide v4, v3, Linv;->e:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 34124
    const-string/jumbo v4, "H5AvailablePageData"

    const-string/jumbo v5, "stopWaitForStopLoading"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34125
    iput-boolean v2, v3, Linv;->b:Z

    .line 34126
    iget-object v4, v3, Linv;->h:Landroid/os/Handler;

    iget-object v3, v3, Linv;->i:Linv$a;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1463
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->containNebulaAddcors(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1464
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    const-string/jumbo v4, "containCORSRes"

    invoke-virtual {v3, v4, v0}, Lior;->a(Ljava/lang/String;Z)V

    .line 1466
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1467
    .local v1, "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 34636
    iget v4, v4, Lior;->K:I

    .line 1467
    add-int/lit8 v4, v4, 0x1

    .line 34640
    const-string/jumbo v5, "H5PageData"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setRequestNum: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34641
    iput v4, v3, Lior;->K:I

    .line 1468
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 35482
    iget-object v3, v3, Lior;->bc:[I

    aput v0, v3, v0

    .line 1470
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 36342
    iget-wide v4, v3, Lior;->n:J

    .line 1470
    cmp-long v3, v4, v8

    if-nez v3, :cond_4

    .line 1472
    .local v0, "isLoading":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1473
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 36735
    iget v3, v3, Lior;->V:I

    .line 1473
    add-int/lit8 v3, v3, 0x1

    .line 36739
    const-string/jumbo v4, "H5PageData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setRequestLoadNum: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36740
    iput v3, v2, Lior;->V:I

    .line 1475
    :cond_2
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->isCss(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1476
    if-eqz v0, :cond_3

    .line 1477
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 37708
    iget v3, v3, Lior;->S:I

    .line 1477
    add-int/lit8 v3, v3, 0x1

    .line 37712
    const-string/jumbo v4, "H5PageData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setCssLoadNum: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37713
    iput v3, v2, Lior;->S:I

    .line 1479
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 38600
    iget v3, v3, Lior;->G:I

    .line 1479
    add-int/lit8 v3, v3, 0x1

    .line 38604
    const-string/jumbo v4, "H5PageData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setCssReqNum: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38605
    iput v3, v2, Lior;->G:I

    .line 1496
    :goto_1
    return-void

    .end local v0    # "isLoading":Z
    :cond_4
    move v0, v2

    .line 1470
    goto :goto_0

    .line 1480
    .restart local v0    # "isLoading":Z
    :cond_5
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->isJavascript(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1481
    if-eqz v0, :cond_6

    .line 1482
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 38699
    iget v3, v3, Lior;->R:I

    .line 1482
    add-int/lit8 v3, v3, 0x1

    .line 38703
    const-string/jumbo v4, "H5PageData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setJsLoadNum: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38704
    iput v3, v2, Lior;->R:I

    .line 1484
    :cond_6
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 39609
    iget v3, v3, Lior;->H:I

    .line 1484
    add-int/lit8 v3, v3, 0x1

    .line 39613
    const-string/jumbo v4, "H5PageData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setJsReqNum: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39614
    iput v3, v2, Lior;->H:I

    goto :goto_1

    .line 1485
    :cond_7
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->isImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1486
    if-eqz v0, :cond_8

    .line 1487
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 39717
    iget v3, v3, Lior;->T:I

    .line 1487
    add-int/lit8 v3, v3, 0x1

    .line 39721
    const-string/jumbo v4, "H5PageData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setImgLoadNum: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39722
    iput v3, v2, Lior;->T:I

    .line 1489
    :cond_8
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 40618
    iget v3, v3, Lior;->I:I

    .line 1489
    add-int/lit8 v3, v3, 0x1

    .line 40622
    const-string/jumbo v4, "H5PageData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setImgReqNum: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40623
    iput v3, v2, Lior;->I:I

    goto/16 :goto_1

    .line 1491
    :cond_9
    if-eqz v0, :cond_a

    .line 1492
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 40726
    iget v3, v3, Lior;->U:I

    .line 1492
    add-int/lit8 v3, v3, 0x1

    .line 40730
    const-string/jumbo v4, "H5PageData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setOtherLoadNum: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40731
    iput v3, v2, Lior;->U:I

    .line 1494
    :cond_a
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 41627
    iget v3, v3, Lior;->J:I

    .line 1494
    add-int/lit8 v3, v3, 0x1

    .line 41631
    const-string/jumbo v4, "H5PageData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setOtherReqNum: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41632
    iput v3, v2, Lior;->J:I

    goto/16 :goto_1
.end method

.method private loadErrorPage(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V
    .locals 21
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "errorUrl"    # Ljava/lang/String;
    .param p3, "statusCode"    # I

    .prologue
    .line 965
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "loadErrorPage "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " statusCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v3, :cond_1

    .line 1063
    :cond_0
    :goto_0
    return-void

    .line 970
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "dsl_error"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 974
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v3, v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->onInterceptError(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 977
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerPageFailLink(Liop;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v4, "h5PageAbnormal"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 981
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "bizType"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 982
    .local v15, "bizType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "bizType:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    const-string/jumbo v3, "Advertisement"

    invoke-static {v15, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 985
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContentView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 989
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "transparent"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 990
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "transAnimate"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_4

    .line 991
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "loadErrorPage in transparent case return directly"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v4, "h5PageClose"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 995
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v4, "h5PageErrorForTitlebar"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 996
    const/16 v3, 0x193

    move/from16 v0, p3

    if-eq v0, v3, :cond_5

    const/16 v3, 0x194

    move/from16 v0, p3

    if-ne v0, v3, :cond_7

    .line 998
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->first404Page:Z

    if-eqz v3, :cond_6

    .line 999
    invoke-interface/range {p1 .. p2}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V

    .line 1000
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->first404Page:Z

    .line 1002
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "loadErrorPage:404 or 403,not show error page"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1006
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getScriptLoader()Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->resetBridge()V

    .line 1007
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_loading_failed:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1008
    .local v19, "pageTitle":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/alipay/mobile/nebulacore/util/H5ErrorMsgUtil;->getErrorPageMsg(I)Ljava/lang/String;

    move-result-object v7

    .line 1009
    .local v7, "errorResult":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_menu_refresh:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1010
    .local v16, "buttonText":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_network_check:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1012
    .local v17, "checkButtonText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "transAnimate"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1013
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_backward:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1017
    .local v14, "backButtonText":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "load error page for: statusCode:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " errorResult:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " buttonText:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lior;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1021
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lior;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lior;->a(Z)V

    .line 1025
    :cond_8
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5ErrorPageView;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ErrorPageView;

    .line 1026
    .local v2, "h5ErrorPageView":Lcom/alipay/mobile/nebula/provider/H5ErrorPageView;
    if-eqz v2, :cond_a

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5ErrorPageView;->enableShowErrorPage()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1027
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/alipay/mobile/nebula/provider/H5ErrorPageView;->errorPageCallback(Liop;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1015
    .end local v2    # "h5ErrorPageView":Lcom/alipay/mobile/nebula/provider/H5ErrorPageView;
    .end local v14    # "backButtonText":Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_close:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "backButtonText":Ljava/lang/String;
    goto :goto_1

    .line 1032
    .restart local v2    # "h5ErrorPageView":Lcom/alipay/mobile/nebula/provider/H5ErrorPageView;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isShowTransAnimate(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1033
    sget v3, Lcom/alipay/mobile/nebula/R$raw;->h5_trans_page_error:I

    invoke-static {v3}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v10

    .line 1038
    .local v10, "html":Ljava/lang/String;
    :goto_2
    if-eqz v10, :cond_0

    .line 1041
    const-string/jumbo v3, "####"

    move-object/from16 v0, v16

    invoke-virtual {v10, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1042
    const-string/jumbo v3, "****"

    move-object/from16 v0, v17

    invoke-virtual {v10, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1043
    const-string/jumbo v3, "&&&&"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1044
    const-string/jumbo v3, "!!!!"

    move-object/from16 v0, v19

    invoke-virtual {v10, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1045
    const-string/jumbo v3, "$$$$"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1046
    const-string/jumbo v3, "^^^^"

    invoke-virtual {v10, v3, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1047
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1048
    const-string/jumbo v3, "%%%%"

    move-object/from16 v0, p2

    invoke-virtual {v10, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1052
    :goto_3
    const-string/jumbo v3, "@@@@"

    const-string/jumbo v4, "showNetWorkCheckActivity"

    invoke-virtual {v10, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1053
    const-string/jumbo v11, "text/html"

    const-string/jumbo v12, "utf-8"

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v13, p2

    invoke-interface/range {v8 .. v13}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v3, :cond_0

    .line 1057
    new-instance v18, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1058
    .local v18, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    new-instance v20, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v20 .. v20}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1059
    .local v20, "spm":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "spmId"

    const-string/jumbo v4, "H5_NONESPM_PAGE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    const-string/jumbo v3, "spm"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v4, "reportData"

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 1035
    .end local v10    # "html":Ljava/lang/String;
    .end local v18    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v20    # "spm":Lcom/alibaba/fastjson/JSONObject;
    :cond_b
    sget v3, Lcom/alipay/mobile/nebula/R$raw;->h5_page_error:I

    invoke-static {v3}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "html":Ljava/lang/String;
    goto/16 :goto_2

    .line 1050
    :cond_c
    const-string/jumbo v3, "%%%%"

    const-string/jumbo v4, ""

    invoke-virtual {v10, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3
.end method

.method private reportAbnormalPage(Z)V
    .locals 3
    .param p1, "isLongRender"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 953
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v1, :cond_0

    .line 962
    :goto_0
    return-void

    .line 956
    :cond_0
    const/4 v0, 0x0

    .line 957
    .local v0, "param":Lcom/alibaba/fastjson/JSONObject;
    if-eqz p1, :cond_1

    .line 958
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .end local v0    # "param":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 959
    .restart local v0    # "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "errorType"

    const-string/jumbo v2, "longRender"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v2, "h5PageAbnormal"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method

.method private reportErrorPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "failingUrl"    # Ljava/lang/String;
    .param p2, "errorType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 938
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v2, :cond_0

    .line 950
    :goto_0
    return-void

    .line 941
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "reportErrorPage errorCode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 31465
    iget v4, v4, Lior;->v:I

    .line 941
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 943
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "errorCode"

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 32465
    iget v3, v3, Lior;->v:I

    .line 943
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 947
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v2, "networkType"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    const-string/jumbo v2, "deviceInfo"

    sget-object v3, Lcom/alipay/mobile/nebula/util/H5Log;->CURRENT_DEVICE_SPEC:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v3, "h5PageError"

    invoke-virtual {v2, v3, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method

.method private reportErrorResource(Lcom/alipay/mobile/nebulacore/web/ResourceInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/alipay/mobile/nebulacore/web/ResourceInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 920
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v3, :cond_0

    .line 934
    :goto_0
    return-void

    .line 924
    :cond_0
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 925
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "targetUrl"

    iget-object v4, p1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    const-string/jumbo v3, "method"

    iget-object v4, p1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mMethod:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    const-string/jumbo v3, "type"

    iget-object v4, p1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    const-string/jumbo v3, "status"

    iget v4, p1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mStatusCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    const-string/jumbo v3, "start"

    iget-wide v4, p1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mStart:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mStart:J

    sub-long v0, v4, v6

    .line 931
    .local v0, "duration":J
    const-string/jumbo v3, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    const-string/jumbo v4, "isMainDoc"

    iget-boolean v3, p1, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "YES"

    :goto_1
    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    sget-object v4, Liov$a;->m:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 932
    :cond_1
    const-string/jumbo v3, "NO"

    goto :goto_1
.end method

.method private reqStartLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "targetUrl"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "isMainDoc"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1405
    :try_start_0
    const-string/jumbo v1, "H5_AL_NETWORK_START"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 1406
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getMaxLogStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "targetUrl"

    .line 1407
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getMaxLogStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "method"

    invoke-virtual {v1, v2, p3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "isMainDoc"

    .line 1408
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 1409
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 1405
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    :goto_0
    return-void

    .line 1411
    :catch_0
    move-exception v0

    .line 1412
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reqStartLog catch exception "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendBugMeAppPkgInfo()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 849
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v5

    const-class v6, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 850
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 851
    .local v1, "h5DevDebugProvider":Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;
    if-nez v1, :cond_1

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 855
    .local v0, "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    if-eqz v5, :cond_0

    .line 856
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 29870
    iget-object v5, v5, Lior;->ak:Ljava/lang/String;

    .line 856
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 29888
    iget-object v6, v6, Lior;->am:Ljava/lang/String;

    .line 856
    invoke-interface {v0, v5, v6}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 857
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "package_nick"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 858
    .local v4, "packageNick":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 859
    .local v3, "obj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "appId"

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 30870
    iget-object v6, v6, Lior;->ak:Ljava/lang/String;

    .line 859
    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    const-string/jumbo v5, "name"

    invoke-virtual {v3, v5, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    const-string/jumbo v5, "version"

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 30888
    iget-object v6, v6, Lior;->am:Ljava/lang/String;

    .line 861
    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    const-string/jumbo v5, "packageNick"

    invoke-virtual {v3, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    const-string/jumbo v5, "resource"

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 31194
    iget-object v6, v6, Lior;->aF:Ljava/lang/String;

    .line 863
    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mBugMeViewId:Ljava/lang/String;

    invoke-interface {v1, v5, v3}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->setPkgInfo(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method

.method private sendBugMeNetworkEvent(Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "provider"    # Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "fromLocalPkg"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1384
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v3, :cond_0

    .line 1385
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1386
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->nextRequestId()I

    move-result v1

    .line 1387
    .local v1, "reqId":I
    const-string/jumbo v3, "reqId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    const-string/jumbo v3, "reqUrl"

    invoke-virtual {v0, v3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    const-string/jumbo v3, "method"

    invoke-virtual {v0, v3, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    const-string/jumbo v3, "fromLocalPkg"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    sget-object v4, Liov$a;->y:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1394
    if-eqz p4, :cond_0

    .line 1395
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    .line 1396
    .local v2, "responseEvent":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "reqId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    const-string/jumbo v3, "statusCode"

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    sget-object v4, Liov$a;->z:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1401
    .end local v0    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "reqId":I
    .end local v2    # "responseEvent":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method

.method private sendErrorResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "failingUrl"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 869
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v2, :cond_0

    .line 870
    const-string/jumbo v2, "200"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "302"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "304"

    .line 871
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 874
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sendErrorResource:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  errorCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " description:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 877
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    const-string/jumbo v2, "error"

    invoke-virtual {v0, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const-string/jumbo v2, "errorMessage"

    invoke-virtual {v0, v2, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    const-string/jumbo v2, "client"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 882
    .local v1, "packet":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Linx;

    move-result-object v2

    sget-object v3, Liov$a;->B:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    goto :goto_0
.end method

.method private shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 19
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    .line 1247
    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->requestMap:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1248
    :cond_0
    const/16 v17, 0x0

    .line 1340
    :goto_0
    return-object v17

    .line 1252
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mResetChromeFileThreadPriority:Z

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 1253
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mResetChromeFileThreadPriority:Z

    .line 1255
    const/16 v2, -0x14

    :try_start_0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1261
    :cond_2
    :goto_1
    const/16 v17, 0x0

    .line 1263
    .local v17, "response":Landroid/webkit/WebResourceResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1265
    .local v4, "url":Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->hasShouldInterceptRequest:Z

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "shouldInterceptRequest "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " method "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 33474
    iget-object v2, v2, Lior;->w:Ljava/lang/String;

    .line 1268
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    .line 1270
    .local v8, "isMainDoc":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mH5ContentProvider:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    if-eqz v2, :cond_4

    .line 1271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mH5ContentProvider:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->clearInputException()V

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mH5ContentProvider:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const/4 v6, 0x1

    .line 1274
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v3

    sget-object v7, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v3, v7, :cond_7

    const/4 v7, 0x1

    :goto_2
    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getContent(Landroid/net/Uri;Ljava/lang/String;Liop;ZZZ)Landroid/webkit/WebResourceResponse;

    move-result-object v17

    .line 1275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mH5ContentProvider:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->hasInputException()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v8, :cond_3

    const-string/jumbo v2, "no"

    const-string/jumbo v3, "h5_handleInputException"

    .line 1276
    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1277
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v4}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$7;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    const-wide/16 v6, 0x14

    invoke-static {v2, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 1285
    :cond_3
    if-eqz v17, :cond_4

    .line 1286
    sget-boolean v2, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 1287
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->copyReportMark(Ljava/lang/String;Landroid/webkit/WebResourceResponse;)V

    .line 1292
    :cond_4
    if-eqz v17, :cond_8

    const/4 v15, 0x1

    .line 1295
    .local v15, "hasResponse":Z
    :goto_3
    if-nez v15, :cond_6

    .line 1296
    new-instance v16, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v3, v1}, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;-><init>(JLjava/lang/String;)V

    .line 1297
    .local v16, "info":Lcom/alipay/mobile/nebulacore/web/ResourceInfo;
    if-eqz v4, :cond_5

    if-eqz v8, :cond_5

    .line 1298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->requestMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1299
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    .line 1301
    :cond_5
    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mUrl:Ljava/lang/String;

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->requestMap:Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    .end local v16    # "info":Lcom/alipay/mobile/nebulacore/web/ResourceInfo;
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v9, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object v12, v4

    move-object/from16 v13, p3

    move v14, v8

    invoke-direct/range {v9 .. v15}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$8;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v2, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1335
    .end local v8    # "isMainDoc":Z
    .end local v15    # "hasResponse":Z
    :catch_0
    move-exception v18

    .line 1336
    .local v18, "throwable":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1256
    .end local v4    # "url":Ljava/lang/String;
    .end local v17    # "response":Landroid/webkit/WebResourceResponse;
    .end local v18    # "throwable":Ljava/lang/Throwable;
    :catch_1
    move-exception v18

    .line 1257
    .restart local v18    # "throwable":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setThreadPriority"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1274
    .end local v18    # "throwable":Ljava/lang/Throwable;
    .restart local v4    # "url":Ljava/lang/String;
    .restart local v8    # "isMainDoc":Z
    .restart local v17    # "response":Landroid/webkit/WebResourceResponse;
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 1292
    :cond_8
    const/4 v15, 0x0

    goto :goto_3
.end method


# virtual methods
.method public doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1762
    const-string/jumbo v0, "about:blank"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1763
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->webDriverHelper:Liph;

    invoke-interface {v0}, Liph;->e()V

    .line 1766
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "doUpdateVisitedHistory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isReload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mPageUpdated:Z

    .line 1768
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->shareUrl:Ljava/lang/String;

    .line 1769
    return-void
.end method

.method public getJSBridge()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 1216
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1230
    :cond_0
    :goto_0
    return-object v0

    .line 1220
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 1221
    .local v2, "params":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1222
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/Nebula;->removeBridgeTimeParam(Lcom/alibaba/fastjson/JSONObject;)V

    .line 1223
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1224
    .local v1, "bridgeParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "startupParams"

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    const/4 v4, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 1226
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebViewId()I

    move-result v3

    .line 1225
    :goto_1
    invoke-static {v1, v4, v3}, Lcom/alipay/mobile/nebulacore/Nebula;->loadJsBridge(Ljava/util/HashMap;II)Ljava/lang/String;

    move-result-object v0

    .line 1227
    .local v0, "bridge":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "begin set uc bridge "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1226
    .end local v0    # "bridge":Ljava/lang/String;
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 2474
    iget-object v0, v0, Lior;->w:Ljava/lang/String;

    .line 238
    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 3861
    iget-object v0, v0, Lior;->aj:Ljava/lang/String;

    .line 250
    return-object v0
.end method

.method public getRequestMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->requestMap:Ljava/util/Map;

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->shareUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 3474
    iget-object v0, v0, Lior;->w:Ljava/lang/String;

    .line 245
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->shareUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public onFirstVisuallyRender(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 8
    .param p1, "webview"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1167
    .local v2, "time":J
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onFirstVisuallyRender "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1170
    .local v0, "param":Lcom/alibaba/fastjson/JSONObject;
    if-eqz p1, :cond_0

    .line 1171
    const-string/jumbo v1, "url"

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v1, :cond_2

    .line 1175
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lior;

    move-result-object v1

    .line 33054
    iget-wide v4, v1, Lior;->q:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 33055
    const-string/jumbo v4, "H5PageData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onFirstVisuallyRender: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33056
    iput-wide v2, v1, Lior;->q:J

    .line 1176
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v4, "h5PageRender"

    invoke-virtual {v1, v4, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1178
    :cond_2
    return-void
.end method

.method public onFormResubmission(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "message"    # Landroid/os/Message;
    .param p3, "message2"    # Landroid/os/Message;

    .prologue
    .line 1183
    return-void
.end method

.method public onLoadResource(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
    .locals 8
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1504
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "onLoadResource "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v5, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "http://"

    .line 1506
    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "https://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1507
    :cond_0
    iget-boolean v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mEnableAsyncSendEvent:Z

    if-eqz v5, :cond_3

    .line 1508
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mAsyncSendEventHandler:Landroid/os/Handler;

    if-nez v5, :cond_1

    .line 1509
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mAsyncSendEventHandler:Landroid/os/Handler;

    .line 1511
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mAsyncSendEventHandler:Landroid/os/Handler;

    new-instance v6, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$9;

    invoke-direct {v6, p0, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$9;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1555
    :cond_2
    :goto_0
    return-void

    .line 1538
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1539
    .local v0, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "url"

    invoke-virtual {v0, v5, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v4

    .line 1541
    .local v4, "startBundle":Landroid/os/Bundle;
    if-eqz v4, :cond_4

    .line 1542
    const-string/jumbo v5, "appId"

    const-string/jumbo v6, "appId"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    const-string/jumbo v5, "preSSOLogin"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1544
    .local v1, "preSSOLogin":Ljava/lang/String;
    const-string/jumbo v5, "preSSOLoginBindingPage"

    .line 1545
    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1546
    .local v2, "preSSOLoginBindingPage":Ljava/lang/String;
    const-string/jumbo v5, "preSSOLoginUrl"

    .line 1547
    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1548
    .local v3, "preSSOLoginUrl":Ljava/lang/String;
    const-string/jumbo v5, "ps"

    invoke-virtual {v0, v5, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    const-string/jumbo v5, "psb"

    invoke-virtual {v0, v5, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    const-string/jumbo v5, "psu"

    invoke-virtual {v0, v5, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    .end local v1    # "preSSOLogin":Ljava/lang/String;
    .end local v2    # "preSSOLoginBindingPage":Ljava/lang/String;
    .end local v3    # "preSSOLoginUrl":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v6, "h5PageLoadResource"

    invoke-virtual {v5, v6, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method

.method public onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
    .locals 19
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "pageSize"    # J

    .prologue
    .line 1791
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "onPageFinished "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " pageSize "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    const-string/jumbo v13, "about:blank"

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1794
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->webDriverHelper:Liph;

    invoke-interface {v13}, Liph;->d()V

    .line 1797
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v13, :cond_1

    if-nez p1, :cond_2

    .line 1948
    :cond_1
    :goto_0
    return-void

    .line 1801
    :cond_2
    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 48474
    iget-object v13, v13, Lior;->w:Ljava/lang/String;

    .line 1801
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->availablePageData:Linv;

    if-eqz v13, :cond_3

    .line 1802
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->availablePageData:Linv;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 49063
    const-string/jumbo v16, "H5AvailablePageData"

    const-string/jumbo v17, "reportDidFinishedLoadDate"

    invoke-static/range {v16 .. v17}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49064
    iput-wide v14, v13, Linv;->a:J

    .line 49065
    invoke-virtual {v13}, Linv;->b()V

    .line 49100
    iget-wide v14, v13, Linv;->a:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_3

    .line 49101
    const-string/jumbo v14, "H5AvailablePageData"

    const-string/jumbo v15, "waitForStopLoadingWithLoc"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49102
    const/4 v14, 0x1

    iput-boolean v14, v13, Linv;->c:Z

    .line 49103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v13, Linv;->f:J

    .line 49104
    iget-object v14, v13, Linv;->h:Landroid/os/Handler;

    iget-object v13, v13, Linv;->j:Linv$b;

    const-wide/16 v16, 0x3e8

    move-wide/from16 v0, v16

    invoke-virtual {v14, v13, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1805
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 49315
    iget-wide v14, v13, Lior;->k:J

    .line 1805
    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_4

    .line 1806
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    move-object/from16 v16, v0

    .line 50306
    move-object/from16 v0, v16

    iget-wide v0, v0, Lior;->j:J

    move-wide/from16 v16, v0

    .line 1806
    sub-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Lior;->a(J)V

    .line 1807
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "page appear "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50307
    iget-wide v0, v15, Lior;->k:J

    move-wide/from16 v16, v0

    .line 1807
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50308
    iget-wide v14, v13, Lior;->l:J

    .line 1810
    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_5

    .line 1811
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->isFirstPage:Z

    if-eqz v13, :cond_11

    .line 1812
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 1813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sget-wide v16, Lior;->a:J

    sub-long v14, v14, v16

    .line 1812
    invoke-virtual {v13, v14, v15}, Lior;->b(J)V

    .line 1814
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->isFirstPage:Z

    .line 1818
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "page appear native "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50310
    iget-wide v0, v15, Lior;->l:J

    move-wide/from16 v16, v0

    .line 1818
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    :cond_5
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1822
    .local v7, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v13, "url"

    move-object/from16 v0, p2

    invoke-virtual {v7, v13, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    invoke-direct/range {p0 .. p2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->getPageTitle(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1824
    .local v10, "title":Ljava/lang/String;
    const-string/jumbo v13, "title"

    invoke-virtual {v7, v13, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v4

    .line 1826
    .local v4, "list":Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v5

    .line 1827
    .local v5, "originalUrl":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1828
    .local v6, "pageIndex":I
    const/4 v3, 0x0

    .line 1829
    .local v3, "historySize":I
    if-eqz v4, :cond_9

    .line 1830
    invoke-interface {v4}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getSize()I

    move-result v3

    .line 1832
    invoke-interface {v4}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getCurrentIndex()I

    move-result v6

    .line 1834
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    .line 1837
    .local v11, "urlAsOriginal":Z
    if-ltz v6, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->lastPageIndex:I

    if-eq v13, v6, :cond_6

    .line 1838
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mPageUpdated:Z

    .line 1842
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mPageUpdated:Z

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->lastPageIndex:I

    if-ne v13, v6, :cond_7

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getCurrentItem()Lcom/alipay/mobile/nebula/webview/APWebHistoryItem;

    move-result-object v13

    invoke-interface {v13}, Lcom/alipay/mobile/nebula/webview/APWebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v13

    .line 1843
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1844
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mPageUpdated:Z

    .line 1847
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "pageIndex "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " lastPageIndex "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->lastPageIndex:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " urlAsOriginal "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " pageUpdated "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mPageUpdated:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mPageUpdated:Z

    if-eqz v13, :cond_8

    .line 1850
    move-object/from16 v0, p0

    iput v6, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->lastPageIndex:I

    .line 1852
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50311
    const-string/jumbo v14, "H5PageData"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "setPageIndex: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50312
    iput v6, v13, Lior;->s:I

    .line 1853
    const-string/jumbo v13, "pageIndex"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1856
    .end local v11    # "urlAsOriginal":Z
    :cond_9
    const-string/jumbo v13, "historySize"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1857
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "historySize "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    const-string/jumbo v13, "pageUpdated"

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mPageUpdated:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mH5ContentProvider:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    if-eqz v13, :cond_a

    .line 1860
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mH5ContentProvider:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-virtual {v14}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getLocal()Ljava/lang/String;

    move-result-object v14

    .line 50314
    const-string/jumbo v15, "H5PageData"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "setIsLocal: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50315
    iput-object v14, v13, Lior;->ar:Ljava/lang/String;

    .line 1864
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50317
    iget-wide v14, v13, Lior;->n:J

    .line 1864
    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_b

    .line 1865
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    move-object/from16 v16, v0

    .line 50318
    move-object/from16 v0, v16

    iget-wide v0, v0, Lior;->j:J

    move-wide/from16 v16, v0

    .line 1865
    sub-long v14, v14, v16

    .line 50319
    const-string/jumbo v16, "H5PageData"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "complete: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50320
    iput-wide v14, v13, Lior;->n:J

    .line 1868
    :cond_b
    sget-boolean v13, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v13, :cond_d

    .line 1869
    const-string/jumbo v13, "pageLoad|pageComplete"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50322
    iget-wide v14, v14, Lior;->n:J

    .line 1869
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1870
    const-string/jumbo v13, "pageLoad|url"

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1871
    const-string/jumbo v12, ""

    .line 1873
    .local v12, "versionName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v13

    const-class v14, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 1874
    .local v8, "provider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    if-eqz v8, :cond_c

    .line 1875
    invoke-interface {v8}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->getProductVersion()Ljava/lang/String;

    move-result-object v12

    .line 1877
    :cond_c
    new-instance v9, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v9}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1878
    .local v9, "testData":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v13, "alipayVersion"

    invoke-virtual {v9, v13, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    const-string/jumbo v13, "brand"

    sget-object v14, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1880
    const-string/jumbo v13, "fingerprint"

    sget-object v14, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1881
    const-string/jumbo v13, "manufacturer"

    sget-object v14, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1882
    const-string/jumbo v13, "model"

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1883
    const-string/jumbo v13, "network"

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getNetworkString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1884
    const-string/jumbo v13, "sdkInt"

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1885
    const-string/jumbo v13, "phone"

    invoke-static {v13, v9}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1886
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    if-nez v13, :cond_d

    .line 1887
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->injectJSParams(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 1891
    .end local v8    # "provider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .end local v9    # "testData":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "versionName":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50323
    iget-wide v14, v13, Lior;->Q:J

    .line 1891
    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_e

    .line 1892
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    move-wide/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Lior;->c(J)V

    .line 1895
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50324
    const-string/jumbo v14, "H5PageData"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "setHtmlLoadSize: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p3

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50325
    move-wide/from16 v0, p3

    iput-wide v0, v13, Lior;->F:J

    .line 1897
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "onPageFinished "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " originalUrl "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " pageSize "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " pageIndex "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "start="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50327
    iget-wide v0, v15, Lior;->j:J

    move-wide/from16 v16, v0

    .line 1899
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "^appear="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50328
    iget-wide v0, v15, Lior;->k:J

    move-wide/from16 v16, v0

    .line 1899
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "^complete="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50329
    iget-wide v0, v15, Lior;->n:J

    move-wide/from16 v16, v0

    .line 1900
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "^pageSize="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50330
    iget-wide v0, v15, Lior;->Q:J

    move-wide/from16 v16, v0

    .line 1900
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "^create="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50331
    iget-wide v0, v15, Lior;->p:J

    move-wide/from16 v16, v0

    .line 1901
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "^appear="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50332
    iget-wide v0, v15, Lior;->k:J

    move-wide/from16 v16, v0

    .line 1902
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "^firstByte="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50333
    iget-wide v0, v15, Lior;->m:J

    move-wide/from16 v16, v0

    .line 1902
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "^jsSize="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50334
    iget-wide v0, v15, Lior;->L:J

    move-wide/from16 v16, v0

    .line 1903
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "^cssSize="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50335
    iget-wide v0, v15, Lior;->M:J

    move-wide/from16 v16, v0

    .line 1903
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "^imgSize="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50336
    iget-wide v0, v15, Lior;->N:J

    move-wide/from16 v16, v0

    .line 1904
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "^htmlSize="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50337
    iget-wide v0, v15, Lior;->P:J

    move-wide/from16 v16, v0

    .line 1904
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "^otherSize="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50338
    iget-wide v0, v15, Lior;->O:J

    move-wide/from16 v16, v0

    .line 1905
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "^requestNum="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50339
    iget v15, v15, Lior;->K:I

    .line 1906
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "^num404="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50340
    iget v15, v15, Lior;->af:I

    .line 1906
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "^num400="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50341
    iget v15, v15, Lior;->ag:I

    .line 1907
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "^num500="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50342
    iget v15, v15, Lior;->ah:I

    .line 1907
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "^num1000="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50343
    iget v15, v15, Lior;->ai:I

    .line 1908
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "^sizeLimit60="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 50344
    iget v15, v15, Lior;->W:I

    .line 1909
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1899
    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    const-string/jumbo v13, "H5WebViewClient.onPageFinished"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mBugMeViewId:Ljava/lang/String;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, "url"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object p2, v15, v16

    invoke-static {v13, v14, v15}, Lcom/alipay/mobile/nebula/data/H5Trace;->event(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1914
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    instance-of v13, v13, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v13, :cond_f

    .line 1915
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v13}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getH5Fragment()Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-result-object v2

    .line 1916
    .local v2, "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    if-eqz v2, :cond_f

    .line 1917
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->onPageFinish()V

    .line 1921
    .end local v2    # "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    :cond_f
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v13

    new-instance v14, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$11;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$11;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V

    invoke-virtual {v13, v14}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1930
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mEnableAsyncSendEvent:Z

    if-eqz v13, :cond_12

    .line 1931
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mAsyncSendEventHandler:Landroid/os/Handler;

    if-nez v13, :cond_10

    .line 1932
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mAsyncSendEventHandler:Landroid/os/Handler;

    .line 1934
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mAsyncSendEventHandler:Landroid/os/Handler;

    new-instance v14, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$12;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v7}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$12;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1946
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v14, "h5PageFinishedSync"

    invoke-virtual {v13, v14, v7}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1947
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v13}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerPageFinishLink(Liop;)V

    goto/16 :goto_0

    .line 1816
    .end local v3    # "historySize":I
    .end local v4    # "list":Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .end local v5    # "originalUrl":Ljava/lang/String;
    .end local v6    # "pageIndex":I
    .end local v7    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v10    # "title":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    move-object/from16 v16, v0

    .line 50309
    move-object/from16 v0, v16

    iget-wide v0, v0, Lior;->j:J

    move-wide/from16 v16, v0

    .line 1816
    sub-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Lior;->b(J)V

    goto/16 :goto_1

    .line 1943
    .restart local v3    # "historySize":I
    .restart local v4    # "list":Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .restart local v5    # "originalUrl":Ljava/lang/String;
    .restart local v6    # "pageIndex":I
    .restart local v7    # "param":Lcom/alibaba/fastjson/JSONObject;
    .restart local v10    # "title":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v14, "h5PageFinished"

    invoke-virtual {v13, v14, v7}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_2
.end method

.method public onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 20
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1559
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->hasOnPageStarted:Z

    .line 1560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onPageStarted "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " originalUrl "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getStripLandingURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1564
    .local v17, "realUrl":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1566
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 1567
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v6, "appId"

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 1568
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "publicId"

    invoke-static {v2, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 1569
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v8, "bizScenario"

    invoke-static {v2, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p2

    .line 1566
    invoke-static/range {v2 .. v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->landingMonitor(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->webDriverHelper:Liph;

    invoke-interface {v2}, Liph;->c()V

    .line 1575
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5BugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->setWebViewDebugging(Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 1577
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1578
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "H5"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1579
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getUid(Landroid/content/Context;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1578
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lios;->e:Ljava/lang/String;

    .line 1582
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1583
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1586
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v2, :cond_3

    .line 1739
    :goto_0
    return-void

    .line 1590
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setContainsEmbedView(Z)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setContainsEmbedSurfaceView(Z)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getPageId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setPageId(I)V

    .line 1594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v2, :cond_4

    .line 1595
    const-string/jumbo v2, "h5_bug_me_show_icon"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1596
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5BugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->hasAccessToDebug(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1597
    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->getInstance()Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->addOrGetConsole(Liop;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    move-result-object v10

    .line 1598
    .local v10, "console":Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;
    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->startup()V

    .line 1600
    const-string/jumbo v2, "h5_bug_me_debug_switch_keep"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "h5_bug_me_super_user"

    const/4 v3, 0x0

    .line 1601
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->clearCache(Z)V

    .line 1608
    .end local v10    # "console":Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mUcLongRender3s:Z

    .line 1609
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mUcLongRender6s:Z

    .line 1610
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mPageUpdated:Z

    .line 1613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->availablePageData:Linv;

    if-eqz v2, :cond_5

    .line 1614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->availablePageData:Linv;

    invoke-virtual {v2}, Linv;->a()V

    .line 1615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->availablePageData:Linv;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 42039
    iput-wide v4, v2, Linv;->k:J

    .line 1619
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 42861
    iget-object v2, v2, Lior;->aj:Ljava/lang/String;

    .line 1619
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 43861
    iget-object v2, v2, Lior;->aj:Ljava/lang/String;

    .line 1620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 44474
    iget-object v3, v3, Lior;->w:Ljava/lang/String;

    .line 1620
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lior;->f(Ljava/lang/String;)V

    .line 1625
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 45306
    iget-wide v2, v2, Lior;->j:J

    .line 1625
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    .line 1626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 45474
    iget-object v4, v4, Lior;->w:Ljava/lang/String;

    .line 1626
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 46360
    iget-wide v4, v4, Lior;->o:J

    .line 1626
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}->("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 46456
    iget v4, v4, Lior;->u:I

    .line 1627
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46487
    const-string/jumbo v4, "H5PageData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setReferer: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46488
    iput-object v3, v2, Lior;->x:Ljava/lang/String;

    .line 1632
    :cond_7
    const/16 v18, 0x1

    .line 1633
    .local v18, "sendPageStartAsync":Z
    const-string/jumbo v14, ""

    .line 1634
    .local v14, "fromTypeStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v2, :cond_8

    .line 1636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "fromType"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1638
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1643
    :cond_8
    const/16 v18, 0x0

    .line 1647
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mEnableAsyncSendEvent:Z

    if-eqz v2, :cond_13

    if-eqz v18, :cond_13

    .line 1648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mAsyncSendEventHandler:Landroid/os/Handler;

    if-nez v2, :cond_a

    .line 1649
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mAsyncSendEventHandler:Landroid/os/Handler;

    .line 1651
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mAsyncSendEventHandler:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$10;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1670
    :cond_b
    :goto_1
    new-instance v16, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1671
    .local v16, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "url"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v3, "h5PageStartedSync"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    invoke-virtual {v2}, Lior;->b()V

    .line 1677
    const/16 v19, 0x0

    .line 1678
    .local v19, "webViewIndex":I
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v2, :cond_c

    move-object/from16 v2, p1

    .line 1679
    check-cast v2, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getWebViewIndex()I

    move-result v19

    .line 1681
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 47451
    const-string/jumbo v3, "H5PageData"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setWebViewIndex: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47452
    move/from16 v0, v19

    iput v0, v2, Lior;->t:I

    .line 1682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lior;->a(Ljava/lang/String;)V

    .line 1683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    const/4 v3, 0x0

    .line 47482
    iget-object v2, v2, Lior;->bc:[I

    const/4 v4, 0x1

    aput v4, v2, v3

    .line 1684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerPageStartedLink(Liop;)V

    .line 1686
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    sget-wide v4, Liog;->d:J

    .line 1688
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getTrackLastClickTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 48103
    const-string/jumbo v3, "H5PageData"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setSrcClick: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48104
    iput-wide v4, v2, Lior;->aw:J

    .line 1691
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v2, :cond_15

    .line 1693
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    invoke-virtual {v2, v14}, Lior;->l(Ljava/lang/String;)V

    .line 1695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "fromType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1709
    :cond_e
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 48148
    const-string/jumbo v4, "H5PageData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setToken "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48149
    iput-object v3, v2, Lior;->aA:Ljava/lang/String;

    .line 1712
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    sget-object v3, Lios;->e:Ljava/lang/String;

    .line 48157
    const-string/jumbo v4, "H5PageData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setH5Token "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48158
    iput-object v3, v2, Lior;->aB:Ljava/lang/String;

    .line 1713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    sget-object v3, Lios;->f:Ljava/lang/String;

    .line 48166
    const-string/jumbo v4, "H5PageData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setH5SessionToken "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48167
    iput-object v3, v2, Lior;->aC:Ljava/lang/String;

    .line 1716
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 1718
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v9

    .line 1719
    .local v9, "backForwardList":Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    if-eqz v9, :cond_10

    .line 1721
    invoke-interface {v9}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1724
    :cond_10
    sget-object v2, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->sVisitHistoryQueue:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 1725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sVisitHistoryQueue: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->sVisitHistoryQueue:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    sget-object v2, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->sVisitHistoryQueue:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;->toString()Ljava/lang/String;

    .line 1728
    :cond_11
    sget-object v2, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->sVisitHistoryQueue:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;->add(Ljava/lang/Object;)Z

    .line 1731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v2, :cond_12

    .line 1732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->needShowDisclaimer(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v15

    .line 1733
    .local v15, "mode":I
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1734
    .local v11, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "mode"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v3, "showDisClaimer"

    invoke-virtual {v2, v3, v11}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1738
    .end local v11    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v15    # "mode":I
    :cond_12
    const-string/jumbo v2, "H5WebViewClient.onPageStarted"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mBugMeViewId:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "url"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebula/data/H5Trace;->event(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1662
    .end local v9    # "backForwardList":Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .end local v16    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v19    # "webViewIndex":I
    :cond_13
    new-instance v16, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1663
    .restart local v16    # "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "url"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v3, "h5PageStarted"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    if-eqz v2, :cond_b

    .line 1666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 47224
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lior;->aq:Ljava/lang/String;

    goto/16 :goto_1

    .line 1697
    .restart local v19    # "webViewIndex":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    const-string/jumbo v3, "hrefChange"

    invoke-virtual {v2, v3}, Lior;->l(Ljava/lang/String;)V

    .line 1698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1699
    .local v12, "currentTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    const/4 v3, -0x1

    invoke-virtual {v2, v12, v13, v3}, Lior;->b(JI)V

    .line 1700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    const/4 v3, 0x5

    invoke-virtual {v2, v12, v13, v3}, Lior;->b(JI)V

    goto/16 :goto_2

    .line 1704
    .end local v12    # "currentTime":J
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    const-string/jumbo v3, "subView"

    invoke-virtual {v2, v3}, Lior;->l(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "webView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 357
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->webDriverHelper:Liph;

    invoke-interface {v2}, Liph;->f()V

    .line 359
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    const-string/jumbo v3, "webViewErrorCode"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lior;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    const-string/jumbo v3, "webViewErrorDesc"

    invoke-virtual {v2, v3, p3}, Lior;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    invoke-virtual {v2, p2}, Lior;->b(I)V

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceivedError errorCode "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " description "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failingUrl "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p4, v2, p3}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->sendErrorResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 4465
    iget v2, v2, Lior;->v:I

    .line 368
    if-gez v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 4852
    iget v3, v3, Lior;->ai:I

    .line 369
    add-int/lit8 v3, v3, 0x1

    .line 4856
    const-string/jumbo v4, "H5PageData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setNum1000: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4857
    iput v3, v2, Lior;->ai:I

    .line 372
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 5465
    iget v2, v2, Lior;->v:I

    .line 372
    const/16 v3, -0x61

    if-ne v2, v3, :cond_1

    .line 388
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->requestMap:Ljava/util/Map;

    invoke-interface {v2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;

    .line 378
    .local v0, "info":Lcom/alipay/mobile/nebulacore/web/ResourceInfo;
    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    if-eqz v2, :cond_3

    .line 380
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-eq v2, v3, :cond_2

    .line 381
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    invoke-virtual {v2, p2}, Lior;->a(I)V

    .line 383
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->reportAbnormalPage(Z)V

    .line 385
    :cond_3
    const-string/jumbo v2, "genericError"

    invoke-direct {p0, p4, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->reportErrorPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 6456
    iget v2, v2, Lior;->u:I

    .line 387
    invoke-direct {p0, p1, p4, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->loadErrorPage(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "apHttpAuthHandler"    # Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s2"    # Ljava/lang/String;

    .prologue
    .line 1189
    return-void
.end method

.method public onReceivedHttpError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "statusCode"    # I
    .param p3, "requestUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 393
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceivedHttpError statusCode : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " requestUrl : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    if-nez v1, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 6474
    iget-object v1, v1, Lior;->w:Ljava/lang/String;

    .line 397
    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 398
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceivedHttpError : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 7474
    iget-object v3, v3, Lior;->w:Ljava/lang/String;

    .line 398
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_2
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5HttpErrorRouterProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5HttpErrorRouterProvider;

    .line 402
    .local v0, "routerProvider":Lcom/alipay/mobile/nebula/provider/H5HttpErrorRouterProvider;
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->hasErrorRouted:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 403
    invoke-interface {v0, p1, v1, p2, p3}, Lcom/alipay/mobile/nebula/provider/H5HttpErrorRouterProvider;->enableRoute(Lcom/alipay/mobile/nebula/webview/APWebView;Liop;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 404
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->hasErrorRouted:Z

    goto :goto_0

    .line 408
    :cond_3
    const/16 v1, 0x194

    if-eq p2, v1, :cond_4

    const/16 v1, 0x193

    if-ne p2, v1, :cond_5

    .line 410
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onReceivedHttpError 404 or 403, return "

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 8456
    iget v1, v1, Lior;->u:I

    .line 413
    invoke-direct {p0, p1, p3, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->loadErrorPage(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onReceivedLoginRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;
    .param p4, "s3"    # Ljava/lang/String;

    .prologue
    .line 1212
    return-void
.end method

.method public onReceivedResponseHeader(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 730
    .local p1, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    const-string/jumbo v1, "x-ap-pkg-id"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    const-string/jumbo v1, "x-ap-pkg-id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 735
    .local v0, "pkgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 736
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->addResourcePackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V
    .locals 21
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "handler"    # Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 418
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->webDriverHelper:Liph;

    invoke-interface {v5}, Liph;->g()V

    .line 421
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v4

    .line 422
    .local v4, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v4, :cond_0

    if-eqz p3, :cond_0

    .line 423
    const-string/jumbo v5, "h5_onReceivedSslError"

    invoke-virtual/range {p3 .. p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v4 .. v9}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v5

    const-class v6, Lcom/alipay/mobile/nebula/provider/H5ReceivedSslErrorHandler;

    .line 427
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alipay/mobile/nebula/provider/H5ReceivedSslErrorHandler;

    .line 428
    .local v16, "h5ReceivedSslErrorHandler":Lcom/alipay/mobile/nebula/provider/H5ReceivedSslErrorHandler;
    if-eqz v16, :cond_1

    .line 429
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ReceivedSslErrorHandler;->onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V

    .line 505
    :goto_0
    return-void

    .line 434
    :cond_1
    if-nez p3, :cond_2

    .line 435
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "SslError==null"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v11

    .line 440
    .local v11, "errorCode":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    invoke-virtual {v5, v11}, Lior;->a(I)V

    .line 441
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    invoke-virtual {v5, v11}, Lior;->b(I)V

    .line 442
    const/4 v14, 0x0

    .line 443
    .local v14, "failingUrl":Ljava/lang/String;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_3

    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v14

    .line 447
    :cond_3
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 448
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 8474
    iget-object v14, v5, Lior;->w:Ljava/lang/String;

    .line 451
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "onReceivedSslError "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", url is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v5, :cond_b

    .line 455
    invoke-static {v14}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 456
    .local v19, "uri":Landroid/net/Uri;
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 457
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "file"

    .line 458
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 459
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ignore param check for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 462
    :cond_6
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 463
    .local v15, "finalDomain":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "onlineHost"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 466
    .local v17, "onlineHost":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 468
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;->proceed()V

    goto/16 :goto_0

    .line 474
    :cond_7
    const-string/jumbo v5, "h5_close_sslError"

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 475
    .local v20, "value":Ljava/lang/String;
    const-string/jumbo v5, "yes"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 476
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;->proceed()V

    goto/16 :goto_0

    .line 481
    :cond_8
    invoke-static {v14}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->getNewDomainSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 482
    .local v10, "domainSuffix":Ljava/lang/String;
    const-string/jumbo v5, "h5_sslError_WhiteList"

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 483
    .local v18, "regexArray":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->isSomeDomainInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 485
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;->proceed()V

    goto/16 :goto_0

    .line 490
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->lastAbntime:J

    sub-long v12, v6, v8

    .line 491
    .local v12, "duration":J
    const-wide/16 v6, 0x2710

    cmp-long v5, v12, v6

    if-gez v5, :cond_a

    .line 492
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;->cancel()V

    .line 493
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->stopLoading()V

    .line 494
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v11}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->loadErrorPage(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 497
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->lastAbntime:J

    .line 498
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->reportAbnormalPage(Z)V

    .line 499
    const-string/jumbo v5, "sslError"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->reportErrorPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .end local v10    # "domainSuffix":Ljava/lang/String;
    .end local v12    # "duration":J
    .end local v15    # "finalDomain":Ljava/lang/String;
    .end local v17    # "onlineHost":Ljava/lang/String;
    .end local v18    # "regexArray":Ljava/lang/String;
    .end local v19    # "uri":Landroid/net/Uri;
    .end local v20    # "value":Ljava/lang/String;
    :cond_b
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;->cancel()V

    .line 504
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v11}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->loadErrorPage(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public onRelease()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1951
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->hasOnPageStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->hasShouldInterceptRequest:Z

    if-nez v0, :cond_0

    .line 1952
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hasOnPageStarted but no hasShouldInterceptRequest! Dump Thread Infos!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    const-string/jumbo v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$13;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$13;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1967
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 1968
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "h5netsupervisor exec onRelease"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    invoke-static {}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->getInstance()Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->exec()V

    .line 1970
    return-void
.end method

.method public onResourceFinishLoad(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
    .locals 11
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "size"    # J

    .prologue
    .line 584
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "onResourceFinishLoad "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    if-nez v5, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 13474
    iget-object v5, v5, Lior;->w:Ljava/lang/String;

    .line 591
    invoke-static {v5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 592
    .local v3, "isMainDoc":Z
    if-nez v3, :cond_2

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 14194
    iget-object v5, v5, Lior;->aF:Ljava/lang/String;

    .line 592
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 593
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 610
    :cond_2
    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 14391
    iget-boolean v5, v5, Lior;->aY:Z

    .line 610
    if-eqz v5, :cond_4

    .line 612
    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-lez v5, :cond_3

    .line 613
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lior;->a(Z)V

    .line 616
    :cond_3
    new-instance v5, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V

    const-wide/16 v6, 0xbb8

    invoke-static {v5, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 631
    :cond_4
    if-eqz v3, :cond_5

    .line 632
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;

    .line 633
    .local v4, "preConnectProvider":Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;
    if-eqz v4, :cond_5

    .line 634
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-interface {v4, v5}, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;->clearPreRequest(Liop;)V

    .line 638
    .end local v4    # "preConnectProvider":Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;
    :cond_5
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->requestMap:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;

    .line 639
    .local v2, "info":Lcom/alipay/mobile/nebulacore/web/ResourceInfo;
    if-eqz v2, :cond_0

    .line 643
    iget-boolean v5, v2, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    if-eqz v5, :cond_6

    .line 644
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 14681
    iget-wide v6, v6, Lior;->P:J

    .line 644
    add-long/2addr v6, p3

    .line 14685
    const-string/jumbo v8, "H5PageData"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setHtmlSize: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14686
    iput-wide v6, v5, Lior;->P:J

    .line 645
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 15306
    iget-wide v8, v8, Lior;->j:J

    .line 645
    sub-long/2addr v6, v8

    .line 15364
    const-string/jumbo v8, "H5PageData"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setPageNetLoad: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15365
    iput-wide v6, v5, Lior;->o:J

    .line 646
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "url "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " pageNetLoad "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 16360
    iget-wide v8, v7, Lior;->o:J

    .line 646
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :cond_6
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    const/4 v6, 0x3

    .line 16482
    iget-object v5, v5, Lior;->bc:[I

    const/4 v7, 0x1

    aput v7, v5, v6

    .line 650
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 16546
    iget-wide v6, v6, Lior;->A:J

    .line 650
    add-long/2addr v6, p3

    .line 16550
    const-string/jumbo v8, "H5PageData"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setPageLoadSize: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16551
    iput-wide v6, v5, Lior;->A:J

    .line 651
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 16690
    iget-wide v6, v6, Lior;->Q:J

    .line 651
    add-long/2addr v6, p3

    invoke-virtual {v5, v6, v7}, Lior;->c(J)V

    .line 652
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 17342
    iget-wide v6, v5, Lior;->n:J

    .line 652
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_7

    .line 653
    const-wide/32 v6, 0x32000

    cmp-long v5, p3, v6

    if-ltz v5, :cond_7

    .line 654
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 17762
    iget v6, v6, Lior;->Y:I

    .line 654
    add-int/lit8 v6, v6, 0x1

    .line 17766
    const-string/jumbo v7, "H5PageData"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "setSizeLimit200: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17767
    iput v6, v5, Lior;->Y:I

    .line 655
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->isImage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 656
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 17789
    iget-object v5, v5, Lior;->ab:Ljava/lang/String;

    .line 656
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 657
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 18789
    iget-object v7, v7, Lior;->ab:Ljava/lang/String;

    .line 657
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x400

    div-long v8, p3, v8

    long-to-int v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "KB)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lior;->e(Ljava/lang/String;)V

    .line 667
    :cond_7
    :goto_1
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->isCss(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 668
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 20342
    iget-wide v6, v5, Lior;->n:J

    .line 668
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_8

    .line 669
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 20582
    iget-wide v6, v6, Lior;->E:J

    .line 669
    add-long/2addr v6, p3

    .line 20586
    const-string/jumbo v8, "H5PageData"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setCssLoadSize: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20587
    iput-wide v6, v5, Lior;->E:J

    .line 671
    :cond_8
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 20654
    iget-wide v6, v6, Lior;->M:J

    .line 671
    add-long/2addr v6, p3

    .line 20658
    const-string/jumbo v8, "H5PageData"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setCssSize: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20659
    iput-wide v6, v5, Lior;->M:J

    .line 707
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mStart:J

    sub-long v0, v6, v8

    .line 708
    .local v0, "duration":J
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->isJavascript(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 709
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 28203
    iget v6, v6, Lior;->aG:I

    .line 709
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lior;->d(I)V

    .line 710
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 28239
    iget-wide v6, v6, Lior;->aK:J

    .line 710
    add-long/2addr v6, p3

    .line 28243
    const-string/jumbo v8, "H5PageData"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setNetJsSize : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28244
    iput-wide v6, v5, Lior;->aK:J

    .line 711
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 28257
    iget-wide v6, v6, Lior;->aM:J

    .line 711
    add-long/2addr v6, v0

    .line 28261
    const-string/jumbo v8, "H5PageData"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setNetJsTime : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28262
    iput-wide v6, v5, Lior;->aM:J

    .line 717
    :goto_3
    const-wide/32 v6, 0xea60

    cmp-long v5, v0, v6

    if-ltz v5, :cond_0

    .line 721
    iget-boolean v5, v2, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    if-eqz v5, :cond_15

    .line 722
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->reportAbnormalPage(Z)V

    goto/16 :goto_0

    .line 660
    .end local v0    # "duration":J
    :cond_9
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 19789
    iget-object v7, v7, Lior;->ab:Ljava/lang/String;

    .line 660
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x400

    div-long v8, p3, v8

    long-to-int v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "KB)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lior;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 672
    :cond_a
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->isJavascript(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 673
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 21342
    iget-wide v6, v5, Lior;->n:J

    .line 673
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_b

    .line 674
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 21573
    iget-wide v6, v6, Lior;->D:J

    .line 674
    add-long/2addr v6, p3

    .line 21577
    const-string/jumbo v8, "H5PageData"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setJsLoadSize: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21578
    iput-wide v6, v5, Lior;->D:J

    .line 676
    :cond_b
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 21645
    iget-wide v6, v6, Lior;->L:J

    .line 676
    add-long/2addr v6, p3

    .line 21649
    const-string/jumbo v8, "H5PageData"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setJsSize: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21650
    iput-wide v6, v5, Lior;->L:J

    goto/16 :goto_2

    .line 677
    :cond_c
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->isImage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 678
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 22342
    iget-wide v6, v5, Lior;->n:J

    .line 678
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_f

    .line 679
    const-wide/32 v6, 0xf000

    cmp-long v5, p3, v6

    if-ltz v5, :cond_d

    .line 680
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 22753
    iget v6, v6, Lior;->X:I

    .line 680
    add-int/lit8 v6, v6, 0x1

    .line 22757
    const-string/jumbo v7, "H5PageData"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "setSizeLoadLimit60: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22758
    iput v6, v5, Lior;->X:I

    .line 682
    :cond_d
    const-wide/32 v6, 0x32000

    cmp-long v5, p3, v6

    if-ltz v5, :cond_e

    .line 683
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 22771
    iget v6, v6, Lior;->Z:I

    .line 683
    add-int/lit8 v6, v6, 0x1

    .line 22775
    const-string/jumbo v7, "H5PageData"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "setSizeLoadLimit200: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22776
    iput v6, v5, Lior;->Z:I

    .line 685
    :cond_e
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 23564
    iget-wide v6, v6, Lior;->C:J

    .line 685
    add-long/2addr v6, p3

    .line 23568
    const-string/jumbo v8, "H5PageData"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setImgLoadSize: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23569
    iput-wide v6, v5, Lior;->C:J

    .line 687
    :cond_f
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 23663
    iget-wide v6, v6, Lior;->N:J

    .line 687
    add-long/2addr v6, p3

    .line 23667
    const-string/jumbo v8, "H5PageData"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setImgSize: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23668
    iput-wide v6, v5, Lior;->N:J

    .line 688
    const-wide/32 v6, 0xf000

    cmp-long v5, p3, v6

    if-ltz v5, :cond_10

    .line 689
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 23744
    iget v6, v6, Lior;->W:I

    .line 689
    add-int/lit8 v6, v6, 0x1

    .line 23748
    const-string/jumbo v7, "H5PageData"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "setSizeLimit60: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23749
    iput v6, v5, Lior;->W:I

    .line 690
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 23780
    iget-object v5, v5, Lior;->aa:Ljava/lang/String;

    .line 690
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 691
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 24780
    iget-object v7, v7, Lior;->aa:Ljava/lang/String;

    .line 691
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x400

    div-long v8, p3, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "KB)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lior;->d(Ljava/lang/String;)V

    .line 698
    :cond_10
    :goto_4
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "pageData.sizeLimit200Urls"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 25789
    iget-object v7, v7, Lior;->ab:Ljava/lang/String;

    .line 699
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 26780
    iget-object v7, v7, Lior;->aa:Ljava/lang/String;

    .line 699
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 698
    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 694
    :cond_11
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 25780
    iget-object v7, v7, Lior;->aa:Ljava/lang/String;

    .line 694
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x400

    div-long v8, p3, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "KB)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lior;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 701
    :cond_12
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 27342
    iget-wide v6, v5, Lior;->n:J

    .line 701
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_13

    .line 702
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 27555
    iget-wide v6, v6, Lior;->B:J

    .line 702
    add-long/2addr v6, p3

    .line 27559
    const-string/jumbo v8, "H5PageData"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setOtherLoadSize: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27560
    iput-wide v6, v5, Lior;->B:J

    .line 704
    :cond_13
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 27672
    iget-wide v6, v6, Lior;->O:J

    .line 704
    add-long/2addr v6, p3

    .line 27676
    const-string/jumbo v8, "H5PageData"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setOtherSize: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27677
    iput-wide v6, v5, Lior;->O:J

    goto/16 :goto_2

    .line 713
    .restart local v0    # "duration":J
    :cond_14
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 29212
    iget v6, v6, Lior;->aH:I

    .line 713
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lior;->e(I)V

    .line 714
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 29248
    iget-wide v6, v6, Lior;->aL:J

    .line 714
    add-long/2addr v6, p3

    .line 29252
    const-string/jumbo v8, "H5PageData"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setNetOtherSize : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29253
    iput-wide v6, v5, Lior;->aL:J

    .line 715
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 29266
    iget-wide v6, v6, Lior;->aN:J

    .line 715
    add-long/2addr v6, v0

    .line 29270
    const-string/jumbo v8, "H5PageData"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setNetOtherTime : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29271
    iput-wide v6, v5, Lior;->aN:J

    goto/16 :goto_3

    .line 724
    :cond_15
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->reportErrorResource(Lcom/alipay/mobile/nebulacore/web/ResourceInfo;)V

    goto/16 :goto_0
.end method

.method public onResourceResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)V
    .locals 13
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebula/webview/APWebView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v12, 0x1f4

    const/16 v11, 0x130

    const/16 v10, 0x12e

    const/16 v9, 0x190

    .line 509
    const-string/jumbo v3, "httpcode"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 510
    .local v2, "statusCode":I
    const-string/jumbo v3, "url"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 511
    .local v1, "requestUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onResourceResponse statusCode "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-static {}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->getInstance()Lcom/alipay/mobile/nebula/webview/H5ResContentList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 514
    invoke-static {}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->getInstance()Lcom/alipay/mobile/nebula/webview/H5ResContentList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/nebula/webview/H5ResContentList;->remove(Ljava/lang/String;)V

    .line 515
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    if-eqz v3, :cond_0

    .line 516
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 9439
    iget v4, v4, Lior;->aZ:I

    .line 516
    add-int/lit8 v4, v4, 0x1

    .line 9443
    const-string/jumbo v5, "H5PageData"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setUcCacheResNum : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9444
    iput v4, v3, Lior;->aZ:I

    .line 519
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->requestMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 580
    :cond_1
    :goto_0
    return-void

    .line 522
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->requestMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;

    .line 523
    .local v0, "info":Lcom/alipay/mobile/nebulacore/web/ResourceInfo;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-direct {p0, v1, v3, v4}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->sendErrorResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->availablePageData:Linv;

    if-eqz v3, :cond_3

    .line 529
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->availablePageData:Linv;

    .line 10077
    const-string/jumbo v4, "H5AvailablePageData"

    const-string/jumbo v5, "reportReqEnd"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10078
    iget-wide v4, v3, Linv;->e:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 10079
    invoke-virtual {v3}, Linv;->b()V

    .line 532
    :cond_3
    const-string/jumbo v3, "mimetype"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mMimeType:Ljava/lang/String;

    .line 533
    iput v2, v0, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mStatusCode:I

    .line 534
    iget-boolean v3, v0, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    if-eqz v3, :cond_6

    .line 535
    const/16 v3, 0x12d

    if-eq v2, v3, :cond_4

    if-eq v2, v10, :cond_4

    if-lt v2, v9, :cond_5

    .line 536
    :cond_4
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hideLoadingView()V

    .line 538
    :cond_5
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    invoke-virtual {v3, v2}, Lior;->b(I)V

    .line 539
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 10306
    iget-wide v6, v6, Lior;->j:J

    .line 539
    sub-long/2addr v4, v6

    .line 10337
    const-string/jumbo v6, "H5PageData"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setFirstByte: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10338
    iput-wide v4, v3, Lior;->m:J

    .line 541
    :cond_6
    if-ne v2, v10, :cond_c

    .line 542
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 10798
    iget v4, v4, Lior;->ac:I

    .line 542
    add-int/lit8 v4, v4, 0x1

    .line 10802
    const-string/jumbo v5, "H5PageData"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setNum302: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10803
    iput v4, v3, Lior;->ac:I

    .line 547
    :cond_7
    :goto_1
    const/16 v3, 0x12c

    if-lt v2, v3, :cond_8

    if-ge v2, v9, :cond_8

    if-eq v2, v11, :cond_8

    .line 548
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 10816
    iget v4, v4, Lior;->ae:I

    .line 548
    add-int/lit8 v4, v4, 0x1

    .line 10820
    const-string/jumbo v5, "H5PageData"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setNum300: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10821
    iput v4, v3, Lior;->ae:I

    .line 551
    :cond_8
    const/16 v3, 0x194

    if-ne v2, v3, :cond_9

    .line 552
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 10825
    iget v4, v4, Lior;->af:I

    .line 552
    add-int/lit8 v4, v4, 0x1

    .line 10829
    const-string/jumbo v5, "H5PageData"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setNum404: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10830
    iput v4, v3, Lior;->af:I

    .line 555
    :cond_9
    if-lt v2, v9, :cond_a

    if-ge v2, v12, :cond_a

    .line 556
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 10834
    iget v4, v4, Lior;->ag:I

    .line 556
    add-int/lit8 v4, v4, 0x1

    .line 10838
    const-string/jumbo v5, "H5PageData"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setNum400: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10839
    iput v4, v3, Lior;->ag:I

    .line 559
    :cond_a
    if-lt v2, v12, :cond_b

    .line 560
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 10843
    iget v4, v4, Lior;->ah:I

    .line 560
    add-int/lit8 v4, v4, 0x1

    .line 10847
    const-string/jumbo v5, "H5PageData"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setNum500: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10848
    iput v4, v3, Lior;->ah:I

    .line 563
    :cond_b
    iget v3, v0, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mStatusCode:I

    if-lt v3, v9, :cond_1

    .line 567
    iget-boolean v3, v0, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mIsMainDoc:Z

    if-eqz v3, :cond_d

    .line 568
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mUrl:Ljava/lang/String;

    const-string/jumbo v4, "genericError"

    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->reportErrorPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->reportAbnormalPage(Z)V

    .line 579
    :goto_2
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->reportErrorResource(Lcom/alipay/mobile/nebulacore/web/ResourceInfo;)V

    goto/16 :goto_0

    .line 543
    :cond_c
    if-ne v2, v11, :cond_7

    .line 544
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 10807
    iget v4, v4, Lior;->ad:I

    .line 544
    add-int/lit8 v4, v4, 0x1

    .line 10811
    const-string/jumbo v5, "H5PageData"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setNum304: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10812
    iput v4, v3, Lior;->ad:I

    goto/16 :goto_1

    .line 571
    :cond_d
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->isJavascript(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 572
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 11221
    iget v4, v4, Lior;->aI:I

    .line 572
    add-int/lit8 v4, v4, 0x1

    .line 11225
    const-string/jumbo v5, "H5PageData"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setNetErrorJsNum : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11226
    iput v4, v3, Lior;->aI:I

    .line 573
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 12203
    iget v4, v4, Lior;->aG:I

    .line 573
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lior;->d(I)V

    goto :goto_2

    .line 575
    :cond_e
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 12230
    iget v4, v4, Lior;->aJ:I

    .line 575
    add-int/lit8 v4, v4, 0x1

    .line 12234
    const-string/jumbo v5, "H5PageData"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setNetErrorOtherNum : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12235
    iput v4, v3, Lior;->aJ:I

    .line 576
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    .line 13212
    iget v4, v4, Lior;->aH:I

    .line 576
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lior;->e(I)V

    goto/16 :goto_2
.end method

.method public onScaleChanged(Lcom/alipay/mobile/nebula/webview/APWebView;FF)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "v"    # F
    .param p3, "v2"    # F

    .prologue
    .line 1203
    if-eqz p1, :cond_0

    .line 1204
    invoke-interface {p1, p3}, Lcom/alipay/mobile/nebula/webview/APWebView;->setScale(F)V

    .line 1206
    :cond_0
    return-void
.end method

.method public onTooManyRedirects(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "message"    # Landroid/os/Message;
    .param p3, "message2"    # Landroid/os/Message;

    .prologue
    .line 1500
    return-void
.end method

.method public onUnhandledKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 1199
    return-void
.end method

.method public onWebViewEvent(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/Object;)V
    .locals 10
    .param p1, "webview"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "type"    # I
    .param p3, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x3

    const/16 v7, 0x9

    const/4 v6, 0x1

    .line 1067
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onWebViewEvent "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    if-ne p2, v7, :cond_0

    .line 1072
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onWebViewEvent empty page "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v3, :cond_1

    .line 1074
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onWebViewEvent h5Page == null"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    const/4 v0, 0x0

    .line 1080
    .local v0, "blankTime":I
    :try_start_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1085
    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onWebViewEvent empty page blankTime is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    if-ne v0, v8, :cond_2

    .line 1087
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mUcLongRender3s:Z

    .line 1088
    sget-boolean v3, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1089
    const-string/jumbo v3, "pageLoad|emptyScreen"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1092
    :cond_2
    if-ne v0, v9, :cond_6

    .line 1093
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mUcLongRender6s:Z

    .line 1094
    sget-boolean v3, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 1095
    const-string/jumbo v3, "pageLoad|emptyScreen"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1097
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1098
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "dsl_error"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1101
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1102
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "activity isBackgroundRunning or screenOff"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1081
    :catch_0
    move-exception v1

    .line 1082
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1106
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->whiteScreenSnapshotUpload(Liop;)V

    .line 1107
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->checkDSLError(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 1109
    :cond_6
    if-ne v0, v7, :cond_0

    .line 1110
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onWebViewEvent empty page blankTime 3&6 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mUcLongRender3s:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mUcLongRender6s:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    sget-boolean v3, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v3, :cond_7

    .line 1113
    const-string/jumbo v3, "pageLoad|emptyScreen"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1115
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1116
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "activity isBackgroundRunning or screenOff"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1119
    :cond_8
    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mUcLongRender3s:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mUcLongRender6s:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Liog;->c:Z

    if-nez v3, :cond_0

    .line 1120
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onWebViewEvent empty page blankTime is report monitor"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1122
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "errorType"

    const-string/jumbo v4, "ucLongRender"

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v4, "h5PageAbnormal"

    invoke-virtual {v3, v4, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0
.end method

.method public setCheckingUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->checkingUrl:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setWebProvider(Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    .prologue
    .line 258
    check-cast p1, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    .end local p1    # "provider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mH5ContentProvider:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    .line 259
    return-void
.end method

.method public shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "wr"    # Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1235
    invoke-interface {p2}, Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p2}, Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1241
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "GET"

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldInterceptResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)Z
    .locals 8
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebula/webview/APWebView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 889
    const-string/jumbo v6, "httpcode"

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 890
    .local v0, "httpCode":Ljava/lang/String;
    const-string/jumbo v6, "url"

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 891
    .local v1, "requestUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 893
    .local v3, "statusCode":I
    const/16 v6, 0x64

    if-le v3, v6, :cond_0

    const/16 v6, 0x190

    if-lt v3, v6, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 916
    :cond_1
    :goto_0
    return v4

    .line 897
    :cond_2
    const-class v6, Lcom/alipay/mobile/nebula/provider/H5HttpErrorRouterProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5HttpErrorRouterProvider;

    .line 898
    .local v2, "routerProvider":Lcom/alipay/mobile/nebula/provider/H5HttpErrorRouterProvider;
    if-eqz v2, :cond_3

    iget-boolean v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->hasErrorRouted:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 899
    invoke-interface {v2, p1, v6, v3, v1}, Lcom/alipay/mobile/nebula/provider/H5HttpErrorRouterProvider;->enableRoute(Lcom/alipay/mobile/nebula/webview/APWebView;Liop;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 900
    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->hasErrorRouted:Z

    move v4, v5

    .line 901
    goto :goto_0

    .line 904
    :cond_3
    const/16 v6, 0x194

    if-eq v3, v6, :cond_4

    const/16 v6, 0x193

    if-ne v3, v6, :cond_5

    .line 906
    :cond_4
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "404 or 403,shouldInterceptResponse return false "

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 910
    :cond_5
    new-instance v4, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$5;

    invoke-direct {v4, p0, p1, v1, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$5;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    const-wide/16 v6, 0x14

    invoke-static {v4, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    move v4, v5

    .line 916
    goto :goto_0
.end method

.method public shouldOverrideKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 1193
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Z
    .locals 23
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->webDriverHelper:Liph;

    invoke-interface {v2}, Liph;->b()V

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "gao shouldOverrideUrlLoading "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mH5ContentProvider:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    if-eqz v2, :cond_0

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mH5ContentProvider:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->disconnect()V

    .line 270
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v2, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 271
    :cond_1
    const/4 v12, 0x1

    .line 351
    :cond_2
    :goto_0
    return v12

    .line 274
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->pageData:Lior;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lior;->f(Ljava/lang/String;)V

    .line 275
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->checkingUrl:Ljava/lang/String;

    .line 277
    new-instance v17, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v17 .. v17}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 278
    .local v17, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "url"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/Nebula;->interceptSchemeForTiny(Ljava/lang/String;Liop;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "interceptScheme  url "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const/4 v12, 0x1

    goto :goto_0

    .line 286
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "location.href"

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4}, Lcom/alipay/mobile/nebulacore/Nebula;->enableOpenScheme(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "stripLandingURL&Deeplink url "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bingo deeplink"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const/4 v12, 0x1

    goto :goto_0

    .line 291
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hasContentBeforeRedirect()Z

    move-result v13

    .line 292
    .local v13, "hasContent":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "shouldOverrideUrlLoading hasContent "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string/jumbo v2, "locationNormal"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->isStripLandingURLEnable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v13, :cond_6

    .line 294
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getStripLandingURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "realUrl":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 297
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 298
    .local v11, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    if-eqz v11, :cond_6

    .line 299
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "location.href"

    invoke-interface {v11, v3, v2, v4}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    .line 300
    .local v21, "result":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v16

    .line 301
    .local v16, "pageParams":Landroid/os/Bundle;
    const/4 v4, 0x1

    const-string/jumbo v5, "location"

    const-string/jumbo v2, "appId"

    .line 302
    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "publicId"

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "bizScenario"

    .line 303
    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p2

    .line 301
    invoke-static/range {v2 .. v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->landingMonitor(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    if-eqz v21, :cond_6

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "stripLandingURL&Deeplink url "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bingo deeplink in landing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exitPage()Z

    .line 307
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 313
    .end local v3    # "realUrl":Ljava/lang/String;
    .end local v11    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .end local v16    # "pageParams":Landroid/os/Bundle;
    .end local v21    # "result":Z
    :cond_6
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v2, :cond_7

    .line 315
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getWebViewConfig()Landroid/os/Bundle;

    move-result-object v9

    .line 316
    .local v9, "config":Landroid/os/Bundle;
    const-string/jumbo v2, "needVerifyUrl"

    const/4 v4, 0x1

    invoke-static {v9, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 317
    const-string/jumbo v2, "needVerifyUrl"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v9    # "config":Landroid/os/Bundle;
    :cond_7
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v15

    .line 325
    .local v15, "list":Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    if-nez v15, :cond_9

    const/4 v14, 0x0

    .line 326
    .local v14, "historySize":I
    :goto_2
    const-string/jumbo v2, "historySize"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v22

    .line 328
    .local v22, "startbundle":Landroid/os/Bundle;
    if-eqz v22, :cond_8

    .line 329
    const-string/jumbo v2, "appId"

    const-string/jumbo v4, "appId"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string/jumbo v2, "preSSOLogin"

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 331
    .local v18, "preSSOLogin":Ljava/lang/String;
    const-string/jumbo v2, "preSSOLoginBindingPage"

    .line 332
    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 333
    .local v19, "preSSOLoginBindingPage":Ljava/lang/String;
    const-string/jumbo v2, "preSSOLoginUrl"

    .line 334
    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 335
    .local v20, "preSSOLoginUrl":Ljava/lang/String;
    const-string/jumbo v2, "ps"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string/jumbo v2, "psb"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string/jumbo v2, "psu"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .end local v18    # "preSSOLogin":Ljava/lang/String;
    .end local v19    # "preSSOLoginBindingPage":Ljava/lang/String;
    .end local v20    # "preSSOLoginUrl":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v4, "h5PageShouldLoadUrl"

    move-object/from16 v0, v17

    invoke-virtual {v2, v4, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->checkingUrl:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v12, 0x1

    .line 344
    .local v12, "handleBySelf":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "shouldOverrideUrlLoading "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    if-nez v12, :cond_2

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mH5ContentProvider:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    if-eqz v2, :cond_2

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->mH5ContentProvider:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->reSetLocal()V

    goto/16 :goto_0

    .line 319
    .end local v12    # "handleBySelf":Z
    .end local v14    # "historySize":I
    .end local v15    # "list":Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .end local v22    # "startbundle":Landroid/os/Bundle;
    :catch_0
    move-exception v10

    .line 320
    .local v10, "e":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "exception detail"

    invoke-static {v2, v4, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 325
    .end local v10    # "e":Ljava/lang/Throwable;
    .restart local v15    # "list":Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    :cond_9
    invoke-interface {v15}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getSize()I

    move-result v14

    goto/16 :goto_2

    .line 342
    .restart local v14    # "historySize":I
    .restart local v22    # "startbundle":Landroid/os/Bundle;
    :cond_a
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public shouldOverrideUrlLoadingForUC(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "nonStandardType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 753
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "shouldOverrideUrlLoading nonStandardType\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v3, :cond_1

    .line 765
    :cond_0
    :goto_0
    return v1

    .line 757
    :cond_1
    if-ne p3, v2, :cond_0

    .line 758
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "appId"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "appId":Ljava/lang/String;
    const-string/jumbo v3, "no"

    const-string/jumbo v4, "h5_shouldOverrideUrlLoading"

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 760
    invoke-static {p2, v0, v3, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->interceptXiaoChengXu(Ljava/lang/String;Ljava/lang/String;Liop;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 761
    goto :goto_0
.end method
