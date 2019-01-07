.class public Lcom/alibaba/lightapp/runtime/weex/WeexButler;
.super Ljava/lang/Object;
.source "WeexButler.java"

# interfaces
.implements Lhdf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/weex/WeexButler$Callback;,
        Lcom/alibaba/lightapp/runtime/weex/WeexButler$DebugRefreshReceiver;,
        Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;
    }
.end annotation


# static fields
.field private static final EVENT_NATIVE_READY:Ljava/lang/String; = "nativeready"

.field private static final EVENT_PAUSE:Ljava/lang/String; = "pause"

.field private static final EVENT_RESUME:Ljava/lang/String; = "resume"

.field public static final OPTION_BUNDLE_URL:Ljava/lang/String; = "bundleUrl"

.field public static final OPTION_ORIGINAL_URL:Ljava/lang/String; = "originalUrl"

.field public static final TAG:Ljava/lang/String; = "WeexButler"


# instance fields
.field private mAgentId:J

.field private mAppId:J

.field private mCallback:Lcom/alibaba/lightapp/runtime/weex/WeexButler$Callback;

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mDebugNuvaContext:Lcom/alibaba/lightapp/runtime/INuvaContext;

.field private mInternalWXRenderListener:Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;

.field private mLoadingDelegate:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

.field private mLoadingFrameLayout:Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;

.field private mMiniAppId:Ljava/lang/String;

.field private mOriginalUrl:Ljava/lang/String;

.field private mPageName:Ljava/lang/String;

.field private mRefreshReceiver:Lcom/alibaba/lightapp/runtime/weex/WeexButler$DebugRefreshReceiver;

.field private mStat:Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;

.field private mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

.field private mWXRenderListener:Lcom/taobao/weex/IWXRenderListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string/jumbo v0, "WeexButler"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mPageName:Ljava/lang/String;

    .line 70
    iput-wide v2, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mAppId:J

    iput-wide v2, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mAgentId:J

    .line 80
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$DebugRefreshReceiver;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler$DebugRefreshReceiver;-><init>(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mRefreshReceiver:Lcom/alibaba/lightapp/runtime/weex/WeexButler$DebugRefreshReceiver;

    .line 88
    if-eqz p1, :cond_0

    .line 89
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mContext:Landroid/content/Context;

    .line 94
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->initContainer()V

    .line 96
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->initDelegate()V

    .line 98
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->createWXInstance()V

    .line 99
    return-void

    .line 91
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mStat:Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Lcom/taobao/weex/IWXRenderListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXRenderListener:Lcom/taobao/weex/IWXRenderListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->hideLoadingFrame()V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mLoadingDelegate:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Lcom/alibaba/lightapp/runtime/weex/WeexButler$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mCallback:Lcom/alibaba/lightapp/runtime/weex/WeexButler$Callback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->debugRefreshWXInstance()V

    return-void
.end method

.method private createWXInstance()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->destoryWXInstance()V

    .line 261
    new-instance v0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    .line 262
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;-><init>(Lcom/alibaba/lightapp/runtime/weex/WeexButler;Lcom/alibaba/lightapp/runtime/weex/WeexButler$1;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mInternalWXRenderListener:Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;

    .line 263
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mInternalWXRenderListener:Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->registerRenderListener(Lcom/taobao/weex/IWXRenderListener;)V

    .line 265
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mRefreshReceiver:Lcom/alibaba/lightapp/runtime/weex/WeexButler$DebugRefreshReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "DEBUG_INSTANCE_REFRESH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 268
    :cond_0
    return-void
.end method

.method private debugRefreshWXInstance()V
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->createWXInstance()V

    .line 272
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mDebugNuvaContext:Lcom/alibaba/lightapp/runtime/INuvaContext;

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->setNuvaContext(Lcom/alibaba/lightapp/runtime/INuvaContext;)V

    .line 273
    return-void
.end method

.method private destoryWXInstance()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 247
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mRefreshReceiver:Lcom/alibaba/lightapp/runtime/weex/WeexButler$DebugRefreshReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    invoke-virtual {v0, v2}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->registerRenderListener(Lcom/taobao/weex/IWXRenderListener;)V

    .line 253
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->destroy()V

    .line 254
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    .line 256
    :cond_1
    return-void
.end method

.method private hideLoadingFrame()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mLoadingFrameLayout:Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mLoadingFrameLayout:Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->hide()V

    .line 477
    :cond_0
    return-void
.end method

.method private initContainer()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 221
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mContainer:Landroid/view/ViewGroup;

    .line 222
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 224
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 226
    return-void
.end method

.method private initDelegate()V
    .locals 2

    .prologue
    .line 230
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

    new-instance v1, Lcom/alibaba/lightapp/runtime/weex/WeexButler$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)V

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;-><init>(Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$ICallback;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mLoadingDelegate:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

    .line 243
    return-void
.end method

.method private render(Ljava/lang/String;)V
    .locals 4
    .param p1, "originalUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    const/4 v2, -0x1

    .line 107
    .local v2, "width":I
    const/4 v1, -0x1

    .line 108
    .local v1, "height":I
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 109
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 110
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/util/ScreenUtil;->getDisplayWidth(Landroid/app/Activity;)I

    move-result v2

    .line 111
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/util/ScreenUtil;->getDisplayHeight(Landroid/app/Activity;)I

    move-result v1

    .line 114
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    invoke-direct {p0, p1, v2, v1}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->render(Ljava/lang/String;II)V

    .line 115
    return-void
.end method

.method private render(Ljava/lang/String;II)V
    .locals 1
    .param p1, "originalUrl"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->renderPageByURL(Ljava/lang/String;Ljava/lang/String;II)V

    .line 119
    return-void
.end method

.method private renderPageByURL(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9
    .param p1, "originalUrl"    # Ljava/lang/String;
    .param p2, "jsonInitData"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 122
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->setOriginalUrl(Ljava/lang/String;)V

    .line 124
    invoke-static {p1}, Lhgy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "wxTplUrl":Ljava/lang/String;
    invoke-static {v2}, Lhsc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "bundleUrl"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string/jumbo v0, "originalUrl"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mLoadingDelegate:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->handleParam(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mLoadingDelegate:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->showLoading()V

    .line 134
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->statStartRender()V

    .line 137
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v0

    .line 1175
    iput-boolean v8, v0, Lhpe;->d:Z

    .line 140
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mPageName:Ljava/lang/String;

    sget-object v7, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IILcom/taobao/weex/common/WXRenderStrategy;)V

    .line 148
    const-string/jumbo v0, "WeexButler"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v4, "render"

    aput-object v4, v1, v8

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mOriginalUrl:Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lhrq;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private setOriginalUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "originalUrl"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mOriginalUrl:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mOriginalUrl:Ljava/lang/String;

    invoke-static {v0}, Lhsc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mOriginalUrl:Ljava/lang/String;

    .line 172
    return-void
.end method

.method private statStartRender()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mOriginalUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mStat:Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;

    .line 176
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mStat:Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mAppId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mAgentId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mMiniAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->initAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mStat:Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->startRender()V

    .line 178
    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->destoryWXInstance()V

    .line 187
    return-void
.end method

.method public dispatchEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 209
    :cond_0
    return-void
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getWebViewWrapper()Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public goBack()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->onActivityResult(IILandroid/content/Intent;)V

    .line 342
    :cond_0
    return-void
.end method

.method public handleBackPressed()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 367
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    if-nez v1, :cond_1

    .line 4135
    :cond_0
    :goto_0
    return v0

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->onActivityBack()Z

    .line 377
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    .line 4135
    iget-object v2, v1, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->a:Lhds;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->a:Lhds;

    invoke-virtual {v1}, Lhds;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handleCreate()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->onActivityCreate()V

    .line 305
    return-void
.end method

.method public handleDestroy()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->onActivityDestroy()V

    .line 310
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->destoryWXInstance()V

    .line 311
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v0

    invoke-virtual {v0}, Lhpe;->b()V

    .line 312
    return-void
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 382
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    if-nez v1, :cond_1

    .line 4140
    :cond_0
    :goto_0
    return v0

    .line 386
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 391
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->onActivityBack()Z

    .line 394
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    .line 4140
    iget-object v2, v1, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->a:Lhds;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->a:Lhds;

    invoke-virtual {v1, p1, p2}, Lhds;->a(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handlePause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 333
    const-string/jumbo v0, "pause"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->dispatchEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 334
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->onActivityPause()V

    .line 335
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v0

    .line 3168
    const/4 v1, 0x1

    iput-boolean v1, v0, Lhpe;->d:Z

    .line 336
    return-void
.end method

.method public handleResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 326
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v0

    .line 2175
    const/4 v1, 0x0

    iput-boolean v1, v0, Lhpe;->d:Z

    .line 327
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->onActivityResume()V

    .line 328
    const-string/jumbo v0, "resume"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->dispatchEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 329
    return-void
.end method

.method public handleStart()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->onActivityStart()V

    .line 317
    return-void
.end method

.method public handleStop()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->onActivityStop()V

    .line 322
    return-void
.end method

.method public initAppContext(JJLjava/lang/String;)V
    .locals 1
    .param p1, "appId"    # J
    .param p3, "agentId"    # J
    .param p5, "miniAppId"    # Ljava/lang/String;

    .prologue
    .line 399
    iput-wide p1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mAppId:J

    .line 400
    iput-wide p3, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mAgentId:J

    .line 401
    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mMiniAppId:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->render(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public loadUrl(Ljava/lang/String;II)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 294
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->render(Ljava/lang/String;II)V

    .line 295
    return-void
.end method

.method public registerRenderListener(Lcom/taobao/weex/IWXRenderListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/taobao/weex/IWXRenderListener;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXRenderListener:Lcom/taobao/weex/IWXRenderListener;

    .line 182
    return-void
.end method

.method public reloadEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public renderByFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 6
    .param p1, "originalUrl"    # Ljava/lang/String;
    .param p2, "pageName"    # Ljava/lang/String;
    .param p3, "template"    # Ljava/io/File;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mInternalWXRenderListener:Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mInternalWXRenderListener:Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    const-string/jumbo v2, "-99999"

    const-string/jumbo v4, "template is empty"

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->onException(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->setOriginalUrl(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->statStartRender()V

    .line 158
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 159
    .local v3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "bundleUrl"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string/jumbo v0, "originalUrl"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mPageName:Ljava/lang/String;

    .line 163
    invoke-virtual {p3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    sget-object v5, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 161
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    goto :goto_0
.end method

.method public setCallback(Lcom/alibaba/lightapp/runtime/weex/WeexButler$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/alibaba/lightapp/runtime/weex/WeexButler$Callback;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mCallback:Lcom/alibaba/lightapp/runtime/weex/WeexButler$Callback;

    .line 192
    return-void
.end method

.method public setClient(Lhdf$a;)V
    .locals 0
    .param p1, "entryClient"    # Lhdf$a;

    .prologue
    .line 357
    return-void
.end method

.method public setLoadingFrameLayout(Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;)V
    .locals 0
    .param p1, "frameLayout"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;

    .prologue
    .line 496
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mLoadingFrameLayout:Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;

    .line 497
    return-void
.end method

.method public setNuvaContext(Lcom/alibaba/lightapp/runtime/INuvaContext;)V
    .locals 1
    .param p1, "nuvaContext"    # Lcom/alibaba/lightapp/runtime/INuvaContext;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    if-eqz v0, :cond_0

    .line 214
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mDebugNuvaContext:Lcom/alibaba/lightapp/runtime/INuvaContext;

    .line 215
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mWXInstance:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    .line 2092
    iput-object p1, v0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->b:Lcom/alibaba/lightapp/runtime/INuvaContext;

    .line 217
    :cond_0
    return-void
.end method

.method public setOnPageStatusCheckListener(Lhdf$b;)V
    .locals 0
    .param p1, "onPageStatusCheckListener"    # Lhdf$b;

    .prologue
    .line 362
    return-void
.end method

.method public setPageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->mPageName:Ljava/lang/String;

    .line 103
    return-void
.end method
