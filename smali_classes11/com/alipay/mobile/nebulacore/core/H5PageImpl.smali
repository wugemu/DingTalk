.class public Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
.super Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;
.source "H5PageImpl.java"

# interfaces
.implements Liop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;
    }
.end annotation


# static fields
.field public static final LOG_NOT_SHOW_LOADINGVIEW:Ljava/lang/String; = "Don\'t show loading view : "

.field public static final LOTTIE_LAUNCH_FILE_PATH:Ljava/lang/String; = "_animation/launch/"

.field public static final LOTTIE_LAUNCH_MANUAL_HIDE:Ljava/lang/String; = "manualHide"

.field public static final LOTTIE_PUSH_WINDOW_FILE_PATH:Ljava/lang/String; = "_animation/pushWindow/"

.field public static final TAG:Ljava/lang/String; = "H5PageImpl"

.field public static sIsLowerDevice:Ljava/lang/Boolean;


# instance fields
.field private H5PAGE_INDEX:I

.field private activity:Landroid/app/Activity;

.field private autoHideLoading:Z

.field private collectJsApiHandler:Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;

.field private downloadListener:Lcom/alipay/mobile/nebula/webview/APDownloadListener;

.field private embedBaseViewListener:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;

.field private embededViewProvider:Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

.field private exited:Z

.field private extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private gestureDetector:Landroid/view/GestureDetector;

.field private h5AvailablePageData:Linv;

.field private h5Bridge:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

.field private h5ChromeClient:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

.field private h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

.field private h5Fragment:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

.field private h5PageData:Lior;

.field private h5PageHandler:Liop$b;

.field private h5ScriptLoader:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

.field private h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

.field private h5TitleBar:Lcom/alipay/mobile/nebula/view/H5TitleView;

.field private h5TitleBarReadyCallback:Liop$c;

.field private h5ViewClient:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

.field private h5ViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

.field private h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field private hasApplyParams:Z

.field private hasContent:Z

.field private hasInitContentFlag:Z

.field private hasSendExitEvent:Z

.field private isEmbedSurfaceViewScene:Z

.field private isEmbedViewScene:Z

.field private isFirstPage:Z

.field private lastTouchTime:J

.field private mH5ErrorHandler:Liop$a;

.field private mLottieLoadingFilePath:Ljava/lang/String;

.field private mLottieLoadingView:Landroid/view/View;

.field private mLottieViewProvider:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

.field private nativeInputContainer:Landroid/view/ViewGroup;

.field private needShowLoading:Z

.field private networkListener:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

.field private pageId:I

.field private pagePerformance:Ljava/lang/String;

.field private rootView:Landroid/view/View;

.field private showingLoading:Z

.field private startParams:Landroid/os/Bundle;

.field private title:Ljava/lang/String;

.field private touchListener:Landroid/view/View$OnTouchListener;

.field private waitCheckDsl:Z

.field private webViewId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sIsLowerDevice:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "h5ViewHolder"    # Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;-><init>()V

    .line 127
    const/4 v8, 0x0

    iput v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    .line 154
    const-string/jumbo v8, "_animation/launch/"

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieLoadingFilePath:Ljava/lang/String;

    .line 155
    const-string/jumbo v8, ""

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->title:Ljava/lang/String;

    .line 161
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->autoHideLoading:Z

    .line 171
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isFirstPage:Z

    .line 172
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hasApplyParams:Z

    .line 180
    new-instance v8, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$1;

    invoke-direct {v8, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->touchListener:Landroid/view/View$OnTouchListener;

    .line 188
    new-instance v8, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;

    invoke-direct {v8, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->downloadListener:Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 205
    .local v4, "startTime":J
    const-string/jumbo v8, "H5PageImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "h5startParamTime currentTimeMillis "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 208
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->setContext(Landroid/content/Context;)V

    .line 209
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isEmbedViewScene:Z

    .line 210
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isEmbedSurfaceViewScene:Z

    .line 211
    new-instance v8, Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-direct {v8, p1}, Lcom/alipay/mobile/h5container/api/H5Context;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    .line 212
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    .line 213
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exited:Z

    .line 214
    new-instance v8, Lior;

    invoke-direct {v8}, Lior;-><init>()V

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    .line 215
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v9, 0x4

    invoke-virtual {v8, v10, v11, v9}, Lior;->b(JI)V

    .line 216
    new-instance v8, Linv;

    invoke-direct {v8}, Linv;-><init>()V

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5AvailablePageData:Linv;

    .line 217
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->lastTouchTime:J

    .line 218
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->showingLoading:Z

    .line 219
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->needShowLoading:Z

    .line 220
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->waitCheckDsl:Z

    .line 221
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hasSendExitEvent:Z

    .line 222
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->extra:Ljava/util/Map;

    .line 224
    sget-boolean v8, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 225
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "hostName":Ljava/lang/String;
    const-string/jumbo v8, "H5PageImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "h5 page host in activity "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .end local v3    # "hostName":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 231
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    if-nez v8, :cond_1

    .line 233
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    if-nez v8, :cond_2

    .line 241
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 243
    :cond_2
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-direct {p0, v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->initPageData(Landroid/os/Bundle;)V

    .line 246
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v9, "H5PageImpl"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parseMagicOptions(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 247
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 248
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/util/H5ParamCheckUtil;->checkParams(Landroid/os/Bundle;)V

    .line 249
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->showStartParams()V

    .line 251
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v9, "hasH5Pkg"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 252
    const-string/jumbo v8, "H5PageImpl"

    const-string/jumbo v9, "setContentBeforeRedirect true"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setContentBeforeRedirect(Z)V

    .line 256
    :cond_3
    new-instance v8, Lcom/alipay/mobile/nebulacore/data/H5MemData;

    invoke-direct {v8}, Lcom/alipay/mobile/nebulacore/data/H5MemData;-><init>()V

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Data:Lioc;

    .line 258
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v9, "bizType"

    const-string/jumbo v10, ""

    invoke-static {v8, v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "bizType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 261
    const-string/jumbo v8, "publicId"

    const-string/jumbo v9, ""

    invoke-static {p2, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 265
    const-string/jumbo v8, "appId"

    invoke-static {p2, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    :cond_5
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 268
    .local v7, "webViewConfig":Landroid/os/Bundle;
    const-string/jumbo v8, "bizType"

    invoke-virtual {v7, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v8, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {v8, p1, p0, v7}, Lcom/alipay/mobile/nebulacore/web/H5WebView;-><init>(Landroid/app/Activity;Liop;Landroid/os/Bundle;)V

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 272
    const-string/jumbo v8, "H5PageImpl"

    const-string/jumbo v9, "h5_create_webview appId={} params={}"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->whetherAllowAccessFromFileURL()Z

    move-result v0

    .line 274
    .local v0, "allowAccessFromFileURL":Z
    const-string/jumbo v8, "H5PageImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "allow webview access from file URL "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v8, :cond_6

    .line 276
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->init(Z)V

    .line 277
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->downloadListener:Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    .line 279
    new-instance v8, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {v8, v9, p0}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Liop;)V

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Bridge:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    .line 281
    new-instance v8, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    invoke-direct {v8, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ChromeClient:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .line 282
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ChromeClient:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    .line 284
    new-instance v8, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-direct {v8, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewClient:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 285
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewClient:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    .line 289
    :cond_6
    new-instance v8, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    invoke-direct {v8, p0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ScriptLoader:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 291
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->initPlugins()V

    .line 294
    iget v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    .line 295
    const-string/jumbo v8, "url"

    invoke-static {p2, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lioq;->a(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    new-instance v9, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$3;

    invoke-direct {v9, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$3;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 324
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->initSession()V

    .line 326
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->applyParams()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 331
    :goto_1
    new-instance v8, Landroid/view/GestureDetector;

    new-instance v9, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$4;

    invoke-direct {v9, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$4;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-direct {v8, p1, v9}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->gestureDetector:Landroid/view/GestureDetector;

    .line 342
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v8, :cond_7

    .line 343
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 347
    :cond_7
    new-instance v8, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;

    invoke-direct {v8, p1, p0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;-><init>(Landroid/content/Context;Liop;)V

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->embededViewProvider:Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    .line 349
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    .line 2474
    sget-boolean v9, Lior;->f:Z

    iput-boolean v9, v8, Lior;->ba:Z

    .line 351
    const-string/jumbo v8, "create_page"

    invoke-static {v8, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5TimeUtil;->timeLog(Ljava/lang/String;J)V

    .line 353
    sget-boolean v8, Lcom/alipay/mobile/nebulacore/Nebula;->isDSL:Z

    if-eqz v8, :cond_8

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v8

    sget-object v9, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v8, v9, :cond_8

    .line 354
    const/4 v8, 0x0

    sput-boolean v8, Lcom/alipay/mobile/nebulacore/Nebula;->isDSL:Z

    .line 355
    const-string/jumbo v8, "showUCFailDialog"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 356
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendPageAbnormalEvent()V

    .line 358
    :cond_8
    return-void

    .line 234
    .end local v0    # "allowAccessFromFileURL":Z
    .end local v1    # "bizType":Ljava/lang/String;
    .end local v7    # "webViewConfig":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 235
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "H5PageImpl"

    const-string/jumbo v9, "startParams getExtras Exception"

    invoke-static {v8, v9, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 327
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "allowAccessFromFileURL":Z
    .restart local v1    # "bizType":Ljava/lang/String;
    .restart local v7    # "webViewConfig":Landroid/os/Bundle;
    :catch_1
    move-exception v6

    .line 328
    .local v6, "t":Ljava/lang/Throwable;
    const-string/jumbo v8, "H5PageImpl"

    invoke-static {v8, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "h5ViewHolder"    # Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 369
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;-><init>()V

    .line 127
    iput v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    .line 154
    const-string/jumbo v5, "_animation/launch/"

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieLoadingFilePath:Ljava/lang/String;

    .line 155
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->title:Ljava/lang/String;

    .line 161
    iput-boolean v10, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->autoHideLoading:Z

    .line 171
    iput-boolean v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isFirstPage:Z

    .line 172
    iput-boolean v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hasApplyParams:Z

    .line 180
    new-instance v5, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$1;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->touchListener:Landroid/view/View$OnTouchListener;

    .line 188
    new-instance v5, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->downloadListener:Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 371
    .local v2, "startTime":J
    const-string/jumbo v5, "H5PageImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "h5startParamTime currentTimeMillis "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 374
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->setContext(Landroid/content/Context;)V

    .line 375
    iput-boolean v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isEmbedViewScene:Z

    .line 376
    iput-boolean v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isEmbedSurfaceViewScene:Z

    .line 377
    new-instance v5, Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-direct {v5, p1}, Lcom/alipay/mobile/h5container/api/H5Context;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    .line 378
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    .line 379
    iput-boolean v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exited:Z

    .line 380
    new-instance v5, Lior;

    invoke-direct {v5}, Lior;-><init>()V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    .line 381
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x4

    invoke-virtual {v5, v6, v7, v8}, Lior;->b(JI)V

    .line 382
    new-instance v5, Linv;

    invoke-direct {v5}, Linv;-><init>()V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5AvailablePageData:Linv;

    .line 383
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->lastTouchTime:J

    .line 384
    iput-boolean v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->showingLoading:Z

    .line 385
    iput-boolean v10, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->needShowLoading:Z

    .line 386
    iput-boolean v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->waitCheckDsl:Z

    .line 387
    iput-boolean v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hasSendExitEvent:Z

    .line 388
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->extra:Ljava/util/Map;

    .line 390
    sget-boolean v5, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 391
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "hostName":Ljava/lang/String;
    const-string/jumbo v5, "H5PageImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "h5 page host in activity "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .end local v1    # "hostName":Ljava/lang/String;
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 396
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v6, "isTinyApp"

    invoke-virtual {v5, v6, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 398
    new-instance v5, Lcom/alipay/mobile/nebulacore/data/H5MemData;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/data/H5MemData;-><init>()V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Data:Lioc;

    .line 401
    const-string/jumbo v0, "tiny_app"

    .line 402
    .local v0, "bizType":Ljava/lang/String;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 403
    .local v4, "webViewConfig":Landroid/os/Bundle;
    const-string/jumbo v5, "bizType"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance v5, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {v5, p1, p0, v4}, Lcom/alipay/mobile/nebulacore/web/H5WebView;-><init>(Landroid/app/Activity;Liop;Landroid/os/Bundle;)V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 406
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v5, :cond_1

    .line 407
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->downloadListener:Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    .line 408
    new-instance v5, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ChromeClient:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .line 409
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ChromeClient:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    .line 410
    new-instance v5, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewClient:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 411
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewClient:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    .line 415
    :cond_1
    iget v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    .line 417
    new-instance v5, Landroid/view/GestureDetector;

    new-instance v6, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$5;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$5;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-direct {v5, p1, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->gestureDetector:Landroid/view/GestureDetector;

    .line 428
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v5, :cond_2

    .line 429
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 432
    :cond_2
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    .line 3474
    sget-boolean v6, Lior;->f:Z

    iput-boolean v6, v5, Lior;->ba:Z

    .line 433
    new-instance v5, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;

    invoke-direct {v5, p1, p0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;-><init>(Landroid/content/Context;Liop;)V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->embededViewProvider:Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    .line 434
    const-string/jumbo v5, "create_page"

    const-string/jumbo v6, "precreate"

    invoke-static {v5, v6, v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5TimeUtil;->timeLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 435
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->gestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Lcom/alipay/mobile/h5container/api/H5Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isCheckDslError()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->checkDslErrorAndExit(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 118
    iget v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->lastTouchTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .param p1, "x1"    # J

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->lastTouchTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;Linx;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    .param p2, "x2"    # Linx;

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendNetworkChangeEvent(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;Linx;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->waitCheckDsl:Z

    return v0
.end method

.method static synthetic access$602(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->waitCheckDsl:Z

    return p1
.end method

.method static synthetic access$700(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->collectJsApiHandler:Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->initTextSizeAsync()V

    return-void
.end method

.method static synthetic access$900(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->showingLoading:Z

    return v0
.end method

.method private checkDslErrorAndExit(Z)V
    .locals 14
    .param p1, "exitTabScene"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 839
    iget-boolean v10, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->waitCheckDsl:Z

    if-eqz v10, :cond_0

    .line 899
    :goto_0
    return-void

    .line 842
    :cond_0
    const-string/jumbo v10, "h5_logNewBlankScreenConfig"

    .line 843
    invoke-static {v10}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 844
    .local v5, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    if-eqz v10, :cond_5

    .line 845
    const-string/jumbo v10, "enable"

    invoke-static {v5, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 846
    .local v2, "enable":Ljava/lang/String;
    const-string/jumbo v10, "appId"

    invoke-static {v5, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 847
    .local v6, "regex":Ljava/lang/String;
    sget-object v10, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->dslJs:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 848
    const-string/jumbo v10, "script"

    invoke-static {v5, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->dslJs:Ljava/lang/String;

    .line 850
    :cond_1
    const-string/jumbo v10, "testFilter"

    invoke-static {v5, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v10, "testFilter"

    .line 851
    invoke-static {v5, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 852
    .local v4, "filterTime":I
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 853
    .local v0, "currentTime":J
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    .line 6306
    iget-wide v8, v10, Lior;->j:J

    .line 854
    .local v8, "startTime":J
    sub-long v10, v0, v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    int-to-long v12, v4

    cmp-long v10, v10, v12

    if-gez v10, :cond_3

    move v3, v7

    .line 855
    .local v3, "filter":Z
    :goto_2
    const-string/jumbo v10, "H5PageImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "check dsl currentTime : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " startTime : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " filterTime : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " filter : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    .line 6870
    iget-object v10, v10, Lior;->ak:Ljava/lang/String;

    .line 858
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string/jumbo v10, "yes"

    .line 859
    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    .line 7870
    iget-object v10, v10, Lior;->ak:Ljava/lang/String;

    .line 860
    invoke-static {v6, v10}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isAppIdMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez v3, :cond_4

    .line 861
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->dslJs:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 863
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->waitCheckDsl:Z

    .line 864
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v7

    sget-object v10, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->dslJs:Ljava/lang/String;

    new-instance v11, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$8;

    invoke-direct {v11, p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$8;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Z)V

    invoke-virtual {v7, v10, v11}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 884
    new-instance v7, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$9;

    invoke-direct {v7, p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$9;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Z)V

    const-wide/16 v10, 0xc8

    invoke-static {v7, v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .end local v0    # "currentTime":J
    .end local v3    # "filter":Z
    .end local v4    # "filterTime":I
    .end local v8    # "startTime":J
    :cond_2
    move v4, v7

    .line 851
    goto/16 :goto_1

    .line 854
    .restart local v0    # "currentTime":J
    .restart local v4    # "filterTime":I
    .restart local v8    # "startTime":J
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 894
    .restart local v3    # "filter":Z
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->doExitPage(Z)Z

    goto/16 :goto_0

    .line 897
    .end local v0    # "currentTime":J
    .end local v2    # "enable":Ljava/lang/String;
    .end local v3    # "filter":Z
    .end local v4    # "filterTime":I
    .end local v6    # "regex":Ljava/lang/String;
    .end local v8    # "startTime":J
    :cond_5
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->doExitPage(Z)Z

    goto/16 :goto_0
.end method

.method private collectJsApiAndExit(Z)V
    .locals 4
    .param p1, "exitTabScene"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 917
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->collectJsApiHandler:Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;

    if-eqz v0, :cond_1

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Bridge:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    if-eqz v0, :cond_0

    .line 921
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->collectJsApiHandler:Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;

    .line 922
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->collectJsApiHandler:Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;

    iput-boolean p1, v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->exitTabScene:Z

    .line 923
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->collectJsApiHandler:Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->waiting:Z

    .line 924
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Bridge:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    const-string/jumbo v1, "collectDestroyJsApi"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->collectJsApiHandler:Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 926
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$10;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$10;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Z)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private enableLoadUrlWithWebView()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1639
    const-string/jumbo v1, "h5_enableLoadUrlWithWebView"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1640
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1641
    const/4 v1, 0x0

    .line 1643
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static enableNebulaAppLoadingView()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1566
    const-string/jumbo v4, "h5_enableNebulaAppLoadingView"

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 1567
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1568
    const-string/jumbo v4, "enable"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1569
    .local v0, "enable":Ljava/lang/String;
    const-string/jumbo v4, "no"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1581
    .end local v0    # "enable":Ljava/lang/String;
    :goto_0
    return v3

    .line 1572
    .restart local v0    # "enable":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "yes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1573
    const-string/jumbo v4, "supportLower"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1574
    .local v2, "supportLower":Ljava/lang/String;
    const-string/jumbo v4, "no"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1576
    const-string/jumbo v4, "H5PageImpl"

    const-string/jumbo v5, "Don\'t show loading view : device not support"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1581
    .end local v0    # "enable":Ljava/lang/String;
    .end local v2    # "supportLower":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private getLoadingConfigObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 1445
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v9, "lottieAnimation"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 1446
    .local v2, "lottieConfig":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1447
    :cond_0
    const-string/jumbo v8, "H5PageImpl"

    const-string/jumbo v9, "Don\'t show loading view : lack lottie config"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 1472
    :cond_1
    :goto_0
    return-object v1

    .line 1451
    :cond_2
    const/4 v1, 0x0

    .line 1452
    .local v1, "loadingConfig":Lcom/alibaba/fastjson/JSONObject;
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v9, "fromType"

    const-string/jumbo v10, ""

    invoke-static {v8, v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1453
    .local v0, "fromTypeStr":Ljava/lang/String;
    const-string/jumbo v8, "startApp"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1454
    const-string/jumbo v8, "launchConfig"

    invoke-static {v2, v8, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 1460
    :cond_3
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 1461
    const-string/jumbo v8, "matchUrl"

    const-string/jumbo v9, ""

    invoke-static {v1, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1462
    .local v6, "urlPattern":Ljava/lang/String;
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1463
    .local v4, "pattern":Ljava/util/regex/Pattern;
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v9, "url"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1464
    .local v5, "url":Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 1465
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1466
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1467
    const-string/jumbo v8, "H5PageImpl"

    const-string/jumbo v9, "Don\'t show loading view : not match url"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 1468
    goto :goto_0

    .line 1455
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "urlPattern":Ljava/lang/String;
    :cond_4
    const-string/jumbo v8, "pushWindow"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1456
    const-string/jumbo v8, "_animation/pushWindow/"

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieLoadingFilePath:Ljava/lang/String;

    .line 1457
    const-string/jumbo v8, "pushWindowConfig"

    invoke-static {v2, v8, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    goto :goto_1
.end method

.method private initNetWorkListen(Linx;)V
    .locals 2
    .param p1, "bridge"    # Linx;

    .prologue
    .line 535
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$7;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$7;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Linx;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->networkListener:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    .line 549
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->networkListener:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->addListener(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;)V

    .line 550
    return-void
.end method

.method private initPageData(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "param"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 567
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    const-string/jumbo v2, "appId"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lior;->g(Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    const-string/jumbo v2, "publicId"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3883
    const-string/jumbo v3, "H5PageData"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setPublicId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3884
    iput-object v2, v1, Lior;->al:Ljava/lang/String;

    .line 569
    const-string/jumbo v1, "appVersion"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "appVersion":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    .line 3892
    const-string/jumbo v2, "H5PageData"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setAppVersion: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3893
    iput-object v0, v1, Lior;->am:Ljava/lang/String;

    .line 571
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    const-string/jumbo v2, "openAppId"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3973
    const-string/jumbo v3, "H5PageData"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setOpenAppId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3974
    iput-object v2, v1, Lior;->au:Ljava/lang/String;

    .line 572
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    const-string/jumbo v2, "shopId"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3982
    const-string/jumbo v3, "H5PageData"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setShopId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3983
    iput-object v2, v1, Lior;->av:Ljava/lang/String;

    .line 573
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    const-string/jumbo v2, "customParams"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4910
    const-string/jumbo v3, "H5PageData"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setCustomParams: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4911
    iput-object v2, v1, Lior;->ao:Ljava/lang/String;

    .line 574
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    const-string/jumbo v2, "release_type"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4955
    const-string/jumbo v3, "H5PageData"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setReleaseType: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4956
    iput-object v2, v1, Lior;->as:Ljava/lang/String;

    .line 575
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    const-string/jumbo v2, "sessionId"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5135
    const-string/jumbo v3, "H5PageData"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setSessionId "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5136
    iput-object v2, v1, Lior;->an:Ljava/lang/String;

    .line 577
    const-string/jumbo v1, "isTinyApp"

    invoke-static {p1, v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    const-string/jumbo v2, "YES"

    invoke-virtual {v1, v2}, Lior;->j(Ljava/lang/String;)V

    .line 583
    :goto_0
    const-string/jumbo v1, "isPrerender"

    invoke-static {p1, v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lior;->c(I)V

    .line 588
    :goto_1
    return-void

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    const-string/jumbo v2, "NO"

    invoke-virtual {v1, v2}, Lior;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 586
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    invoke-virtual {v1, v6}, Lior;->c(I)V

    goto :goto_1
.end method

.method private initPlugins()V
    .locals 9

    .prologue
    .line 1077
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1079
    .local v6, "timeMillis":J
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Liow;

    move-result-object v4

    .line 1080
    .local v4, "pm":Liow;
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1081
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1082
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1083
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1084
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1085
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1086
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1087
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1088
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1089
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1090
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1092
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWallet()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1094
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5ApkLoadPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5ApkLoadPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1097
    :cond_0
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5PermissionPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5PermissionPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1098
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v5, :cond_2

    .line 1099
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getH5NumInputKeyboard()Liov;

    move-result-object v3

    .line 1100
    .local v3, "numInputPlugin":Liov;
    if-eqz v3, :cond_1

    .line 1101
    invoke-interface {v4, v3}, Liow;->register(Liov;)Z

    .line 1103
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getH5NativeInput()Liov;

    move-result-object v2

    .line 1104
    .local v2, "nativeInputPlugin":Liov;
    if-eqz v2, :cond_2

    .line 1105
    invoke-interface {v4, v2}, Liow;->register(Liov;)Z

    .line 1109
    .end local v2    # "nativeInputPlugin":Liov;
    .end local v3    # "numInputPlugin":Liov;
    :cond_2
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5ScreenBrightnessPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5ScreenBrightnessPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1111
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    instance-of v5, v5, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-nez v5, :cond_3

    .line 1113
    new-instance v5, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1116
    :cond_3
    new-instance v5, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1118
    new-instance v5, Lcom/alipay/mobile/nebulacore/wallet/H5AutoClickPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/wallet/H5AutoClickPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1119
    new-instance v5, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;-><init>(Liop;)V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1120
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;-><init>(Liop;)V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1121
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1122
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1123
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1125
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWallet()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1127
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1130
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    move-result-object v0

    .line 1131
    .local v0, "em":Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;
    const-string/jumbo v5, "page"

    invoke-virtual {v0, v5, v4}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->createPlugin(Ljava/lang/String;Liow;)Liov;

    move-result-object v1

    .line 1132
    .local v1, "extPagePlugin":Liov;
    if-eqz v1, :cond_5

    .line 1133
    invoke-interface {v4, v1}, Liow;->register(Liov;)Z

    .line 1136
    :cond_5
    sget-boolean v5, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v5, :cond_6

    .line 1137
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 1140
    :cond_6
    const-string/jumbo v5, "create_page"

    const-string/jumbo v8, "init_plugin"

    invoke-static {v5, v8, v6, v7}, Lcom/alipay/mobile/nebulacore/util/H5TimeUtil;->timeLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1142
    return-void
.end method

.method private initSession()V
    .locals 7

    .prologue
    .line 1145
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v5, "sessionId"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1146
    .local v3, "sessionId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v2

    .line 1147
    .local v2, "service":Lcom/alipay/mobile/nebulacore/api/NebulaService;
    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSession(Ljava/lang/String;)Lipc;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 1149
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v4, :cond_0

    .line 1150
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getScenario()Lipa;

    move-result-object v0

    .line 1151
    .local v0, "h5Scenario":Lipa;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v5, "bizScenario"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1153
    .local v1, "scenarioName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v0, :cond_0

    .line 1154
    const-string/jumbo v4, "H5PageImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "set session scenario "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5ScenarioImpl;

    .end local v0    # "h5Scenario":Lipa;
    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5ScenarioImpl;-><init>(Ljava/lang/String;)V

    .line 1156
    .restart local v0    # "h5Scenario":Lipa;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->setScenario(Lipa;)V

    .line 1160
    .end local v0    # "h5Scenario":Lipa;
    .end local v1    # "scenarioName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initTextSize()V
    .locals 7

    .prologue
    .line 1320
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v5, :cond_0

    .line 1321
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getScenario()Lipa;

    move-result-object v1

    .line 1322
    .local v1, "h5Scenario":Lipa;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lipa;->getData()Lioc;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1337
    .end local v1    # "h5Scenario":Lipa;
    :cond_0
    :goto_0
    return-void

    .line 1325
    .restart local v1    # "h5Scenario":Lipa;
    :cond_1
    invoke-interface {v1}, Lipa;->getData()Lioc;

    move-result-object v2

    .line 1326
    .local v2, "scenarioData":Lioc;
    const-string/jumbo v5, "h5_font_size"

    invoke-interface {v2, v5}, Lioc;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1327
    .local v4, "sizeStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1331
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1332
    .local v3, "size":I
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setTextSize(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1333
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 1334
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "H5PageImpl"

    const-string/jumbo v6, "failed to parse scenario font size."

    invoke-static {v5, v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private initTextSizeAsync()V
    .locals 7

    .prologue
    .line 1342
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v5, :cond_0

    .line 1343
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getScenario()Lipa;

    move-result-object v1

    .line 1344
    .local v1, "h5Scenario":Lipa;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lipa;->getData()Lioc;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1365
    .end local v1    # "h5Scenario":Lipa;
    :cond_0
    :goto_0
    return-void

    .line 1347
    .restart local v1    # "h5Scenario":Lipa;
    :cond_1
    invoke-interface {v1}, Lipa;->getData()Lioc;

    move-result-object v2

    .line 1348
    .local v2, "scenarioData":Lioc;
    const-string/jumbo v5, "h5_font_size"

    invoke-interface {v2, v5}, Lioc;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1349
    .local v4, "sizeStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1353
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1354
    .local v3, "size":I
    const-string/jumbo v5, "H5PageImpl"

    const-string/jumbo v6, "initTextSizeAsync"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    new-instance v5, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$13;

    invoke-direct {v5, p0, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$13;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;I)V

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1361
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 1362
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "H5PageImpl"

    const-string/jumbo v6, "failed to parse scenario font size."

    invoke-static {v5, v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private isCheckDslError()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 830
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "isTinyApp"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 831
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isCloseCheckDsl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 834
    :cond_0
    return v0
.end method

.method private isCollectDestroyJsApi()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 903
    const-string/jumbo v4, "h5_isCollectDestroyJsApi"

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 904
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    if-eqz v4, :cond_0

    .line 905
    const-string/jumbo v4, "enable"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 906
    .local v0, "enable":Ljava/lang/String;
    const-string/jumbo v4, "appId"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 907
    .local v2, "regex":Ljava/lang/String;
    const-string/jumbo v4, "yes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    .line 8870
    iget-object v4, v4, Lior;->ak:Ljava/lang/String;

    .line 907
    invoke-static {v2, v4}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isAppIdMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 908
    const/4 v3, 0x1

    .line 913
    .end local v0    # "enable":Ljava/lang/String;
    .end local v2    # "regex":Ljava/lang/String;
    :cond_0
    return v3
.end method

.method private loadUrlEvent()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 1170
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1171
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v9, "url"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1172
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1173
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    instance-of v8, v8, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v8, :cond_1

    const-string/jumbo v8, "loadUrlEvent"

    invoke-static {v7, v7, v8}, Lcom/alipay/mobile/nebulacore/Nebula;->enableOpenScheme(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1174
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exitPage()Z

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1178
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerHandleUrlLink(Liop;)V

    .line 1180
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v9, "isTinyApp"

    invoke-static {v8, v9, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1181
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v0

    .line 1182
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    if-eqz v0, :cond_2

    .line 1184
    :try_start_0
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->onLoadUrlEvent()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1193
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->enableLoadUrlWithWebView()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1194
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v9, "appId"

    .line 1195
    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1194
    invoke-static {v7, v8, p0, v11}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->interceptXiaoChengXu(Ljava/lang/String;Ljava/lang/String;Liop;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1196
    invoke-direct {p0, v7}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->loadUrlWithWebView(Ljava/lang/String;)V

    goto :goto_0

    .line 1185
    .restart local v0    # "h5EventHandlerService":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    :catch_0
    move-exception v6

    .line 1186
    .local v6, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v8, "H5PageImpl"

    invoke-static {v8, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1202
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    .end local v6    # "throwable":Ljava/lang/Throwable;
    :cond_3
    invoke-static {v7}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->matchAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1203
    const-class v8, Lcom/alipay/mobile/nebula/provider/H5ABTestProvider;

    .line 1204
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1203
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ABTestProvider;

    .line 1206
    .local v3, "provider":Lcom/alipay/mobile/nebula/provider/H5ABTestProvider;
    if-eqz v3, :cond_4

    .line 1207
    invoke-interface {v3, p0, v7}, Lcom/alipay/mobile/nebula/provider/H5ABTestProvider;->handleURL(Liop;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "replacedUrl":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1208
    move-object v7, v5

    .line 1213
    .end local v3    # "provider":Lcom/alipay/mobile/nebula/provider/H5ABTestProvider;
    .end local v5    # "replacedUrl":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "h5PageLoadUrl"

    .line 1214
    .local v1, "intentName":Ljava/lang/String;
    const-string/jumbo v8, "url"

    invoke-virtual {v2, v8, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    const-string/jumbo v8, "requestPreAuth"

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v10, "requestPreAuth"

    .line 1216
    invoke-static {v9, v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 1215
    invoke-virtual {v2, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v9, "Referer"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1218
    const-string/jumbo v8, "Referer"

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v10, "Referer"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    :cond_5
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v9, "publicId"

    const-string/jumbo v10, ""

    invoke-static {v8, v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1221
    .local v4, "publicId":Ljava/lang/String;
    const-string/jumbo v8, "publicId"

    invoke-virtual {v2, v8, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1224
    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0
.end method

.method private loadUrlWithWebView(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1629
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1630
    const-string/jumbo v0, "H5PageImpl"

    const-string/jumbo v1, "h5 url isEmpty"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    :cond_0
    :goto_0
    return-void

    .line 1633
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private logNetworkUnFinish()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1045
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 1046
    .local v1, "resourceInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebulacore/web/ResourceInfo;>;"
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewClient:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewClient:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->getRequestMap()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1047
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewClient:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->getRequestMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1049
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1073
    :goto_0
    return-void

    .line 1053
    :cond_1
    const-string/jumbo v2, "H5_AL_NETWORK_UNFINISH"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 1054
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lior;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1055
    .local v0, "networkData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$11;

    invoke-direct {v3, p0, v1, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$11;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Ljava/util/Map;Lcom/alipay/mobile/nebula/log/H5LogData;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private sendNetworkChangeEvent(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;Linx;)V
    .locals 5
    .param p1, "nt"    # Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    .param p2, "bridge"    # Linx;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Linx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 554
    const-string/jumbo v3, "H5PageImpl"

    const-string/jumbo v4, "H5_NETWORK_CHANGE"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->TransferNetworkType(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;)Ljava/lang/String;

    move-result-object v2

    .line 556
    .local v2, "networkType":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 557
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "none"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 558
    .local v0, "isConnected":Z
    :goto_0
    const-string/jumbo v3, "isConnected"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string/jumbo v3, "networkType"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    if-eqz p2, :cond_0

    .line 561
    const-string/jumbo v3, "h5NetworkChange"

    const/4 v4, 0x0

    invoke-interface {p2, v3, v1, v4}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 564
    .end local v0    # "isConnected":Z
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "networkType":Ljava/lang/String;
    :cond_0
    return-void

    .line 557
    .restart local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v2    # "networkType":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendPageAbnormalEvent()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lior;

    move-result-object v1

    if-nez v1, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lior;

    move-result-object v1

    .line 3870
    iget-object v1, v1, Lior;->ak:Ljava/lang/String;

    .line 524
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isLogBlankScreen(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 527
    .local v0, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "errorType"

    const-string/jumbo v2, "errorRender"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string/jumbo v1, "errorCode"

    const v2, -0x927c1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string/jumbo v1, "H5PageImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "send page abnormal event : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string/jumbo v1, "h5PageAbnormal"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method

.method private shouldShowLoadingView()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1402
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->enableNebulaAppLoadingView()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1440
    :goto_0
    return v4

    .line 1407
    :cond_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v6, "isNebulaApp"

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 1408
    .local v0, "isNebula":Z
    if-nez v0, :cond_1

    .line 1409
    const-string/jumbo v5, "H5PageImpl"

    const-string/jumbo v6, "Don\'t show loading view : isn\'t nebula app"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1414
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v6, "packageLoadingShown"

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    .line 1415
    .local v3, "packageLoadingShown":Z
    if-eqz v3, :cond_2

    .line 1416
    const-string/jumbo v5, "H5PageImpl"

    const-string/jumbo v6, "Don\'t show loading view : packageLoadingShown"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1421
    :cond_2
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v6, "ucInitLoadingShown"

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    .line 1422
    .local v2, "isUCInitLoadingShown":Z
    if-eqz v2, :cond_3

    .line 1423
    const-string/jumbo v5, "H5PageImpl"

    const-string/jumbo v6, "Don\'t show loading view : UCInitLoadingShown"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1428
    :cond_3
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v6, "isPrerender"

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 1429
    .local v1, "isPreRender":Z
    if-eqz v1, :cond_4

    .line 1430
    const-string/jumbo v5, "H5PageImpl"

    const-string/jumbo v6, "Don\'t show loading view : is pre render page"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    :cond_4
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1435
    const-string/jumbo v5, "NotReachable"

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-virtual {v6}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1436
    const-string/jumbo v5, "H5PageImpl"

    const-string/jumbo v6, "Don\'t show loading view : network is unreachable"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1440
    :cond_5
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method private showStartParams()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "H5 start params:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 594
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 595
    .local v1, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 596
    .local v4, "value":Ljava/lang/Object;
    const-string/jumbo v6, "\n["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ==> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 598
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 599
    .local v3, "paramsStr":Ljava/lang/String;
    const-string/jumbo v5, "H5PageImpl"

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method private showTinyLoading(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "startParams"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1231
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1232
    const-string/jumbo v4, "showLoading"

    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1233
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isFirstPage()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/Nebula;->isTinyWebView(Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1235
    const-string/jumbo v4, "appId"

    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1236
    .local v0, "appId":Ljava/lang/String;
    const-string/jumbo v4, "h5_show_tiny_loading"

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1237
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 1238
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "all"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1239
    :cond_0
    const-string/jumbo v4, "H5PageImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " not show TinyLoading"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1241
    .restart local v0    # "appId":Ljava/lang/String;
    .restart local v1    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1242
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "isTinyApp"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    const-string/jumbo v4, "showLoading"

    invoke-virtual {p0, v4, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method

.method private useNewSearchPageRemove()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 646
    const-string/jumbo v1, "h5_useNewSearchPageRemove"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 648
    const/4 v1, 0x0

    .line 650
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private whetherAllowAccessFromFileURL()Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 607
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v10, "url"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 608
    .local v7, "urlStr":Ljava/lang/String;
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 609
    .local v6, "uri":Landroid/net/Uri;
    if-nez v6, :cond_1

    .line 640
    :cond_0
    :goto_0
    return v8

    .line 613
    :cond_1
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 614
    .local v4, "scheme":Ljava/lang/String;
    const-string/jumbo v9, "file"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 617
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, "path":Ljava/lang/String;
    const-string/jumbo v9, "H5PageImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "uri path : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, ".."

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "\\"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "%"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 622
    const-string/jumbo v9, "/android_asset"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "/android_res"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 623
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 625
    :cond_3
    const-class v9, Lcom/alipay/mobile/nebula/provider/H5AllowFileAccessProvider;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AllowFileAccessProvider;

    .line 626
    .local v1, "fileAccessProvider":Lcom/alipay/mobile/nebula/provider/H5AllowFileAccessProvider;
    if-eqz v1, :cond_4

    .line 627
    invoke-interface {v1, v7}, Lcom/alipay/mobile/nebula/provider/H5AllowFileAccessProvider;->allowFileAccess(Ljava/lang/String;)Z

    move-result v8

    goto :goto_0

    .line 630
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 631
    .local v2, "fileDir":Ljava/lang/String;
    const-string/jumbo v9, "H5PageImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "fileDir : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 635
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "checkPath":Ljava/lang/String;
    const-string/jumbo v9, "H5PageImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "checkPath : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->enableAllowFileAccess(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto/16 :goto_0

    .line 638
    .end local v0    # "checkPath":Ljava/lang/String;
    .end local v2    # "fileDir":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 639
    .local v5, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v9, "H5PageImpl"

    invoke-static {v9, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public applyParams()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x0

    const/high16 v11, -0x1000000

    const/4 v9, 0x1

    .line 1251
    sget-boolean v7, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v8, "ifCreatePage"

    invoke-static {v7, v8, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    .line 1254
    :cond_0
    const-string/jumbo v7, "H5PageImpl"

    const-string/jumbo v8, "very important step applyParams!!!!!"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    iget-boolean v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hasApplyParams:Z

    if-eqz v7, :cond_1

    .line 1256
    const-string/jumbo v7, "H5PageImpl"

    const-string/jumbo v8, "applyParams only invoke once"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    :goto_0
    return-void

    .line 1259
    :cond_1
    iput-boolean v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hasApplyParams:Z

    .line 1260
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v7, p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->addPage(Liop;)Z

    .line 1262
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getPages()Ljava/util/Stack;

    move-result-object v1

    .line 1263
    .local v1, "h5Pages":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v7

    if-ne v7, v9, :cond_2

    .line 1264
    const-string/jumbo v7, "H5PageImpl"

    const-string/jumbo v8, " is First Page"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    iput-boolean v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isFirstPage:Z

    .line 1268
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Linx;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->initNetWorkListen(Linx;)V

    .line 1271
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewClient:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->setWebProvider(Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;)V

    .line 1273
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->loadUrlEvent()V

    .line 1276
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-direct {p0, v7}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->showTinyLoading(Landroid/os/Bundle;)V

    .line 1278
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1279
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1280
    .local v3, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1281
    .local v2, "intentName":Ljava/lang/String;
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1282
    .local v5, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "url"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1283
    const-string/jumbo v8, "H5PageImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " already sendEvent use loadUrlEvent"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1285
    :cond_4
    const-string/jumbo v8, "showLoading"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1286
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-static {v8, v3, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v6

    .line 1287
    .local v6, "value":Z
    if-eqz v6, :cond_5

    .line 1288
    const-string/jumbo v2, "showLoading"

    .line 1298
    .end local v6    # "value":Z
    :cond_5
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1299
    invoke-virtual {p0, v2, v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1

    .line 1290
    :cond_6
    const-string/jumbo v8, "backgroundColor"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1291
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-static {v8, v3, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v0

    .line 1293
    .local v0, "color":I
    or-int/2addr v0, v11

    .line 1294
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v3, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    const-string/jumbo v2, "h5PageBackground"

    goto :goto_2

    .line 1302
    .end local v0    # "color":I
    .end local v2    # "intentName":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_7
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    if-eqz v7, :cond_8

    .line 1303
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v8, "requestPreAuth"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1305
    :cond_8
    const-string/jumbo v7, "no"

    const-string/jumbo v8, "h5_initTextSizeAsync"

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1306
    const-string/jumbo v7, "URGENT"

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v7

    new-instance v8, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$12;

    invoke-direct {v8, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$12;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1316
    :goto_3
    const-string/jumbo v7, "H5PageImpl"

    const-string/jumbo v8, "H5pageImpl applyParam"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1313
    :cond_9
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->initTextSize()V

    goto :goto_3
.end method

.method public applyParamsIfNeed()V
    .locals 0

    .prologue
    .line 1816
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->applyParams()V

    .line 1817
    return-void
.end method

.method public checkIfShowLoadingView()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1502
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->shouldShowLoadingView()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1563
    :cond_0
    :goto_0
    return-void

    .line 1504
    :cond_1
    iget-object v12, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieViewProvider:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    if-nez v12, :cond_2

    .line 1505
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v12

    const-class v13, Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    iput-object v12, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieViewProvider:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    .line 1506
    iget-object v12, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieViewProvider:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    if-eqz v12, :cond_2

    .line 1507
    iget-object v12, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieViewProvider:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    iget-object v13, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    invoke-interface {v12, v13}, Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;->getLottieView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieLoadingView:Landroid/view/View;

    .line 1512
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getLoadingConfigObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 1513
    .local v6, "loadingConfig":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1514
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setLoadingConfig(Lcom/alibaba/fastjson/JSONObject;)V

    .line 1517
    iget-object v12, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v12, :cond_0

    .line 1518
    iget-object v12, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v12}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    .line 1519
    .local v2, "h5ContentProvider":Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;
    if-eqz v2, :cond_0

    .line 1520
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieLoadingFilePath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "loading.json"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getLocalResource(Ljava/lang/String;)[B

    move-result-object v5

    .line 1521
    .local v5, "jsonBytes":[B
    if-eqz v5, :cond_0

    array-length v12, v5

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Fragment:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    if-eqz v12, :cond_0

    .line 1522
    iget-object v12, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieViewProvider:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    if-eqz v12, :cond_3

    .line 1523
    iget-object v12, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieViewProvider:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    iget-object v13, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieLoadingView:Landroid/view/View;

    invoke-interface {v12, v13, v5}, Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;->setMainJson(Landroid/view/View;[B)V

    .line 1527
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieLoadingFilePath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "images"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getLottieAnimationImgsCount(Ljava/lang/String;)I

    move-result v7

    .line 1528
    .local v7, "loadingImgCount":I
    const-string/jumbo v12, "H5PageImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "loading img count "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1530
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_5

    .line 1531
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieLoadingFilePath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "images/img_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ".png"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1532
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v2, v9}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getLocalResource(Ljava/lang/String;)[B

    move-result-object v0

    .line 1533
    .local v0, "bytes":[B
    if-eqz v0, :cond_4

    array-length v12, v0

    if-lez v12, :cond_4

    .line 1534
    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1537
    .end local v0    # "bytes":[B
    .end local v9    # "name":Ljava/lang/String;
    :cond_5
    iget-object v12, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieViewProvider:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    if-eqz v12, :cond_6

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 1538
    iget-object v12, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieViewProvider:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    iget-object v13, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieLoadingView:Landroid/view/View;

    invoke-interface {v12, v13, v8}, Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;->setImgs(Landroid/view/View;Ljava/util/Map;)V

    .line 1543
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->showLoadingView()V

    .line 1544
    new-instance v10, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$14;

    invoke-direct {v10, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$14;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 1557
    .local v10, "task":Ljava/lang/Runnable;
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v3, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1558
    .local v3, "handler":Landroid/os/Handler;
    iget-boolean v12, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->autoHideLoading:Z

    if-eqz v12, :cond_7

    const/16 v11, 0xbb8

    .line 1559
    .local v11, "time":I
    :goto_2
    int-to-long v12, v11

    invoke-virtual {v3, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1560
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v10    # "task":Ljava/lang/Runnable;
    .end local v11    # "time":I
    :catch_0
    move-exception v1

    .line 1561
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "H5PageImpl"

    const-string/jumbo v13, "play lottie loading animation failed"

    invoke-static {v12, v13, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1558
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v3    # "handler":Landroid/os/Handler;
    .restart local v10    # "task":Ljava/lang/Runnable;
    :cond_7
    const/16 v11, 0x2710

    goto :goto_2
.end method

.method public doExitPage(Z)Z
    .locals 12
    .param p1, "exitTabScene"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 952
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageHandler:Liop$b;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageHandler:Liop$b;

    invoke-interface {v7}, Liop$b;->shouldExit()Z

    move-result v7

    if-nez v7, :cond_0

    .line 953
    const-string/jumbo v7, "H5PageImpl"

    const-string/jumbo v8, "page exit intercepted by host!"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :goto_0
    return v9

    .line 957
    :cond_0
    iget-boolean v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exited:Z

    if-eqz v7, :cond_1

    .line 958
    const-string/jumbo v7, "H5PageImpl"

    const-string/jumbo v8, "page already exited!"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 961
    :cond_1
    iput-boolean v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exited:Z

    .line 963
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->logNetworkUnFinish()V

    .line 975
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Bridge:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    if-eqz v7, :cond_2

    .line 976
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendExitEvent()V

    .line 982
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v7

    const-class v10, Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    .line 983
    .local v4, "h5SharePanelProvider":Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;
    if-eqz v4, :cond_3

    .line 984
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-interface {v4, v7}, Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;->removeMenuList(I)V

    .line 987
    :cond_3
    const-class v7, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;

    .line 988
    .local v6, "provider":Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;
    if-eqz v6, :cond_4

    .line 989
    invoke-interface {v6, p0}, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;->clearPreRequest(Liop;)V

    .line 992
    :cond_4
    const-string/jumbo v7, "H5SharePanelProviderImp"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "h5page quit , hashCode = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    iget v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    .line 994
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v10, "url"

    invoke-static {v7, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lioq;->b(Ljava/lang/String;)V

    .line 995
    const-string/jumbo v7, "H5PageImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "H5PAGE_INDEX exit "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const-string/jumbo v7, "H5PageImpl"

    const-string/jumbo v10, "exitPage"

    invoke-static {v7, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const-string/jumbo v7, "h5PageClosed"

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v10}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 999
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v7, :cond_5

    .line 1004
    :try_start_0
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v7

    const/4 v10, 0x0

    invoke-interface {v7, v10}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setJavaScriptEnabled(Z)V

    .line 1005
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v10, "input_method"

    .line 1006
    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 1007
    .local v5, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    .end local v5    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    if-eqz v7, :cond_8

    .line 1014
    const/4 v1, 0x1

    .line 1015
    .local v1, "finish":Z
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    instance-of v7, v7, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Fragment:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    if-eqz v7, :cond_7

    .line 1018
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lipc;

    move-result-object v3

    .line 1019
    .local v3, "h5Session":Lipc;
    if-eqz v3, :cond_6

    .line 1020
    invoke-interface {v3}, Lipc;->getData()Lioc;

    move-result-object v2

    .line 1021
    .local v2, "h5Data":Lioc;
    const-string/jumbo v7, "h5_page_resume"

    const-string/jumbo v10, "h5_page_resume"

    invoke-interface {v2, v7, v10}, Lioc;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    .end local v2    # "h5Data":Lioc;
    :cond_6
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    check-cast v7, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v7

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Fragment:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 1025
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v7, v10, v11, p1}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->removeFragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;Landroid/os/Bundle;Z)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-nez v7, :cond_9

    move v1, v8

    .line 1036
    .end local v3    # "h5Session":Lipc;
    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    instance-of v7, v7, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v7, :cond_8

    const-string/jumbo v7, "H5Activity"

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "createPageSence"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1037
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 1040
    .end local v1    # "finish":Z
    :cond_8
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v7, p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->removePage(Liop;)Z

    move-result v9

    goto/16 :goto_0

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "H5PageImpl"

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "finish":Z
    .restart local v3    # "h5Session":Lipc;
    :cond_9
    move v1, v9

    .line 1025
    goto :goto_2

    .line 1026
    .end local v3    # "h5Session":Lipc;
    :catch_1
    move-exception v0

    .line 1029
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "H5PageImpl"

    const-string/jumbo v8, "exception detail"

    invoke-static {v7, v8, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public execJavaScript4EmbedView(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsCallback"    # Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_0

    .line 1649
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->execJavaScript4EmbedView(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V

    .line 1651
    :cond_0
    return-void
.end method

.method public exitPage()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 781
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v5

    const-class v6, Lcom/alipay/mobile/nebula/provider/H5PageHandlerProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5PageHandlerProvider;

    .line 782
    .local v0, "h5PageHandlerProvider":Lcom/alipay/mobile/nebula/provider/H5PageHandlerProvider;
    if-eqz v0, :cond_0

    .line 783
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    invoke-interface {v0, p0, v5}, Lcom/alipay/mobile/nebula/provider/H5PageHandlerProvider;->handlerPageExit(Liop;Landroid/app/Activity;)Z

    move-result v1

    .line 784
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 785
    const-string/jumbo v5, "H5PageImpl"

    const-string/jumbo v6, "exitPage handler by h5PageHandlerProvider"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    .end local v0    # "h5PageHandlerProvider":Lcom/alipay/mobile/nebula/provider/H5PageHandlerProvider;
    .end local v1    # "result":Z
    :goto_0
    return v3

    .line 790
    .restart local v0    # "h5PageHandlerProvider":Lcom/alipay/mobile/nebula/provider/H5PageHandlerProvider;
    :cond_0
    const-string/jumbo v5, "H5Activity"

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "createPageSence"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    invoke-static {p0, v5}, Lcom/alipay/mobile/nebulacore/Nebula;->needPageKeepAlive(Liop;Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 791
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebulacore/Nebula;->doKeepAlive(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 806
    .end local v0    # "h5PageHandlerProvider":Lcom/alipay/mobile/nebula/provider/H5PageHandlerProvider;
    :catch_0
    move-exception v2

    .line 807
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v3, "H5PageImpl"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v4

    .line 809
    goto :goto_0

    .line 795
    .end local v2    # "throwable":Ljava/lang/Throwable;
    .restart local v0    # "h5PageHandlerProvider":Lcom/alipay/mobile/nebula/provider/H5PageHandlerProvider;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isCollectDestroyJsApi()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 796
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->collectJsApiAndExit(Z)V

    move v3, v4

    .line 797
    goto :goto_0

    .line 799
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isCheckDslError()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 800
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->checkDslErrorAndExit(Z)V

    move v3, v4

    .line 801
    goto :goto_0

    .line 803
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->doExitPage(Z)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_0
.end method

.method public exitTabPage()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 815
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isCollectDestroyJsApi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->collectJsApiAndExit(Z)V

    .line 823
    :goto_0
    return v0

    .line 819
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isCheckDslError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 820
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->checkDslErrorAndExit(Z)V

    goto :goto_0

    .line 823
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->doExitPage(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public getAPWebViewClient()Lcom/alipay/mobile/nebula/webview/APWebViewClient;
    .locals 1

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewClient:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    return-object v0
.end method

.method public getAutoHideLoading()Z
    .locals 1

    .prologue
    .line 1925
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->autoHideLoading:Z

    return v0
.end method

.method public getAvailablePageData()Linv;
    .locals 1

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5AvailablePageData:Linv;

    return-object v0
.end method

.method public getBridge()Linx;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Bridge:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_0

    .line 1598
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v0

    .line 1600
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Lcom/alipay/mobile/h5container/api/H5Context;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    return-object v0
.end method

.method public getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    .locals 1

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->embededViewProvider:Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->extra:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getH5Fragment()Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .locals 1

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Fragment:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    return-object v0
.end method

.method public getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;
    .locals 1

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;
    .locals 1

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5TitleBar:Lcom/alipay/mobile/nebula/view/H5TitleView;

    return-object v0
.end method

.method public getLastTouch()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1688
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->lastTouchTime:J

    return-wide v0
.end method

.method public getNewEmbedViewRoot(Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;)Landroid/view/View;
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->nativeInputContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1841
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->nativeInputContainer:Landroid/view/ViewGroup;

    .line 1844
    :goto_0
    return-object v0

    .line 1843
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->embedBaseViewListener:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;

    .line 1844
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageData()Lior;
    .locals 1

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    return-object v0
.end method

.method public getPageId()I
    .locals 1

    .prologue
    .line 1745
    iget v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->pageId:I

    return v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPerformance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->pagePerformance:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewClient:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewClient:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    .line 741
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public getScriptLoader()Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ScriptLoader:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    return-object v0
.end method

.method public getSession()Lipc;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 720
    const-string/jumbo v1, "h5_ShareUrlConfig"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "config":Ljava/lang/String;
    const-string/jumbo v1, "NEW"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 731
    :goto_0
    return-object v1

    .line 725
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0

    .line 728
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewClient:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    if-eqz v1, :cond_2

    .line 729
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewClient:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 731
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 753
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v1, :cond_1

    .line 754
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->title:Ljava/lang/String;

    .line 758
    .local v0, "currentTitle":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 754
    .end local v0    # "currentTitle":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 756
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->title:Ljava/lang/String;

    .restart local v0    # "currentTitle":Ljava/lang/String;
    goto :goto_0
.end method

.method public getTitleBarReadyCallBack()Liop$c;
    .locals 1

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5TitleBarReadyCallback:Liop$c;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewClient:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewClient:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    .line 714
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 1683
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v0, :cond_0

    .line 1871
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1873
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWebChromeClient()Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ChromeClient:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    return-object v0
.end method

.method public bridge synthetic getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    return-object v0
.end method

.method public getWebViewClient()Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewClient:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    return-object v0
.end method

.method public getWebViewId()I
    .locals 1

    .prologue
    .line 1755
    iget v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->webViewId:I

    return v0
.end method

.method public hasContentBeforeRedirect()Z
    .locals 1

    .prologue
    .line 1850
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hasContent:Z

    return v0
.end method

.method public hideLoadingView()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1385
    const-string/jumbo v1, "H5PageImpl"

    const-string/jumbo v2, "hide web loading view"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->needShowLoading:Z

    .line 1387
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1388
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1389
    .local v0, "webContent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieViewProvider:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieLoadingView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1390
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->showingLoading:Z

    .line 1391
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieLoadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1392
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieViewProvider:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieLoadingView:Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;->stopAnimation(Landroid/view/View;)V

    .line 1393
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    if-eqz v1, :cond_0

    .line 1394
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 9465
    const-string/jumbo v4, "H5PageData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setLottieLoadingAnimEnd : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9466
    iput-wide v2, v1, Lior;->aP:J

    .line 1398
    .end local v0    # "webContent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public ifContainsEmbedSurfaceView()Z
    .locals 1

    .prologue
    .line 1780
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isEmbedSurfaceViewScene:Z

    return v0
.end method

.method public ifContainsEmbedView()Z
    .locals 1

    .prologue
    .line 1770
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isEmbedViewScene:Z

    return v0
.end method

.method public injectPageReady()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1883
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_0

    .line 1884
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    const-string/jumbo v1, "javascript:(function(){window.ALIPAYVIEWAPPEARED=1})();"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 1886
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Bridge:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    if-eqz v0, :cond_1

    .line 1887
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Bridge:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    const-string/jumbo v1, "appearAfterPreRender"

    invoke-virtual {v0, v1, v2, v2}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 1889
    :cond_1
    return-void
.end method

.method public isFirstPage()Z
    .locals 1

    .prologue
    .line 1164
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isFirstPage:Z

    return v0
.end method

.method public isTransparentTitleState()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1810
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v2, "transparentTitle"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1811
    .local v0, "transparentTitle":Ljava/lang/String;
    const-string/jumbo v1, "auto"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "always"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "custom"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1607
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1608
    .local v0, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "baseUrl"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    const-string/jumbo v1, "mimeType"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    const-string/jumbo v1, "encoding"

    invoke-virtual {v0, v1, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    const-string/jumbo v1, "historyUrl"

    invoke-virtual {v0, v1, p5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    const-string/jumbo v1, "h5PageShouldLoadData"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1614
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1618
    invoke-static {p1, p0}, Lcom/alipay/mobile/nebulacore/Nebula;->interceptSchemeForTiny(Ljava/lang/String;Liop;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1619
    const-string/jumbo v1, "H5PageImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "interceptSchemeForTiny "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    :goto_0
    return-void

    .line 1622
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1623
    .local v0, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    const-string/jumbo v1, "h5PageLoadUrl"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1625
    const-string/jumbo v1, "H5PageImpl"

    const-string/jumbo v2, "page loadurl"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInterceptError(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "errorUrl"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 941
    const/4 v0, 0x0

    .line 942
    .local v0, "intercepted":Z
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mH5ErrorHandler:Liop$a;

    if-eqz v1, :cond_0

    .line 943
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mH5ErrorHandler:Liop$a;

    invoke-interface {v1, p1, p2}, Liop$a;->shouldInterceptError(Ljava/lang/String;I)Z

    move-result v0

    .line 944
    if-eqz v0, :cond_0

    .line 945
    const-string/jumbo v1, "H5PageImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "page error intercepted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    :cond_0
    return v0
.end method

.method public onRelease()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 656
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5TitleBar:Lcom/alipay/mobile/nebula/view/H5TitleView;

    instance-of v0, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5TitleBar:Lcom/alipay/mobile/nebula/view/H5TitleView;

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;

    .line 5881
    iget-boolean v0, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->E:Z

    .line 656
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->useNewSearchPageRemove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/search/H5InputCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->removeProvider(Ljava/lang/String;)Z

    .line 659
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/search/H5InputListen;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->removeProvider(Ljava/lang/String;)Z

    .line 662
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->useNewSearchPageRemove()Z

    move-result v0

    if-nez v0, :cond_1

    .line 663
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/search/H5InputCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->removeProvider(Ljava/lang/String;)Z

    .line 664
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/search/H5InputListen;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->removeProvider(Ljava/lang/String;)Z

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewClient:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    if-eqz v0, :cond_2

    .line 669
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewClient:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->onRelease()V

    .line 671
    :cond_2
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewClient:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 672
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ChromeClient:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    if-eqz v0, :cond_3

    .line 673
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ChromeClient:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->onRelease()V

    .line 675
    :cond_3
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ChromeClient:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .line 676
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Bridge:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    if-eqz v0, :cond_4

    .line 677
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Bridge:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->onRelease()V

    .line 679
    :cond_4
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Bridge:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    .line 680
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 681
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    .line 682
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 683
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_5

    .line 684
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    .line 685
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->onRelease()V

    .line 687
    :cond_5
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 688
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    .line 689
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ScriptLoader:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 690
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageHandler:Liop$b;

    .line 691
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->networkListener:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->removeListener(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;)V

    .line 692
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->networkListener:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    .line 693
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->collectJsApiHandler:Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;

    .line 694
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieViewProvider:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    .line 695
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieLoadingView:Landroid/view/View;

    .line 696
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->onRelease()V

    .line 697
    return-void
.end method

.method public pageIsClose()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1864
    const-string/jumbo v0, "H5PageImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pageIsClose "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exited:Z

    return v0
.end method

.method public replace(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1878
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "javascript:location.replace(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->loadUrl(Ljava/lang/String;)V

    .line 1879
    return-void
.end method

.method public scriptbizLoadedAndBridgeLoaded()Z
    .locals 1

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ScriptLoader:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ScriptLoader:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bizLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ScriptLoader:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendExitEvent()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1795
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Bridge:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hasSendExitEvent:Z

    if-eqz v0, :cond_1

    .line 1801
    :cond_0
    :goto_0
    return-void

    .line 1798
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hasSendExitEvent:Z

    .line 1799
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Bridge:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    const-string/jumbo v1, "beforeunload"

    invoke-virtual {v0, v1, v2, v2}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 1800
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Bridge:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    const-string/jumbo v1, "beforeDestroy"

    invoke-virtual {v0, v1, v2, v2}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    goto :goto_0
.end method

.method public setContainsEmbedSurfaceView(Z)V
    .locals 0
    .param p1, "ifContains"    # Z

    .prologue
    .line 1785
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isEmbedSurfaceViewScene:Z

    .line 1786
    return-void
.end method

.method public setContainsEmbedView(Z)V
    .locals 0
    .param p1, "ifContains"    # Z

    .prologue
    .line 1775
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isEmbedViewScene:Z

    .line 1776
    return-void
.end method

.method public setContentBeforeRedirect(Z)V
    .locals 2
    .param p1, "flag"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1855
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hasInitContentFlag:Z

    if-nez v0, :cond_0

    .line 1856
    const-string/jumbo v0, "H5PageImpl"

    const-string/jumbo v1, "setContentBeforeRedirect set only once"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hasContent:Z

    .line 1859
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hasInitContentFlag:Z

    .line 1860
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->extra:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    return-void
.end method

.method public setH5ErrorHandler(Liop$a;)V
    .locals 0
    .param p1, "h5ErrorHandler"    # Liop$a;

    .prologue
    .line 1591
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mH5ErrorHandler:Liop$a;

    .line 1592
    return-void
.end method

.method public setH5Fragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V
    .locals 0
    .param p1, "h5Fragment"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .prologue
    .line 1666
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Fragment:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 1667
    return-void
.end method

.method public setH5TitleBar(Lcom/alipay/mobile/nebula/view/H5TitleView;)V
    .locals 0
    .param p1, "h5TitleBar"    # Lcom/alipay/mobile/nebula/view/H5TitleView;

    .prologue
    .line 1724
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5TitleBar:Lcom/alipay/mobile/nebula/view/H5TitleView;

    .line 1725
    return-void
.end method

.method public setHandler(Liop$b;)V
    .locals 0
    .param p1, "handler"    # Liop$b;

    .prologue
    .line 1586
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageHandler:Liop$b;

    .line 1587
    return-void
.end method

.method public setLoadingConfig(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 11
    .param p1, "loadingConfig"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 1476
    const-string/jumbo v8, "mode"

    const-string/jumbo v9, ""

    invoke-static {p1, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1477
    .local v3, "launchMode":Ljava/lang/String;
    const-string/jumbo v8, "manualHide"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1478
    iput-boolean v10, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->autoHideLoading:Z

    .line 1480
    :cond_0
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieViewProvider:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    if-nez v8, :cond_2

    .line 1499
    :cond_1
    :goto_0
    return-void

    .line 1481
    :cond_2
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieLoadingView:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 1482
    const-string/jumbo v8, "width"

    invoke-static {p1, v8, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v7

    .line 1483
    .local v7, "width":I
    const-string/jumbo v8, "height"

    invoke-static {p1, v8, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v2

    .line 1484
    .local v2, "height":I
    const-string/jumbo v8, "locationX"

    invoke-static {p1, v8, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v4

    .line 1485
    .local v4, "locationX":I
    const-string/jumbo v8, "locationY"

    invoke-static {p1, v8, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v5

    .line 1486
    .local v5, "locationY":I
    if-gtz v7, :cond_3

    if-gtz v2, :cond_3

    if-gtz v4, :cond_3

    if-lez v5, :cond_4

    .line 1487
    :cond_3
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieViewProvider:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieLoadingView:Landroid/view/View;

    invoke-interface {v8, v9, v7, v2}, Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;->setWidthAndHeight(Landroid/view/View;II)V

    .line 1488
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieViewProvider:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieLoadingView:Landroid/view/View;

    invoke-interface {v8, v9, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;->setLocationXY(Landroid/view/View;II)V

    .line 1490
    :cond_4
    const-string/jumbo v8, "bgColor"

    const-string/jumbo v9, ""

    invoke-static {p1, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1491
    .local v1, "bgColorStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1493
    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 1494
    .local v0, "bgColor":I
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieViewProvider:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieLoadingView:Landroid/view/View;

    invoke-interface {v8, v9, v0}, Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;->setBackgroundColor(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1495
    .end local v0    # "bgColor":I
    :catch_0
    move-exception v6

    .line 1496
    .local v6, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v8, "H5PageImpl"

    const-string/jumbo v9, "loadingview setBgColor failed"

    invoke-static {v8, v9, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setNewEmbedViewRoot(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->embedBaseViewListener:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;

    if-eqz v0, :cond_0

    .line 1832
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->embedBaseViewListener:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;->onNewEmbedBaseViewReady(Landroid/view/View;)V

    .line 1833
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->embedBaseViewListener:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;

    .line 1835
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->nativeInputContainer:Landroid/view/ViewGroup;

    .line 1836
    return-void
.end method

.method public setPageId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1739
    iput p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->pageId:I

    .line 1740
    return-void
.end method

.method public setPerformance(Ljava/lang/String;)V
    .locals 0
    .param p1, "pagePerformance"    # Ljava/lang/String;

    .prologue
    .line 1708
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->pagePerformance:Ljava/lang/String;

    .line 1709
    return-void
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1698
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->rootView:Landroid/view/View;

    .line 1699
    return-void
.end method

.method public setTextSize(I)V
    .locals 1
    .param p1, "textSize"    # I

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setTextSize(I)V

    .line 1659
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->title:Ljava/lang/String;

    .line 1719
    return-void
.end method

.method public setTitleBarReadyCallBack(Liop$c;)V
    .locals 0
    .param p1, "h5TitleBarReadyCallback"    # Liop$c;

    .prologue
    .line 1765
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5TitleBarReadyCallback:Liop$c;

    .line 1766
    return-void
.end method

.method public setUpPage(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "params"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 439
    .local v4, "time":J
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 441
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 443
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 451
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 454
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->initPageData(Landroid/os/Bundle;)V

    .line 456
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v6, "H5PageImpl"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parseMagicOptions(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 457
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 458
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/util/H5ParamCheckUtil;->checkParams(Landroid/os/Bundle;)V

    .line 459
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->showStartParams()V

    .line 461
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string/jumbo v6, "hasH5Pkg"

    invoke-static {v3, v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 462
    const-string/jumbo v3, "H5PageImpl"

    const-string/jumbo v6, "setContentBeforeRedirect true"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setContentBeforeRedirect(Z)V

    .line 466
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v3, :cond_3

    .line 467
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->whetherAllowAccessFromFileURL()Z

    move-result v0

    .line 468
    .local v0, "allowAccessFromFileURL":Z
    const-string/jumbo v3, "H5PageImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "allow webview access from file URL "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->init(Z)V

    .line 470
    new-instance v3, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {v3, v6, p0}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Liop;)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Bridge:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    .line 474
    .end local v0    # "allowAccessFromFileURL":Z
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lior;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "url"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lior;->c(Ljava/lang/String;)V

    .line 475
    new-instance v3, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ScriptLoader:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 476
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->initPlugins()V

    .line 477
    const-string/jumbo v3, "url"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lioq;->a(Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v6, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$6;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$6;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-interface {v3, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 505
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->initSession()V

    .line 507
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->applyParams()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 511
    :goto_1
    sget-boolean v3, Lcom/alipay/mobile/nebulacore/Nebula;->isDSL:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v3

    sget-object v6, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v3, v6, :cond_4

    .line 512
    sput-boolean v8, Lcom/alipay/mobile/nebulacore/Nebula;->isDSL:Z

    .line 513
    const-string/jumbo v3, "showUCFailDialog"

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 514
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendPageAbnormalEvent()V

    .line 516
    :cond_4
    const-string/jumbo v3, "create_page"

    const-string/jumbo v6, "setUpPage"

    invoke-static {v3, v6, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5TimeUtil;->timeLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 517
    return-void

    .line 444
    :catch_0
    move-exception v1

    .line 445
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "H5PageImpl"

    const-string/jumbo v6, "startParams getExtras Exception"

    invoke-static {v3, v6, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 508
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 509
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "H5PageImpl"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setWebViewId(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 1750
    iput p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->webViewId:I

    .line 1751
    return-void
.end method

.method public showLoadingView()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1368
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->needShowLoading:Z

    if-nez v1, :cond_1

    .line 1382
    :cond_0
    :goto_0
    return-void

    .line 1369
    :cond_1
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->showingLoading:Z

    if-nez v1, :cond_0

    .line 1370
    const-string/jumbo v1, "H5PageImpl"

    const-string/jumbo v2, "show web loading view"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1372
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5ViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1373
    .local v0, "webContent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieViewProvider:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieLoadingView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1374
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    if-eqz v1, :cond_2

    .line 1375
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageData:Lior;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 9456
    const-string/jumbo v4, "H5PageData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setLottieLoadingAnimStart : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9457
    iput-wide v2, v1, Lior;->aO:J

    .line 1377
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->showingLoading:Z

    .line 1378
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieLoadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1379
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieViewProvider:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mLottieLoadingView:Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;->playAnimation(Landroid/view/View;)V

    goto :goto_0
.end method
