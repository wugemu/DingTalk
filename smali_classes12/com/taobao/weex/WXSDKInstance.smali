.class public Lcom/taobao/weex/WXSDKInstance;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/taobao/weex/IWXActivityStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;,
        Lcom/taobao/weex/WXSDKInstance$WXHttpListener;,
        Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;
    }
.end annotation


# static fields
.field public static final BUNDLE_URL:Ljava/lang/String; = "bundleUrl"

.field private static final SOURCE_TEMPLATE_BASE64_MD5:Ljava/lang/String; = "templateSourceBase64MD5"

.field public static requestUrl:Ljava/lang/String;


# instance fields
.field public bundleType:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

.field private enableLayerType:Z

.field public hiddenEmbeds:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/taobao/weex/ui/component/WXEmbed;",
            ">;"
        }
    .end annotation
.end field

.field private inactiveAddElementAction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/action/GraphicActionAddElement;",
            ">;"
        }
    .end annotation
.end field

.field private isCommit:Z

.field private isDestroy:Z

.field private volatile isPreRenderMode:Z

.field private mBundleUrl:Ljava/lang/String;

.field private mComponentObserver:Lcom/taobao/weex/ComponentObserver;

.field private mContentBoxMeasurements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/taobao/weex/layout/ContentBoxMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mCreateInstance:Z

.field private mCurrentGround:Z

.field public mEnd:Z

.field public mExecJSTraceId:I

.field private mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

.field private mGlobalEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mHasCreateFinish:Z

.field public mHasSetCreateFinishFsTime:Z

.field private final mInstanceId:Ljava/lang/String;

.field private mInstanceViewPortWidth:I

.field private mLastRefreshData:Lcom/taobao/weex/common/WXRefreshData;

.field private mLayerOverFlowListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxDeepLayer:I

.field private mNativeInvokeHelper:Lcom/taobao/weex/bridge/NativeInvokeHelper;

.field private mNeedReLoad:Z

.field private mNeedValidate:Z

.field private mNestedInstanceInterceptor:Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;

.field private mRefreshStartTime:J

.field private mRenderContainer:Lcom/taobao/weex/RenderContainer;

.field private mRenderListener:Lcom/taobao/weex/IWXRenderListener;

.field public mRenderStartNanos:J

.field public mRenderStartTime:J

.field private mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

.field private mRendered:Z

.field private mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

.field private mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

.field private mUserTrackParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

.field private mWXScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/common/OnWXScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWXScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

.field private maxHiddenEmbedsNum:I

.field public measureTimes:[J

.field public mwxDims:[Ljava/lang/String;

.field public responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public templateRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trackComponent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    const-string/jumbo v0, "requestUrl"

    sput-object v0, Lcom/taobao/weex/WXSDKInstance;->requestUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    .line 109
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->mHasCreateFinish:Z

    .line 110
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->mHasSetCreateFinishFsTime:Z

    .line 122
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 124
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    .line 127
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->isCommit:Z

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    .line 130
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->enableLayerType:Z

    .line 131
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    .line 132
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedReLoad:Z

    .line 133
    const/16 v0, 0x2ee

    iput v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:I

    .line 134
    new-instance v0, Lcom/taobao/weex/ui/flat/FlatGUIContext;

    invoke-direct {v0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    .line 142
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->nextId()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/WXSDKInstance;->mExecJSTraceId:I

    .line 147
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mwxDims:[Ljava/lang/String;

    .line 148
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->measureTimes:[J

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    .line 156
    sget-object v0, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 194
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    .line 196
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    .line 198
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    .line 218
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/weex/WXSDKInstance;->maxHiddenEmbedsNum:I

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    .line 1283
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->mCreateInstance:Z

    .line 1553
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    .line 342
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->generateInstanceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    .line 343
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->init(Landroid/content/Context;)V

    .line 344
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    .line 109
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->mHasCreateFinish:Z

    .line 110
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->mHasSetCreateFinishFsTime:Z

    .line 122
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 124
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    .line 127
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->isCommit:Z

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    .line 130
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->enableLayerType:Z

    .line 131
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    .line 132
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedReLoad:Z

    .line 133
    const/16 v0, 0x2ee

    iput v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:I

    .line 134
    new-instance v0, Lcom/taobao/weex/ui/flat/FlatGUIContext;

    invoke-direct {v0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    .line 142
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->nextId()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/WXSDKInstance;->mExecJSTraceId:I

    .line 147
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mwxDims:[Ljava/lang/String;

    .line 148
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->measureTimes:[J

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    .line 156
    sget-object v0, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 194
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    .line 196
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    .line 198
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    .line 218
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/weex/WXSDKInstance;->maxHiddenEmbedsNum:I

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    .line 1283
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->mCreateInstance:Z

    .line 1553
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    .line 351
    iput-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    .line 352
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->init(Landroid/content/Context;)V

    .line 353
    return-void
.end method

.method static synthetic access$1000(Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/taobao/weex/WXSDKInstance;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/WXSDKInstance;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->isPreRenderMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/RenderContainer;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXRenderListener;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXStatisticsListener;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/adapter/IWXUserTrackAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/common/WXPerformance;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    return-object v0
.end method

.method static synthetic access$700(Lcom/taobao/weex/WXSDKInstance;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/WXSDKInstance;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->isNet(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private assembleFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 714
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 717
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private destroyView(Landroid/view/View;)V
    .locals 6
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1348
    :try_start_0
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 1349
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 1350
    .local v1, "cViewGroup":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1351
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/taobao/weex/WXSDKInstance;->destroyView(Landroid/view/View;)V

    .line 1350
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1354
    :cond_0
    const/4 v5, 0x0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 1356
    const-string/jumbo v4, "mChildrenCount"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/taobao/weex/utils/WXReflectionUtils;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1359
    .end local v1    # "cViewGroup":Landroid/view/ViewGroup;
    .end local v3    # "index":I
    :cond_1
    instance-of v4, p1, Lcom/taobao/weex/common/Destroyable;

    if-eqz v4, :cond_2

    .line 1360
    check-cast p1, Lcom/taobao/weex/common/Destroyable;

    .end local p1    # "rootView":Landroid/view/View;
    invoke-interface {p1}, Lcom/taobao/weex/common/Destroyable;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1365
    :cond_2
    :goto_1
    return-void

    .line 1362
    :catch_0
    move-exception v2

    .line 1363
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WXSDKInstance destroyView Exception: "

    invoke-static {v4, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private ensureRenderArchor()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 532
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    if-nez v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    new-instance v0, Lcom/taobao/weex/RenderContainer;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/weex/RenderContainer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->setRenderContainer(Lcom/taobao/weex/RenderContainer;)V

    .line 535
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/RenderContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/RenderContainer;->setBackgroundColor(I)V

    .line 537
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    invoke-virtual {v0, p0}, Lcom/taobao/weex/RenderContainer;->setSDKInstance(Lcom/taobao/weex/WXSDKInstance;)V

    .line 538
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    invoke-virtual {v0, p0}, Lcom/taobao/weex/RenderContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 541
    :cond_0
    return-void
.end method

.method private isNet(Ljava/lang/String;)Z
    .locals 1
    .param p1, "requestType"    # Ljava/lang/String;

    .prologue
    .line 1900
    const-string/jumbo v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "2g"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "3g"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "4g"

    .line 1901
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "wifi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "other"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "unknown"

    .line 1902
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private renderByUrlInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 12
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "jsonInitData"    # Ljava/lang/String;
    .param p5, "flag"    # Lcom/taobao/weex/common/WXRenderStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 599
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKInstance;->ensureRenderArchor()V

    .line 600
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/WXSDKInstance;->wrapPageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 601
    iput-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 602
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 603
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/taobao/weex/bridge/WXValidateProcessor;->needValidate(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    .line 607
    :cond_0
    move-object v3, p3

    .local v3, "renderOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p3, :cond_1

    .line 608
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "renderOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 610
    .restart local v3    # "renderOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const-string/jumbo v1, "bundleUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 611
    const-string/jumbo v1, "bundleUrl"

    invoke-interface {v3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 615
    .local v10, "uri":Landroid/net/Uri;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "file"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 616
    invoke-direct {p0, v10}, Lcom/taobao/weex/WXSDKInstance;->assembleFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXFileUtils;->loadFileOrAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 639
    :goto_0
    return-void

    .line 620
    :cond_3
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;

    move-result-object v9

    .line 622
    .local v9, "adapter":Lcom/taobao/weex/adapter/IWXHttpAdapter;
    new-instance v11, Lcom/taobao/weex/common/WXRequest;

    invoke-direct {v11}, Lcom/taobao/weex/common/WXRequest;-><init>()V

    .line 623
    .local v11, "wxRequest":Lcom/taobao/weex/common/WXRequest;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "bundle"

    invoke-virtual {p0, v1, v2}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    .line 624
    iget-object v1, v11, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 625
    iget-object v1, v11, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    sput-object v1, Lcom/taobao/weex/WXSDKInstance;->requestUrl:Ljava/lang/String;

    .line 630
    :goto_1
    iget-object v1, v11, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    if-nez v1, :cond_4

    .line 631
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v11, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    .line 633
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/taobao/weex/common/WXRequest;->instanceId:Ljava/lang/String;

    .line 634
    iget-object v1, v11, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    const-string/jumbo v2, "user-agent"

    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getConfig()Ljava/util/Map;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/weex/http/WXHttpUtil;->assembleUserAgent(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    new-instance v0, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;

    .line 636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;JLcom/taobao/weex/WXSDKInstance$1;)V

    .line 637
    .local v0, "httpListener":Lcom/taobao/weex/WXSDKInstance$WXHttpListener;
    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKInstance$WXHttpListener;->setSDKInstance(Lcom/taobao/weex/WXSDKInstance;)V

    .line 638
    invoke-interface {v9, v11, v0}, Lcom/taobao/weex/adapter/IWXHttpAdapter;->sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    goto :goto_0

    .line 627
    .end local v0    # "httpListener":Lcom/taobao/weex/WXSDKInstance$WXHttpListener;
    :cond_5
    sput-object p1, Lcom/taobao/weex/WXSDKInstance;->requestUrl:Ljava/lang/String;

    goto :goto_1
.end method

.method private renderInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 7
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "template"    # Ljava/lang/String;
    .param p4, "jsonInitData"    # Ljava/lang/String;
    .param p5, "flag"    # Lcom/taobao/weex/common/WXRenderStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 548
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRendered:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "defaultBundleUrl"

    :goto_1
    iput-object v0, v1, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    .line 553
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-object v0, v0, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 557
    :cond_2
    const-string/jumbo v0, "WXSDKInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Start render page: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 560
    const-string/jumbo v0, "executeBundleJS"

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/tracing/WXTracing;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object v6

    .line 561
    .local v6, "traceEvent":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->mExecJSTraceId:I

    iput v0, v6, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    .line 562
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    iput-object v0, v6, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->iid:Ljava/lang/String;

    .line 563
    const-string/jumbo v0, "JSThread"

    iput-object v0, v6, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->tname:Ljava/lang/String;

    .line 564
    const-string/jumbo v0, "B"

    iput-object v0, v6, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ph:Ljava/lang/String;

    .line 565
    invoke-virtual {v6}, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->submit()V

    .line 566
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartNanos:J

    .line 569
    .end local v6    # "traceEvent":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    :cond_3
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKInstance;->ensureRenderArchor()V

    .line 572
    move-object v3, p3

    .local v3, "renderOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p3, :cond_4

    .line 573
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "renderOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 576
    .restart local v3    # "renderOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->sDynamicMode:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sDynamicUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "dynamicMode"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 577
    const-string/jumbo v0, "dynamicMode"

    const-string/jumbo v1, "true"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    sget-object v2, Lcom/taobao/weex/WXEnvironment;->sDynamicUrl:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    goto/16 :goto_0

    .end local v3    # "renderOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    move-object v0, p1

    .line 552
    goto/16 :goto_1

    .line 582
    .restart local v3    # "renderOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v1, v2

    float-to-double v4, v1

    iput-wide v4, v0, Lcom/taobao/weex/common/WXPerformance;->JSTemplateSize:D

    .line 584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartTime:J

    .line 585
    iput-object p5, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 587
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    const-string/jumbo v1, "wx_current_url"

    invoke-virtual {v0, v1, p1}, Lcom/taobao/weex/WXSDKManager;->setCrashInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p0, p2, v3, p4}, Lcom/taobao/weex/WXSDKManager;->createInstance(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 590
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRendered:Z

    goto/16 :goto_0
.end method

.method private wrapPageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 695
    const-string/jumbo v2, "default"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 697
    move-object p1, p2

    sput-object p2, Lcom/taobao/weex/utils/WXExceptionUtils;->degradeUrl:Ljava/lang/String;

    .line 699
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 700
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 701
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 702
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 703
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 704
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 705
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 710
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public OnVSync()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1978
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->notifyLayout(Ljava/lang/String;)Z

    move-result v0

    .line 1979
    .local v0, "forceLayout":Z
    if-eqz v0, :cond_0

    .line 1980
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/WXSDKInstance$13;

    invoke-direct {v2, p0}, Lcom/taobao/weex/WXSDKInstance$13;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 1987
    :cond_0
    return-void
.end method

.method public addContentBoxMeasurement(JLcom/taobao/weex/layout/ContentBoxMeasurement;)V
    .locals 3
    .param p1, "renderObjectPtr"    # J
    .param p3, "contentBoxMeasurement"    # Lcom/taobao/weex/layout/ContentBoxMeasurement;

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1991
    return-void
.end method

.method protected addEventListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1601
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1610
    :cond_0
    :goto_0
    return-void

    .line 1604
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1605
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 1606
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1607
    .restart local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addInActiveAddElementAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/GraphicActionAddElement;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/taobao/weex/ui/action/GraphicActionAddElement;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void
.end method

.method public addLayerOverFlowListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    return-void
.end method

.method public addOnInstanceVisibleListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V
    .locals 1
    .param p1, "l"    # Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    return-void
.end method

.method public addUserTrackParameter(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1683
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    return-void
.end method

.method public callActionAddElementTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementSumTime:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    long-to-int v1, v2

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementSumTime:I

    .line 1311
    return-void
.end method

.method public callJsTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 1292
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    if-nez v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v2, v0, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalTime:J

    add-long/2addr v2, p1

    iput-wide v2, v0, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalTime:J

    .line 1294
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalNum:I

    .line 1296
    :cond_0
    return-void
.end method

.method public checkModuleEventRegistered(Ljava/lang/String;Lcom/taobao/weex/common/WXModule;)Z
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "module"    # Lcom/taobao/weex/common/WXModule;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1664
    if-eqz p2, :cond_0

    .line 1665
    invoke-virtual {p2, p1}, Lcom/taobao/weex/common/WXModule;->getEventCallbacks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1666
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1667
    const/4 v1, 0x1

    .line 1670
    .end local v0    # "events":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearUserTrackParameters()V
    .locals 1

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1692
    :cond_0
    return-void
.end method

.method public final createNestedInstance(Lcom/taobao/weex/ui/component/NestedContainer;)Lcom/taobao/weex/WXSDKInstance;
    .locals 2
    .param p1, "container"    # Lcom/taobao/weex/ui/component/NestedContainer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->newNestedInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 365
    .local v0, "sdkInstance":Lcom/taobao/weex/WXSDKInstance;
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mNestedInstanceInterceptor:Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mNestedInstanceInterceptor:Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;

    invoke-interface {v1, v0, p1}, Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;->onCreateNestInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/NestedContainer;)V

    .line 368
    :cond_0
    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getComponentObserver()Lcom/taobao/weex/ComponentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->setComponentObserver(Lcom/taobao/weex/ComponentObserver;)V

    .line 371
    :cond_1
    return-object v0
.end method

.method public declared-synchronized destroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1368
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1369
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRendered:Z

    if-eqz v0, :cond_0

    .line 1370
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKManager;->destroyInstance(Ljava/lang/String;)V

    .line 1372
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/ui/component/WXComponentFactory;->removeComponentTypesByInstanceId(Ljava/lang/String;)V

    .line 1374
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    if-eqz v0, :cond_1

    .line 1375
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    .line 1378
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_2

    .line 1379
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 1380
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    invoke-direct {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->destroyView(Landroid/view/View;)V

    .line 1381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    .line 1384
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 1385
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1388
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mComponentObserver:Lcom/taobao/weex/ComponentObserver;

    if-eqz v0, :cond_4

    .line 1389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mComponentObserver:Lcom/taobao/weex/ComponentObserver;

    .line 1392
    :cond_4
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 1393
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1396
    :cond_5
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->destroy()V

    .line 1397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    .line 1399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollListeners:Ljava/util/List;

    .line 1400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    .line 1401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNestedInstanceInterceptor:Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;

    .line 1402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    .line 1403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mScrollView:Landroid/widget/ScrollView;

    .line 1404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    .line 1405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    .line 1406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    .line 1407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    .line 1408
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 1409
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1411
    :cond_6
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->templateRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    .line 1412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->templateRef:Ljava/lang/ref/WeakReference;

    .line 1414
    :cond_7
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 1415
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1417
    :cond_8
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/common/WXPerformance;->afterInstanceDestroy(Ljava/lang/String;)V

    .line 1419
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/WXSDKInstance$10;

    invoke-direct {v1, p0}, Lcom/taobao/weex/WXSDKInstance$10;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 1430
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/WXSDKInstance$11;

    invoke-direct {v1, p0}, Lcom/taobao/weex/WXSDKInstance$11;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->postDelay(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1437
    :cond_9
    monitor-exit p0

    return-void

    .line 1368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableLayerType(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->enableLayerType:Z

    .line 307
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 1597
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1598
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "elementRef"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1593
    .local p3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 1594
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p1, "elementRef"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1589
    .local p3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    .line 1590
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .locals 7
    .param p1, "elementRef"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1572
    .local p3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "eventArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V

    .line 1573
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V
    .locals 8
    .param p1, "elementRef"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/taobao/weex/bridge/EventResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/EventResult;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1576
    .local p3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "eventArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v0, v0, Lcom/taobao/weex/common/WXPerformance;->fsCallEventTotalNum:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsCallEventTotalNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsCallEventTotalNum:I

    .line 1579
    :cond_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V

    .line 1580
    return-void
.end method

.method public fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1556
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1557
    .local v1, "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 1558
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1559
    .local v0, "callback":Ljava/lang/String;
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, p2, v5}, Lcom/taobao/weex/WXSDKManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_0

    .line 1562
    .end local v0    # "callback":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public fireModuleEvent(Ljava/lang/String;Lcom/taobao/weex/common/WXModule;Ljava/util/Map;)V
    .locals 6
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "module"    # Lcom/taobao/weex/common/WXModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXModule;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1635
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_1

    .line 1655
    :cond_0
    return-void

    .line 1639
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1640
    .local v2, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "type"

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    const-string/jumbo v4, "module"

    invoke-virtual {p2}, Lcom/taobao/weex/common/WXModule;->getModuleName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    const-string/jumbo v4, "data"

    invoke-interface {v2, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    invoke-virtual {p2, p1}, Lcom/taobao/weex/common/WXModule;->getEventCallbacks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1645
    .local v1, "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 1646
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1647
    .local v0, "callback":Ljava/lang/String;
    new-instance v3, Lcom/taobao/weex/bridge/SimpleJSCallback;

    iget-object v5, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-direct {v3, v5, v0}, Lcom/taobao/weex/bridge/SimpleJSCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    .local v3, "jsCallback":Lcom/taobao/weex/bridge/SimpleJSCallback;
    invoke-virtual {p2, v0}, Lcom/taobao/weex/common/WXModule;->isOnce(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1649
    invoke-virtual {v3, v2}, Lcom/taobao/weex/bridge/SimpleJSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    .line 1651
    :cond_2
    invoke-virtual {v3, v2}, Lcom/taobao/weex/bridge/SimpleJSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public firstScreenCreateInstanceTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 1285
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCreateInstance:Z

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v2, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartTime:J

    sub-long v2, p1, v2

    iput-wide v2, v0, Lcom/taobao/weex/common/WXPerformance;->firstScreenJSFExecuteTime:J

    .line 1287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCreateInstance:Z

    .line 1289
    :cond_0
    return-void
.end method

.method public firstScreenRenderFinished()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 1314
    iget-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    if-eqz v1, :cond_0

    .line 1344
    :goto_0
    return-void

    .line 1317
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 1318
    new-instance v1, Lcom/taobao/weex/WXSDKInstance$9;

    invoke-direct {v1, p0}, Lcom/taobao/weex/WXSDKInstance$9;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {p0, v1}, Lcom/taobao/weex/WXSDKInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1330
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    .line 1331
    iget-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->mHasSetCreateFinishFsTime:Z

    if-nez v1, :cond_2

    .line 1332
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/taobao/weex/common/WXPerformance;->fsRenderTime:J

    .line 1333
    iget-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->mHasCreateFinish:Z

    if-eqz v1, :cond_2

    .line 1334
    iput-boolean v6, p0, Lcom/taobao/weex/WXSDKInstance;->mHasSetCreateFinishFsTime:Z

    .line 1336
    :cond_2
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/taobao/weex/common/WXPerformance;->newFsRenderTime:J

    .line 1337
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->getFirstScreenRenderTime(Ljava/lang/String;)[J

    move-result-object v0

    .line 1338
    .local v0, "fitstScreenPerformance":[J
    const-string/jumbo v1, "firstScreenRenderFinished"

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v2, v2, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    invoke-static {v1, v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1339
    const-string/jumbo v1, "newFsRenderTime"

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v2, v2, Lcom/taobao/weex/common/WXPerformance;->newFsRenderTime:J

    invoke-static {v1, v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1340
    const-string/jumbo v1, "    firstScreenJSFExecuteTime"

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v2, v2, Lcom/taobao/weex/common/WXPerformance;->firstScreenJSFExecuteTime:J

    invoke-static {v1, v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1341
    const-string/jumbo v1, "    firstScreenCallBridgeTime"

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-static {v1, v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1342
    const-string/jumbo v1, "    firstScreenCssLayoutTime"

    aget-wide v2, v0, v6

    invoke-static {v1, v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1343
    const-string/jumbo v1, "    firstScreenParseJsonTime"

    const/4 v2, 0x2

    aget-wide v2, v0, v2

    invoke-static {v1, v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public getBundleUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentObserver()Lcom/taobao/weex/ComponentObserver;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mComponentObserver:Lcom/taobao/weex/ComponentObserver;

    return-object v0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    return-object v0
.end method

.method public getContentBoxMeasurement(J)Lcom/taobao/weex/layout/ContentBoxMeasurement;
    .locals 3
    .param p1, "renderObjectPtr"    # J

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/layout/ContentBoxMeasurement;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 782
    const-string/jumbo v0, "WXSdkInstance mContext == null"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;
    .locals 1

    .prologue
    .line 801
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;

    move-result-object v0

    return-object v0
.end method

.method public getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    return-object v0
.end method

.method public getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;
    .locals 1

    .prologue
    .line 797
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getInActiveAddElementAction(Ljava/lang/String;)Lcom/taobao/weex/ui/action/GraphicActionAddElement;
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceViewPortWidth()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:I

    return v0
.end method

.method public getLayerOverFlowListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    return-object v0
.end method

.method public getMaxDeepLayer()I
    .locals 1

    .prologue
    .line 1701
    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->mMaxDeepLayer:I

    return v0
.end method

.method public getMaxHiddenEmbedsNum()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->maxHiddenEmbedsNum:I

    return v0
.end method

.method public getNativeInvokeHelper()Lcom/taobao/weex/bridge/NativeInvokeHelper;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNativeInvokeHelper:Lcom/taobao/weex/bridge/NativeInvokeHelper;

    return-object v0
.end method

.method public getRenderContainerPaddingLeft()I
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/RenderContainer;->getPaddingLeft()I

    move-result v0

    .line 1503
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderContainerPaddingTop()I
    .locals 1

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/RenderContainer;->getPaddingTop()I

    move-result v0

    .line 1510
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    return-object v0
.end method

.method public getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez v0, :cond_0

    .line 1452
    const/4 v0, 0x0

    .line 1453
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public getScrollViewListener()Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->templateRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 1964
    const/4 v0, 0x0

    .line 1966
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->templateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTemplateInfo()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1909
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getTemplate()Ljava/lang/String;

    move-result-object v5

    .line 1910
    .local v5, "template":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 1911
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " template md5 null "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    invoke-static {v7}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1930
    :goto_0
    return-object v6

    .line 1913
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1914
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " template md5  length 0 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    invoke-static {v7}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1917
    :cond_1
    :try_start_0
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1918
    .local v0, "bts":[B
    invoke-static {v0}, Lcom/taobao/weex/utils/WXFileUtils;->md5([B)Ljava/lang/String;

    move-result-object v3

    .line 1919
    .local v3, "sourceMD5":Ljava/lang/String;
    invoke-static {v0}, Lcom/taobao/weex/utils/WXFileUtils;->base64Md5([B)Ljava/lang/String;

    move-result-object v1

    .line 1920
    .local v1, "sourceBase64MD5":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1921
    .local v4, "sourceMD5List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1922
    .local v2, "sourceBase64MD5List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1923
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1924
    iget-object v6, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    const-string/jumbo v7, "templateSourceMD5"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1925
    iget-object v6, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    const-string/jumbo v7, "templateSourceBase64MD5"

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1926
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " template md5 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " base64 md5 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " response header "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    .line 1928
    invoke-static {v7}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto/16 :goto_0

    .line 1930
    .end local v0    # "bts":[B
    .end local v1    # "sourceBase64MD5":Ljava/lang/String;
    .end local v2    # "sourceBase64MD5List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "sourceMD5":Ljava/lang/String;
    .end local v4    # "sourceMD5List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    const-string/jumbo v6, "template md5 getBytes error"

    goto/16 :goto_0
.end method

.method public getUIContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;
    .locals 1

    .prologue
    .line 805
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getUserTrackParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    return-object v0
.end method

.method public getWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;
    .locals 1

    .prologue
    .line 813
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getWXPerformance()Lcom/taobao/weex/common/WXPerformance;
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    return-object v0
.end method

.method public declared-synchronized getWXScrollListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/common/OnWXScrollListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1514
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollListeners:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    return-object v0
.end method

.method public getWXWebSocketAdapter()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 822
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXWebSocketAdapter()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getWeexHeight()I
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/RenderContainer;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getWeexWidth()I
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/RenderContainer;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    .line 388
    new-instance v0, Lcom/taobao/weex/bridge/NativeInvokeHelper;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/taobao/weex/bridge/NativeInvokeHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNativeInvokeHelper:Lcom/taobao/weex/bridge/NativeInvokeHelper;

    .line 390
    new-instance v0, Lcom/taobao/weex/common/WXPerformance;

    invoke-direct {v0}, Lcom/taobao/weex/common/WXPerformance;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    .line 391
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    sget-object v1, Lcom/taobao/weex/WXEnvironment;->WXSDK_VERSION:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/weex/common/WXPerformance;->WXSDKVersion:Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    sget-wide v2, Lcom/taobao/weex/WXEnvironment;->sJSLibInitTime:J

    iput-wide v2, v0, Lcom/taobao/weex/common/WXPerformance;->JSLibInitTime:J

    .line 394
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXUserTrackAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    .line 396
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    return-void
.end method

.method public isContentMd5Match()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 1939
    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 1959
    :cond_0
    :goto_0
    return v3

    .line 1942
    :cond_1
    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    const-string/jumbo v5, "Content-Md5"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1943
    .local v0, "contentMD5s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 1944
    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    const-string/jumbo v5, "content-md5"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "contentMD5s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v0, Ljava/util/List;

    .line 1946
    .restart local v0    # "contentMD5s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1949
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1951
    .local v1, "md5":Ljava/lang/String;
    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    const-string/jumbo v5, "templateSourceBase64MD5"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1952
    .local v2, "sourceBase64Md5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_3

    .line 1953
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getTemplateInfo()Ljava/lang/String;

    .line 1954
    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    const-string/jumbo v5, "templateSourceBase64MD5"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "sourceBase64Md5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v2, Ljava/util/List;

    .line 1956
    .restart local v2    # "sourceBase64Md5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1959
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public isDestroy()Z
    .locals 1

    .prologue
    .line 1440
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    return v0
.end method

.method public isLayerTypeEnabled()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->enableLayerType:Z

    return v0
.end method

.method public isNeedReLoad()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedReLoad:Z

    return v0
.end method

.method public isNeedValidate()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    return v0
.end method

.method public isPreRenderMode()Z
    .locals 1

    .prologue
    .line 834
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreRenderMode:Z

    return v0
.end method

.method public isTrackComponent()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->trackComponent:Z

    return v0
.end method

.method public moveFixedView(Landroid/view/View;)V
    .locals 2
    .param p1, "fixedChild"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1480
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    if-eqz v1, :cond_1

    .line 1482
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1483
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    if-eq v0, v1, :cond_1

    .line 1484
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1488
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    invoke-virtual {v1, p1}, Lcom/taobao/weex/RenderContainer;->addView(Landroid/view/View;)V

    .line 1491
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public newNestedInstance()Lcom/taobao/weex/WXSDKInstance;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 375
    new-instance v0, Lcom/taobao/weex/WXSDKInstance;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/weex/WXSDKInstance;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onActivityBack()Z
    .locals 1

    .prologue
    .line 1024
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityBack(Ljava/lang/String;)Z

    .line 1026
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityBack()Z

    move-result v0

    .line 1032
    :goto_0
    return v0

    .line 1029
    :cond_0
    const-string/jumbo v0, "Warning :Component tree has not build completely, onActivityBack can not be call!"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 1032
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreate()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityCreate(Ljava/lang/String;)V

    .line 886
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityCreate()V

    .line 892
    :goto_0
    new-instance v0, Lcom/taobao/weex/WXGlobalEventReceiver;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WXGlobalEventReceiver;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    .line 893
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "wx_global_action"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 894
    return-void

    .line 889
    :cond_0
    const-string/jumbo v0, "Warning :Component tree has not build completely,onActivityCreate can not be call!"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityDestroy(Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityDestroy()V

    .line 1018
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->destroy()V

    .line 1019
    return-void

    .line 1015
    :cond_0
    const-string/jumbo v0, "Warning :Component tree has not build completely, onActivityDestroy can not be call!"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityPause()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 922
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->onViewDisappear()V

    .line 923
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isCommit:Z

    if-nez v0, :cond_2

    .line 924
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/ui/component/WXComponentFactory;->getComponentTypesByInstanceId(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 925
    .local v6, "componentTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    const-string/jumbo v0, "scroller"

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iput v8, v0, Lcom/taobao/weex/common/WXPerformance;->useScroller:I

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getMaxDeepLayer()I

    move-result v1

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->maxDeepViewLayer:I

    .line 929
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mwxDims:[Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    .line 930
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->measureTimes:[J

    iput-object v1, v0, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    .line 931
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    if-eqz v0, :cond_1

    .line 932
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string/jumbo v3, "load"

    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getUserTrackParams()Ljava/util/Map;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/taobao/weex/adapter/IWXUserTrackAdapter;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXPerformance;Ljava/util/Map;)V

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->transferPerformance(Lcom/taobao/weex/common/WXPerformance;Ljava/lang/String;)V

    .line 935
    iput-boolean v8, p0, Lcom/taobao/weex/WXSDKInstance;->isCommit:Z

    .line 938
    .end local v6    # "componentTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityPause(Ljava/lang/String;)V

    .line 939
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_4

    .line 940
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityPause()V

    .line 945
    :goto_0
    const-string/jumbo v0, "Application onActivityPause()"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;)V

    .line 946
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    if-nez v0, :cond_3

    .line 947
    const-string/jumbo v0, "Application to be in the backround"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;)V

    .line 948
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "wx_global_action"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 949
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "eventName"

    const-string/jumbo v1, "WXApplicationWillResignActiveEvent"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 950
    const-string/jumbo v0, "wx_instanceid"

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 954
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 955
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 959
    :goto_1
    iput-boolean v8, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    .line 961
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_3
    return-void

    .line 942
    :cond_4
    const-string/jumbo v0, "Warning :Component tree has not build completely,onActivityPause can not be call!"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 957
    .restart local v7    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1057
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1059
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityResult(IILandroid/content/Intent;)V

    .line 1064
    :goto_0
    return-void

    .line 1062
    :cond_0
    const-string/jumbo v0, "Warning :Component tree has not build completely, onActivityResult can not be call!"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResume()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityResume(Ljava/lang/String;)V

    .line 970
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v1, :cond_1

    .line 971
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityResume()V

    .line 976
    :goto_0
    iget-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    if-eqz v1, :cond_0

    .line 977
    const-string/jumbo v1, "Application  to be in the foreground"

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;)V

    .line 978
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "wx_global_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 979
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "eventName"

    const-string/jumbo v2, "WXApplicationDidBecomeActiveEvent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 980
    const-string/jumbo v1, "wx_instanceid"

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 982
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 983
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 987
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    .line 990
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->onViewAppear()V

    .line 991
    return-void

    .line 973
    :cond_1
    const-string/jumbo v1, "Warning :Component tree has not build completely, onActivityResume can not be call!"

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 985
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onActivityStart()V
    .locals 1

    .prologue
    .line 900
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityStart(Ljava/lang/String;)V

    .line 901
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityStart()V

    .line 907
    :goto_0
    return-void

    .line 904
    :cond_0
    const-string/jumbo v0, "Warning :Component tree has not build completely,onActivityStart can not be call!"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityStop()V
    .locals 1

    .prologue
    .line 997
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityStop(Ljava/lang/String;)V

    .line 999
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityStop()V

    .line 1006
    :goto_0
    return-void

    .line 1002
    :cond_0
    const-string/jumbo v0, "Warning :Component tree has not build completely, onActivityStop can not be call!"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 1036
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 1037
    .local v0, "comp":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_0

    .line 1038
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    .line 1039
    .local v1, "events":Lcom/taobao/weex/dom/WXEvent;
    const-string/jumbo v5, "nativeback"

    invoke-virtual {v1, v5}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 1040
    .local v3, "hasNativeBackHook":Z
    if-eqz v3, :cond_1

    .line 1041
    const-string/jumbo v5, "nativeback"

    invoke-virtual {v0, v5, v7}, Lcom/taobao/weex/ui/component/WXComponent;->fireEventWait(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/bridge/EventResult;

    move-result-object v4

    .line 1042
    .local v4, "result":Lcom/taobao/weex/bridge/EventResult;
    invoke-virtual {v4}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1043
    const/4 v2, 0x1

    .line 1053
    .end local v1    # "events":Lcom/taobao/weex/dom/WXEvent;
    .end local v3    # "hasNativeBackHook":Z
    .end local v4    # "result":Lcom/taobao/weex/bridge/EventResult;
    :cond_0
    :goto_0
    return v2

    .line 1047
    .restart local v1    # "events":Lcom/taobao/weex/dom/WXEvent;
    .restart local v3    # "hasNativeBackHook":Z
    :cond_1
    const-string/jumbo v5, "clickbackitem"

    invoke-virtual {v1, v5}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 1048
    .local v2, "hasBackPressed":Z
    if-eqz v2, :cond_0

    .line 1049
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "clickbackitem"

    invoke-virtual {p0, v5, v6, v7, v7}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public onChangeElement(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .locals 8
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "isOutOfScreen"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1199
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    if-nez v4, :cond_1

    .line 1233
    :cond_0
    :goto_0
    return-void

    .line 1203
    :cond_1
    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    invoke-virtual {v4}, Lcom/taobao/weex/RenderContainer;->hasConsumeEvent()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1211
    .local v0, "lastElementChangeTime":J
    iget-boolean v4, p0, Lcom/taobao/weex/WXSDKInstance;->mHasCreateFinish:Z

    if-eqz v4, :cond_2

    .line 1212
    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v4, v4, Lcom/taobao/weex/common/WXPerformance;->renderTimeOrigin:J

    sub-long v4, v0, v4

    iget-object v6, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v6, v6, Lcom/taobao/weex/common/WXPerformance;->callCreateFinishTime:J

    sub-long v2, v4, v6

    .line 1213
    .local v2, "lazyLoadTime":J
    const-wide/16 v4, 0x1f40

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 1219
    .end local v2    # "lazyLoadTime":J
    :cond_2
    iget-boolean v4, p1, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    if-eqz v4, :cond_4

    .line 1220
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v4

    iget v5, v4, Lcom/taobao/weex/common/WXPerformance;->localInteractionViewAddCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/taobao/weex/common/WXPerformance;->localInteractionViewAddCount:I

    .line 1221
    if-nez p2, :cond_3

    .line 1222
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v4

    iget v5, v4, Lcom/taobao/weex/common/WXPerformance;->interactionViewAddLimitCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/taobao/weex/common/WXPerformance;->interactionViewAddLimitCount:I

    .line 1223
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p1, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    .line 1226
    :cond_4
    if-nez p2, :cond_0

    .line 1227
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v4

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v5

    iget v5, v5, Lcom/taobao/weex/common/WXPerformance;->localInteractionViewAddCount:I

    iput v5, v4, Lcom/taobao/weex/common/WXPerformance;->interactionViewAddCount:I

    .line 1228
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v6, v5, Lcom/taobao/weex/common/WXPerformance;->renderTimeOrigin:J

    sub-long v6, v0, v6

    iput-wide v6, v4, Lcom/taobao/weex/common/WXPerformance;->interactionTime:J

    goto :goto_0
.end method

.method public onComponentCreate(Lcom/taobao/weex/ui/component/WXComponent;J)V
    .locals 6
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "createTime"    # J

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementCount:I

    .line 1300
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementSumTime:I

    int-to-long v2, v1

    add-long/2addr v2, p2

    long-to-int v1, v2

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementSumTime:I

    .line 1301
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    if-nez v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsComponentCreateTime:I

    int-to-long v2, v1

    add-long/2addr v2, p2

    long-to-int v1, v2

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsComponentCreateTime:I

    .line 1303
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsComponentCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsComponentCount:I

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v2, v0, Lcom/taobao/weex/common/WXPerformance;->componentCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/taobao/weex/common/WXPerformance;->componentCount:J

    .line 1306
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v2, v0, Lcom/taobao/weex/common/WXPerformance;->componentCreateTime:J

    add-long/2addr v2, p2

    iput-wide v2, v0, Lcom/taobao/weex/common/WXPerformance;->componentCreateTime:J

    .line 1307
    return-void
.end method

.method public onCreateFinish()V
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1106
    new-instance v0, Lcom/taobao/weex/WXSDKInstance$4;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WXSDKInstance$4;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1123
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 911
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/taobao/weex/bridge/WXModuleManager;->onCreateOptionsMenu(Ljava/lang/String;Landroid/view/Menu;)Z

    .line 912
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 917
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 915
    :cond_0
    const-string/jumbo v0, "Warning :Component tree has not build completely,onActivityStart can not be call!"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onHttpStart()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1718
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    if-nez v0, :cond_0

    .line 1719
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsRequestNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsRequestNum:I

    .line 1721
    :cond_0
    return-void
.end method

.method public onJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/String;

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1251
    new-instance v0, Lcom/taobao/weex/WXSDKInstance$8;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/taobao/weex/WXSDKInstance$8;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1264
    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;)V
    .locals 0
    .param p1, "godView"    # Landroid/view/View;

    .prologue
    .line 1281
    return-void
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 1270
    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    .line 1271
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->onLayoutChange(Landroid/view/View;)V

    .line 1273
    :cond_1
    return-void
.end method

.method public onRefreshSuccess(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1183
    const-string/jumbo v0, "onRefreshSuccess"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/taobao/weex/WXSDKInstance;->mRefreshStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1184
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1185
    new-instance v0, Lcom/taobao/weex/WXSDKInstance$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/WXSDKInstance$6;-><init>(Lcom/taobao/weex/WXSDKInstance;II)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1195
    :cond_0
    return-void
.end method

.method public onRenderError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1237
    new-instance v0, Lcom/taobao/weex/WXSDKInstance$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/WXSDKInstance$7;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1247
    :cond_0
    return-void
.end method

.method public onRenderSuccess(II)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1138
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->firstScreenRenderFinished()V

    .line 1140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartTime:J

    sub-long v2, v4, v6

    .line 1141
    .local v2, "time":J
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->getRenderFinishTime(Ljava/lang/String;)[J

    move-result-object v0

    .line 1142
    .local v0, "renderFinishTime":[J
    const-string/jumbo v1, "onRenderSuccess"

    invoke-static {v1, v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1143
    const-string/jumbo v1, "   invokeCreateInstance"

    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v4, v4, Lcom/taobao/weex/common/WXPerformance;->communicateTime:J

    invoke-static {v1, v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1144
    const-string/jumbo v1, "   onRenderSuccessCallBridgeTime"

    aget-wide v4, v0, v8

    invoke-static {v1, v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1145
    const-string/jumbo v1, "   onRenderSuccessCssLayoutTime"

    aget-wide v4, v0, v9

    invoke-static {v1, v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1146
    const-string/jumbo v1, "   onRenderSuccessParseJsonTime"

    aget-wide v4, v0, v10

    invoke-static {v1, v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1148
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    aget-wide v4, v0, v8

    iput-wide v4, v1, Lcom/taobao/weex/common/WXPerformance;->callBridgeTime:J

    .line 1149
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    aget-wide v4, v0, v9

    iput-wide v4, v1, Lcom/taobao/weex/common/WXPerformance;->cssLayoutTime:J

    .line 1150
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    aget-wide v4, v0, v10

    iput-wide v4, v1, Lcom/taobao/weex/common/WXPerformance;->parseJsonTime:J

    .line 1152
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    long-to-double v4, v2

    iput-wide v4, v1, Lcom/taobao/weex/common/WXPerformance;->totalTime:D

    .line 1153
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v4, v1, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    long-to-double v4, v4

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, v4, v6

    if-gez v1, :cond_0

    .line 1154
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iput-wide v2, v1, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    .line 1156
    :cond_0
    const-string/jumbo v1, "weex_perf"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mComponentNum:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v6, v5, Lcom/taobao/weex/common/WXPerformance;->componentCount:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 1159
    new-instance v1, Lcom/taobao/weex/WXSDKInstance$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/taobao/weex/WXSDKInstance$5;-><init>(Lcom/taobao/weex/WXSDKInstance;II)V

    invoke-virtual {p0, v1}, Lcom/taobao/weex/WXSDKInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1177
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1178
    const-string/jumbo v1, "weex_perf"

    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-virtual {v4}, Lcom/taobao/weex/common/WXPerformance;->getPerfData()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    :cond_2
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 1069
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXModuleManager;->onRequestPermissionsResult(Ljava/lang/String;I[Ljava/lang/String;[I)V

    .line 1071
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1076
    :goto_0
    return-void

    .line 1074
    :cond_0
    const-string/jumbo v0, "Warning :Component tree has not build completely, onRequestPermissionsResult can not be call!"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRootCreated(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 2
    .param p1, "root"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1469
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    .line 1470
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    const/4 v1, 0x1

    iput v1, v0, Lcom/taobao/weex/ui/component/WXComponent;->mDeepInComponentTree:I

    .line 1471
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/RenderContainer;->addView(Landroid/view/View;)V

    .line 1472
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/RenderContainer;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    invoke-virtual {v1}, Lcom/taobao/weex/RenderContainer;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/WXSDKInstance;->setSize(II)V

    .line 1473
    return-void
.end method

.method public onUpdateFinish()V
    .locals 1

    .prologue
    .line 1129
    const-string/jumbo v0, "Instance onUpdateSuccess"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 1130
    return-void
.end method

.method public onViewAppear()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1094
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 1095
    .local v0, "comp":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_0

    .line 1096
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "viewappear"

    invoke-virtual {p0, v2, v3, v4, v4}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 1097
    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;

    .line 1098
    .local v1, "instance":Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;
    invoke-interface {v1}, Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;->onAppear()V

    goto :goto_0

    .line 1101
    .end local v1    # "instance":Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;
    :cond_0
    return-void
.end method

.method public onViewDisappear()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1083
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 1084
    .local v0, "comp":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_0

    .line 1085
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "viewdisappear"

    invoke-virtual {p0, v2, v3, v4, v4}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 1087
    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;

    .line 1088
    .local v1, "instance":Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;
    invoke-interface {v1}, Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;->onDisappear()V

    goto :goto_0

    .line 1091
    .end local v1    # "instance":Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;
    :cond_0
    return-void
.end method

.method public refreshInstance(Ljava/lang/String;)V
    .locals 3
    .param p1, "jsonData"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 754
    if-nez p1, :cond_0

    .line 766
    :goto_0
    return-void

    .line 757
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRefreshStartTime:J

    .line 759
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLastRefreshData:Lcom/taobao/weex/common/WXRefreshData;

    if-eqz v0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLastRefreshData:Lcom/taobao/weex/common/WXRefreshData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/taobao/weex/common/WXRefreshData;->isDirty:Z

    .line 763
    :cond_1
    new-instance v0, Lcom/taobao/weex/common/WXRefreshData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/taobao/weex/common/WXRefreshData;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLastRefreshData:Lcom/taobao/weex/common/WXRefreshData;

    .line 765
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mLastRefreshData:Lcom/taobao/weex/common/WXRefreshData;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/WXSDKManager;->refreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V

    goto :goto_0
.end method

.method public refreshInstance(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 743
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 747
    :goto_0
    return-void

    .line 746
    :cond_0
    invoke-static {p1}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->refreshInstance(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerActivityStateListener(Lcom/taobao/weex/IWXActivityStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/taobao/weex/IWXActivityStateListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 860
    return-void
.end method

.method public declared-synchronized registerOnWXScrollListener(Lcom/taobao/weex/common/OnWXScrollListener;)V
    .locals 1
    .param p1, "wxScrollListener"    # Lcom/taobao/weex/common/OnWXScrollListener;

    .prologue
    .line 1518
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollListeners:Ljava/util/List;

    .line 1521
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1522
    monitor-exit p0

    return-void

    .line 1518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerRenderListener(Lcom/taobao/weex/IWXRenderListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/taobao/weex/IWXRenderListener;

    .prologue
    .line 854
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    .line 855
    return-void
.end method

.method public registerScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V
    .locals 0
    .param p1, "scrollViewListener"    # Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 438
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    .line 439
    return-void
.end method

.method public registerStatisticsListener(Lcom/taobao/weex/IWXStatisticsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/taobao/weex/IWXStatisticsListener;

    .prologue
    .line 863
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    .line 864
    return-void
.end method

.method public reloadImages()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 827
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    .line 830
    :cond_0
    return-void
.end method

.method public reloadPage(Z)V
    .locals 3
    .param p1, "reloadThis"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 722
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->reload()V

    .line 724
    if-eqz p1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 726
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 727
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "INSTANCE_RELOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 736
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected removeEventListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 1622
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1626
    :goto_0
    return-void

    .line 1625
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected removeEventListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1612
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1619
    :cond_0
    :goto_0
    return-void

    .line 1615
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1616
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1617
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeFixedView(Landroid/view/View;)V
    .locals 1
    .param p1, "fixedChild"    # Landroid/view/View;

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/RenderContainer;->removeView(Landroid/view/View;)V

    .line 1497
    :cond_0
    return-void
.end method

.method public removeInActiveAddElmentAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-void
.end method

.method public removeLayerOverFlowListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    return-void
.end method

.method public removeOnInstanceVisibleListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V
    .locals 1
    .param p1, "l"    # Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 384
    return-void
.end method

.method public removeUserTrackParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1696
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    :cond_0
    return-void
.end method

.method public render(Ljava/lang/String;)V
    .locals 6
    .param p1, "template"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 661
    const-string/jumbo v1, "default"

    iget-object v5, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 662
    return-void
.end method

.method public render(Ljava/lang/String;II)V
    .locals 0
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 672
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method public render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IILcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 6
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "template"    # Ljava/lang/String;
    .param p4, "jsonInitData"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "flag"    # Lcom/taobao/weex/common/WXRenderStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 653
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 654
    return-void
.end method

.method public render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 2
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "template"    # Ljava/lang/String;
    .param p4, "jsonInitData"    # Ljava/lang/String;
    .param p5, "flag"    # Lcom/taobao/weex/common/WXRenderStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 512
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/common/WXPerformance;->beforeInstanceRender(Ljava/lang/String;)V

    .line 514
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    const-string/jumbo v0, "WXSDKInstance"

    const-string/jumbo v1, "Please set your pageName or your js bundle url !!!!!!!"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "Error: Missing pageName"

    .line 519
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "We highly recommend you to set pageName. Call\nWXSDKInstance#render(String pageName, String template, Map<String, Object> options, String jsonInitData, WXRenderStrategy flag)\nto fix it."

    .line 520
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 523
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/WXSDKInstance;->renderInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    goto :goto_0
.end method

.method public render(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p1, "template"    # Ljava/lang/String;
    .param p3, "jsonInitData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 467
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 468
    return-void
.end method

.method public render(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 6
    .param p1, "template"    # Ljava/lang/String;
    .param p3, "jsonInitData"    # Ljava/lang/String;
    .param p4, "flag"    # Lcom/taobao/weex/common/WXRenderStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 489
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "default"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 490
    return-void
.end method

.method public renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IILcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 6
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "jsonInitData"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "flag"    # Lcom/taobao/weex/common/WXRenderStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 687
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 688
    return-void
.end method

.method public renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 0
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "jsonInitData"    # Ljava/lang/String;
    .param p5, "flag"    # Lcom/taobao/weex/common/WXRenderStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 691
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/WXSDKInstance;->renderByUrlInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 692
    return-void
.end method

.method public rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p2, p1}, Lcom/taobao/weex/adapter/URIAdapter;->rewrite(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1134
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/taobao/weex/WXSDKManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 1135
    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 1
    .param p1, "bizType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 420
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iput-object p1, v0, Lcom/taobao/weex/common/WXPerformance;->bizType:Ljava/lang/String;

    .line 423
    :cond_0
    return-void
.end method

.method public setBundleUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1462
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 1463
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1464
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/WXValidateProcessor;->needValidate(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    .line 1466
    :cond_0
    return-void
.end method

.method public setComponentObserver(Lcom/taobao/weex/ComponentObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/taobao/weex/ComponentObserver;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mComponentObserver:Lcom/taobao/weex/ComponentObserver;

    .line 408
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 847
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    .line 848
    return-void
.end method

.method public setIWXUserTrackAdapter(Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/taobao/weex/adapter/IWXUserTrackAdapter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 448
    return-void
.end method

.method public setInstanceViewPortWidth(I)V
    .locals 0
    .param p1, "instanceViewPortWidth"    # I

    .prologue
    .line 328
    iput p1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:I

    .line 329
    return-void
.end method

.method public setMaxDeepLayer(I)V
    .locals 0
    .param p1, "maxDeepLayer"    # I

    .prologue
    .line 1705
    iput p1, p0, Lcom/taobao/weex/WXSDKInstance;->mMaxDeepLayer:I

    .line 1706
    return-void
.end method

.method public setMaxDomDeep(I)V
    .locals 1
    .param p1, "maxDomDeep"    # I

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    if-nez v0, :cond_1

    .line 1715
    :cond_0
    :goto_0
    return-void

    .line 1712
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v0, v0, Lcom/taobao/weex/common/WXPerformance;->maxDeepVDomLayer:I

    if-gt v0, p1, :cond_0

    .line 1713
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iput p1, v0, Lcom/taobao/weex/common/WXPerformance;->maxDeepVDomLayer:I

    goto :goto_0
.end method

.method public setMaxHiddenEmbedsNum(I)V
    .locals 0
    .param p1, "maxHiddenEmbedsNum"    # I

    .prologue
    .line 225
    iput p1, p0, Lcom/taobao/weex/WXSDKInstance;->maxHiddenEmbedsNum:I

    .line 226
    return-void
.end method

.method public setNeedLoad(Z)V
    .locals 0
    .param p1, "load"    # Z

    .prologue
    .line 324
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedReLoad:Z

    .line 325
    return-void
.end method

.method public setNestedInstanceInterceptor(Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;)V
    .locals 0
    .param p1, "interceptor"    # Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mNestedInstanceInterceptor:Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;

    .line 361
    return-void
.end method

.method public setPreRenderMode(Z)V
    .locals 4
    .param p1, "isPreRenderMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 838
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/WXSDKInstance$3;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/WXSDKInstance$3;-><init>(Lcom/taobao/weex/WXSDKInstance;Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 844
    return-void
.end method

.method public setRenderContainer(Lcom/taobao/weex/RenderContainer;)V
    .locals 2
    .param p1, "a"    # Lcom/taobao/weex/RenderContainer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 252
    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p1, p0}, Lcom/taobao/weex/RenderContainer;->setSDKInstance(Lcom/taobao/weex/WXSDKInstance;)V

    .line 254
    invoke-virtual {p1, p0}, Lcom/taobao/weex/RenderContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 257
    :cond_0
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    .line 258
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/RenderContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    .line 259
    invoke-virtual {v0}, Lcom/taobao/weex/RenderContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 260
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/WXSDKInstance$1;

    invoke-direct {v1, p0}, Lcom/taobao/weex/WXSDKInstance$1;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 274
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/WXSDKInstance$2;

    invoke-direct {v1, p0}, Lcom/taobao/weex/WXSDKInstance$2;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setRenderStartTime(J)V
    .locals 1
    .param p1, "renderStartTime"    # J

    .prologue
    .line 868
    iput-wide p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartTime:J

    .line 869
    return-void
.end method

.method public setRootScrollView(Landroid/widget/ScrollView;)V
    .locals 2
    .param p1, "scrollView"    # Landroid/widget/ScrollView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 430
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mScrollView:Landroid/widget/ScrollView;

    .line 431
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mScrollView:Landroid/widget/ScrollView;

    check-cast v0, Lcom/taobao/weex/ui/view/WXScrollView;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    .line 434
    :cond_0
    return-void
.end method

.method public setSize(II)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, -0x2

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 1525
    if-lez p1, :cond_2

    if-lez p2, :cond_3

    move v0, v1

    :goto_0
    iget-boolean v8, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    if-nez v8, :cond_4

    move v8, v1

    :goto_1
    and-int/2addr v0, v8

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRendered:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    if-eqz v0, :cond_2

    .line 1526
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/RenderContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1527
    .local v6, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v6, :cond_2

    .line 1528
    int-to-float v2, p1

    .line 1529
    .local v2, "realWidth":F
    int-to-float v3, p2

    .line 1530
    .local v3, "realHeight":F
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/RenderContainer;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/RenderContainer;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 1531
    :cond_0
    iput p1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1532
    iput p2, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1533
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/RenderContainer;

    invoke-virtual {v0, v6}, Lcom/taobao/weex/RenderContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1536
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_2

    if-eqz v6, :cond_2

    .line 1537
    iget v0, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v9, :cond_5

    move v4, v1

    .line 1538
    .local v4, "isWidthWrapContent":Z
    :goto_2
    iget v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v9, :cond_6

    move v5, v1

    .line 1540
    .local v5, "isHeightWrapContent":Z
    :goto_3
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v7

    new-instance v0, Lcom/taobao/weex/WXSDKInstance$12;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance$12;-><init>(Lcom/taobao/weex/WXSDKInstance;FFZZ)V

    invoke-virtual {v7, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 1550
    .end local v2    # "realWidth":F
    .end local v3    # "realHeight":F
    .end local v4    # "isWidthWrapContent":Z
    .end local v5    # "isHeightWrapContent":Z
    .end local v6    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    return-void

    :cond_3
    move v0, v7

    .line 1525
    goto :goto_0

    :cond_4
    move v8, v7

    goto :goto_1

    .restart local v2    # "realWidth":F
    .restart local v3    # "realHeight":F
    .restart local v6    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    move v4, v7

    .line 1537
    goto :goto_2

    .restart local v4    # "isWidthWrapContent":Z
    :cond_6
    move v5, v7

    .line 1538
    goto :goto_3
.end method

.method public setTemplate(Ljava/lang/String;)V
    .locals 1
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 1970
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->templateRef:Ljava/lang/ref/WeakReference;

    .line 1971
    return-void
.end method

.method public setTrackComponent(Z)V
    .locals 0
    .param p1, "trackComponent"    # Z

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->trackComponent:Z

    .line 284
    return-void
.end method

.method public setUseSandBox(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 213
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setSandBoxContext(Z)V

    .line 214
    return-void
.end method

.method public setUseSingleProcess(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 205
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setUseSingleProcess(Z)V

    .line 206
    return-void
.end method
