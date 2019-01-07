.class public Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;
.super Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;
.source "ImageMagicianImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/ImageMagician;
.implements Lcom/alibaba/doraemon/lifecycle/APPStateListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;,
        Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;,
        Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;,
        Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$MemoryStateReporter;,
        Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;
    }
.end annotation


# static fields
.field protected static final DOWNLOAD_FAILED:I = 0x2010

.field protected static final DOWNLOAD_SUCCESS:I = 0x1999

.field private static final LEVEL2_MEMORY_IMAGE_MAX_SIZE:I = 0x7d000

.field private static final TAG:Ljava/lang/String; = "ImageMagicianImpl"

.field private static final TAG_BACKGROUND:I = 0x19861103

.field private static final TAG_BACKGROUND_CACHED:I = 0x20100315

.field protected static final TAG_BACKGROUND_KEY:I = 0x20120718

.field private static final TAG_BACKGROUND_PRIMITIVE:I = 0x20150304

.field private static final TAG_BACKGROUND_REQ:I = 0x19861104

.field private static final TAG_DISPLAY_MODE:I = 0x20140305

.field private static final TAG_DISPLAY_MODE_BKG:I = 0x20150306

.field private static final TAG_DISPLAY_MODE_DWB:I = 0x20150307

.field private static final TAG_DRAWABLE:I = 0x19820625

.field private static final TAG_DRAWABLE_CACHED:I = 0x20140617

.field protected static final TAG_DRAWABLE_KEY:I = 0x19561111

.field private static final TAG_DRAWABLE_PRIMITIVE:I = 0x20150308

.field private static final TAG_DRAWABLE_REQ:I = 0x19820626

.field public static final TAG_GIF_MAX_SIZE:I = 0x20160307

.field protected static final TAG_PARENT:I = 0x19561212


# instance fields
.field private mAppImageDecoder:Lcom/alibaba/doraemon/image/ImageDecoder;

.field private mAppUrlParser:Lcom/alibaba/doraemon/image/UrlParser;

.field private mContextUrlparser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/image/UrlParser;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadingPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEnterBackgourndTask:Ljava/lang/Runnable;

.field private mEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/doraemon/image/ImageEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFastScrollListViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundActivity:Landroid/app/Activity;

.field private mImageFileCache:Lcom/alibaba/doraemon/impl/image/ImageCache;

.field private mListPool:Ljava/util/Map;
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

.field private mMainHandler:Landroid/os/Handler;

.field private mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

.field private mPreDownloadingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/request/Request;",
            ">;"
        }
    .end annotation
.end field

.field private mRes:Landroid/content/res/Resources;

.field private mResponseReceiver:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;

.field private mViewPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;-><init>()V

    .line 96
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mFastScrollListViews:Ljava/util/List;

    .line 102
    new-instance v3, Lcom/alibaba/doraemon/impl/image/UrlWithDataParser;

    invoke-direct {v3}, Lcom/alibaba/doraemon/impl/image/UrlWithDataParser;-><init>()V

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mAppUrlParser:Lcom/alibaba/doraemon/image/UrlParser;

    .line 103
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mContextUrlparser:Ljava/util/Map;

    .line 105
    new-instance v3, Lcom/alibaba/doraemon/impl/image/DefaultImageDecoder;

    invoke-direct {v3}, Lcom/alibaba/doraemon/impl/image/DefaultImageDecoder;-><init>()V

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mAppImageDecoder:Lcom/alibaba/doraemon/image/ImageDecoder;

    .line 109
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mListPool:Ljava/util/Map;

    .line 111
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mViewPool:Ljava/util/Map;

    .line 113
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mDownloadingPool:Ljava/util/Map;

    .line 115
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mPreDownloadingRequests:Ljava/util/Map;

    .line 117
    new-instance v3, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$1;

    invoke-direct {v3, p0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$1;-><init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)V

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mEnterBackgourndTask:Ljava/lang/Runnable;

    .line 129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mEventListeners:Ljava/util/ArrayList;

    .line 133
    new-instance v3, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-direct {v3, p1}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    .line 134
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    new-instance v4, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$MemoryStateReporter;

    invoke-direct {v4, p0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$MemoryStateReporter;-><init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->setStateListener(Lcom/alibaba/doraemon/impl/image/ImageMemoryStateListener;)V

    .line 136
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v5, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;

    invoke-direct {v5, p0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;-><init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)V

    invoke-direct {v3, v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMainHandler:Landroid/os/Handler;

    .line 137
    new-instance v3, Lcom/alibaba/doraemon/impl/image/ImageCache;

    invoke-direct {v3}, Lcom/alibaba/doraemon/impl/image/ImageCache;-><init>()V

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mImageFileCache:Lcom/alibaba/doraemon/impl/image/ImageCache;

    .line 138
    new-instance v3, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;

    invoke-direct {v3, p0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;-><init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)V

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mResponseReceiver:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mRes:Landroid/content/res/Resources;

    .line 140
    const-string/jumbo v3, "LIFECYCLE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 141
    .local v1, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    if-eqz v1, :cond_1

    .line 142
    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 143
    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 156
    :cond_0
    return-void

    .line 145
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 146
    .local v2, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v3, "ImageMagicianImpl"

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Warnning: lifecycleMonitor is null !!!"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 148
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "info":Ljava/lang/String;
    const-string/jumbo v3, "ImageMagicianImpl"

    invoke-static {v3, v0}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 152
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mEventListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Lcom/alibaba/doraemon/request/Request;II)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;
    .param p1, "x1"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->notifyRequestState(Lcom/alibaba/doraemon/request/Request;II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Lcom/alibaba/doraemon/request/Request;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;
    .param p1, "x1"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "x2"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->notifyRequestProgress(Lcom/alibaba/doraemon/request/Request;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mPreDownloadingRequests:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mForegroundActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 68
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->bindDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 68
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->bindBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Landroid/widget/AbsListView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;
    .param p1, "x1"    # Landroid/widget/AbsListView;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->listView2String(Landroid/widget/AbsListView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Lcom/alibaba/doraemon/request/Request;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;
    .param p1, "x1"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->getNotifyUrl(Lcom/alibaba/doraemon/request/Request;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Lcom/alibaba/doraemon/impl/image/ImageCache;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mImageFileCache:Lcom/alibaba/doraemon/impl/image/ImageCache;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mDownloadingPool:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/util/List;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->notifyError(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Lcom/alibaba/doraemon/image/ImageDecoder;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mAppImageDecoder:Lcom/alibaba/doraemon/image/ImageDecoder;

    return-object v0
.end method

.method private activity2String(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1120
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1121
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1122
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1124
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private bindBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "realDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "urlKey"    # Ljava/lang/String;
    .param p5, "displayMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1971
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1972
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    instance-of v0, v4, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    .line 1975
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1976
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_1
    move-object v0, p1

    move-object v1, p3

    move-object v2, p4

    move-object v3, p0

    move-object v5, p2

    move v6, p5

    .line 1979
    invoke-static/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->obtain(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Landroid/graphics/drawable/Drawable;Landroid/view/View;I)Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    move-result-object v7

    .line 1983
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    const v0, 0x19861103

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    .line 1984
    const v0, 0x19861104

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    .line 1986
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1987
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 1988
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1992
    :goto_0
    const v0, 0x20120718

    invoke-virtual {p2, v0, p4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1993
    const v0, 0x19861103

    invoke-virtual {p2, v0, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1994
    const v0, 0x19861104

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1995
    const v0, 0x20150306

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1996
    return-void

    .line 1990
    :cond_2
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private bindDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "realDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "urlKey"    # Ljava/lang/String;
    .param p5, "displayMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1946
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1947
    .local v4, "imageDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v0, v4, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    .line 1950
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1951
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_1
    move-object v0, p1

    move-object v1, p3

    move-object v2, p4

    move-object v3, p0

    move-object v5, p2

    move v6, p5

    .line 1954
    invoke-static/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->obtain(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Landroid/graphics/drawable/Drawable;Landroid/view/View;I)Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    move-result-object v7

    .line 1957
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    const v0, 0x19820625

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    .line 1958
    const v0, 0x19820626

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    .line 1960
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1961
    const v0, 0x19561111

    invoke-virtual {p2, v0, p4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1962
    const v0, 0x19820625

    invoke-virtual {p2, v0, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1963
    const v0, 0x19820626

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1964
    const v0, 0x20150307

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1965
    check-cast p2, Landroid/widget/ImageView;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1966
    return-void
.end method

.method private cancelBinded(Ljava/lang/Object;Landroid/view/View;)V
    .locals 4
    .param p1, "binded"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1010
    if-eqz p1, :cond_0

    .line 1011
    instance-of v2, p1, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    if-eqz v2, :cond_1

    .line 1013
    check-cast p1, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    .end local p1    # "binded":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->recycle()V

    .line 1036
    :cond_0
    :goto_0
    return-void

    .line 1015
    .restart local p1    # "binded":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/alibaba/doraemon/request/Request;

    if-eqz v2, :cond_0

    .line 1017
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mDownloadingPool:Ljava/util/Map;

    move-object v2, p1

    check-cast v2, Lcom/alibaba/doraemon/request/Request;

    invoke-interface {v2}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1018
    .local v1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v1, :cond_0

    .line 1020
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1022
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1024
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mDownloadingPool:Ljava/util/Map;

    move-object v2, p1

    check-cast v2, Lcom/alibaba/doraemon/request/Request;

    invoke-interface {v2}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    .line 1025
    check-cast v0, Lcom/alibaba/doraemon/request/Request;

    .line 1026
    .local v0, "request":Lcom/alibaba/doraemon/request/Request;
    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->isHugeDownload()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1027
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/request/Request;->cancel(Z)Z

    goto :goto_0

    .line 1029
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/request/Request;->cancel(Z)Z

    goto :goto_0
.end method

.method private getNotifyUrl(Lcom/alibaba/doraemon/request/Request;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 1004
    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getNotifyAuthUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getNotifyAuthUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getToCacheThread()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2260
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 2261
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "ImageMagicianImpl"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 2262
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 2264
    return-object v0
.end method

.method private listView2String(Landroid/widget/AbsListView;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;

    .prologue
    .line 1128
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyError(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "errCode"    # I
    .param p2, "errDes"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 924
    .local p4, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$3;

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$3;-><init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 949
    return-void
.end method

.method private notifyRequestProgress(Lcom/alibaba/doraemon/request/Request;I)V
    .locals 9
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "progress"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 952
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->getNotifyUrl(Lcom/alibaba/doraemon/request/Request;)Ljava/lang/String;

    move-result-object v3

    .line 953
    .local v3, "url":Ljava/lang/String;
    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    .line 954
    .local v4, "url2Key":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mDownloadingPool:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 956
    .local v6, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 957
    new-instance v2, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 958
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/image/ImageEventListener;>;"
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mEventListeners:Ljava/util/ArrayList;

    invoke-interface {v2, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 960
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 961
    .local v0, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 962
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageEventListener;

    .line 963
    .local v1, "listener":Lcom/alibaba/doraemon/image/ImageEventListener;
    if-eqz v1, :cond_0

    .line 964
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 965
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 966
    .local v5, "view":Landroid/view/View;
    invoke-interface {v1, v5, p2, v3}, Lcom/alibaba/doraemon/image/ImageEventListener;->onDownloadProgressListener(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_1

    .line 969
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    const/4 v7, 0x0

    invoke-interface {v1, v7, p2, v3}, Lcom/alibaba/doraemon/image/ImageEventListener;->onDownloadProgressListener(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0

    .line 974
    .end local v1    # "listener":Lcom/alibaba/doraemon/image/ImageEventListener;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 977
    .end local v0    # "iterator":Ljava/util/Iterator;
    .end local v2    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/image/ImageEventListener;>;"
    :cond_3
    return-void
.end method

.method private notifyRequestState(Lcom/alibaba/doraemon/request/Request;II)V
    .locals 10
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "state"    # I
    .param p3, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 980
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->getNotifyUrl(Lcom/alibaba/doraemon/request/Request;)Ljava/lang/String;

    move-result-object v3

    .line 981
    .local v3, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mDownloadingPool:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 983
    .local v8, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 984
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 985
    .local v2, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 986
    new-instance v7, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 987
    .local v7, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/image/ImageEventListener;>;"
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mEventListeners:Ljava/util/ArrayList;

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 989
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 990
    .local v6, "iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 991
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageEventListener;

    .line 992
    .local v0, "listener":Lcom/alibaba/doraemon/image/ImageEventListener;
    if-eqz v0, :cond_1

    .line 993
    int-to-long v4, p3

    move v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageEventListener;->onImageProcessListener(ILandroid/view/View;Ljava/lang/String;J)V

    goto :goto_1

    .line 997
    .end local v0    # "listener":Lcom/alibaba/doraemon/image/ImageEventListener;
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 1001
    .end local v2    # "view":Landroid/view/View;
    .end local v6    # "iterator":Ljava/util/Iterator;
    .end local v7    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/image/ImageEventListener;>;"
    :cond_3
    return-void
.end method

.method private setImage(Landroid/view/View;Ljava/lang/String;ZLandroid/widget/AbsListView;IZZZLjava/util/Map;Ljava/util/Map;)V
    .locals 34
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isBackground"    # Z
    .param p4, "lvParent"    # Landroid/widget/AbsListView;
    .param p5, "displayMode"    # I
    .param p6, "isClearDrawable"    # Z
    .param p7, "isJustFromLocal"    # Z
    .param p8, "isHugePic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/widget/AbsListView;",
            "IZZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p9, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p10, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 625
    const-string/jumbo v3, "ImageMagicianImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setImageDrawable has null param: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alibaba/doraemon/DoraemonLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 629
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionNotMainThread()V

    .line 631
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    .line 632
    .local v16, "context":Landroid/content/Context;
    move-object/from16 v0, v16

    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_2

    move-object/from16 v33, v16

    .line 633
    check-cast v33, Landroid/app/Activity;

    .line 635
    .local v33, "tmpActivity":Landroid/app/Activity;
    invoke-static/range {v33 .. v33}, Lcom/alibaba/doraemon/utils/CommonUtils;->isActivityActive(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 636
    const-string/jumbo v3, "ImageMagicianImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "View Context"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is destroyed or finished !!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 639
    const-string/jumbo v3, "ImageMagicianImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "View Context"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is destroyed or finished !!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 646
    .end local v33    # "tmpActivity":Landroid/app/Activity;
    :cond_2
    const-string/jumbo v3, "ImageMagicianImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "context is not Activity view="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v5

    if-ne v3, v5, :cond_3

    .line 649
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v17

    .line 650
    .local v17, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v5, " Context is not Activity"

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 651
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 656
    .end local v17    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_3
    if-eqz p3, :cond_5

    .line 657
    const v3, 0x20100315

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 658
    const v3, 0x20100315

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 659
    const v3, 0x20150304

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 668
    :cond_4
    :goto_1
    if-nez p2, :cond_6

    .line 670
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->unBindedImage(Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 662
    :cond_5
    const v3, 0x20140617

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 663
    const v3, 0x20140617

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 664
    const v5, 0x20150308

    move-object/from16 v3, p1

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 674
    :cond_6
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->url2Key(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 675
    .local v7, "urlKey":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 685
    if-eqz p3, :cond_9

    .line 686
    const v3, 0x19861103

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v23

    .line 687
    .local v23, "existingBindedImg":Ljava/lang/Object;
    const v3, 0x19861104

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v24

    .line 688
    .local v24, "existingBindedReq":Ljava/lang/Object;
    const v3, 0x20120718

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 689
    .local v15, "bindedUrlKey":Ljava/lang/String;
    const v3, 0x20150306

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 690
    .local v18, "displayModeTag":Ljava/lang/Integer;
    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 700
    .local v14, "bindedDisplayMode":I
    :goto_2
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    move/from16 v0, p5

    if-ne v0, v14, :cond_e

    .line 703
    move-object/from16 v0, v23

    instance-of v3, v0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    if-nez v3, :cond_7

    move-object/from16 v0, v24

    instance-of v3, v0, Lcom/alibaba/doraemon/request/Request;

    if-eqz v3, :cond_e

    .line 707
    :cond_7
    move-object/from16 v0, v23

    instance-of v3, v0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    if-eqz v3, :cond_0

    .line 710
    if-eqz p3, :cond_b

    .line 711
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 716
    .local v29, "newDrawable":Landroid/graphics/drawable/Drawable;
    :goto_3
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_0

    .line 717
    if-eqz p3, :cond_d

    .line 718
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v3, v5, :cond_c

    move-object/from16 v3, v23

    .line 719
    check-cast v3, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 725
    .end local p1    # "view":Landroid/view/View;
    :goto_4
    check-cast v23, Landroid/graphics/drawable/Drawable;

    .end local v23    # "existingBindedImg":Ljava/lang/Object;
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v32

    .line 727
    .local v32, "tmp":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v32

    instance-of v3, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_0

    .line 728
    check-cast v32, Landroid/graphics/drawable/Animatable;

    .end local v32    # "tmp":Landroid/graphics/drawable/Drawable;
    invoke-interface/range {v32 .. v32}, Landroid/graphics/drawable/Animatable;->start()V

    goto/16 :goto_0

    .line 690
    .end local v14    # "bindedDisplayMode":I
    .end local v29    # "newDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v23    # "existingBindedImg":Ljava/lang/Object;
    .restart local p1    # "view":Landroid/view/View;
    :cond_8
    const/4 v14, 0x0

    goto :goto_2

    .line 693
    .end local v15    # "bindedUrlKey":Ljava/lang/String;
    .end local v18    # "displayModeTag":Ljava/lang/Integer;
    .end local v23    # "existingBindedImg":Ljava/lang/Object;
    .end local v24    # "existingBindedReq":Ljava/lang/Object;
    :cond_9
    const v3, 0x19561111

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 694
    .restart local v15    # "bindedUrlKey":Ljava/lang/String;
    const v3, 0x19820625

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v23

    .line 695
    .restart local v23    # "existingBindedImg":Ljava/lang/Object;
    const v3, 0x19820626

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v24

    .line 696
    .restart local v24    # "existingBindedReq":Ljava/lang/Object;
    const v3, 0x20150307

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 697
    .restart local v18    # "displayModeTag":Ljava/lang/Integer;
    if-eqz v18, :cond_a

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .restart local v14    # "bindedDisplayMode":I
    :goto_5
    goto :goto_2

    .end local v14    # "bindedDisplayMode":I
    :cond_a
    const/4 v14, 0x0

    goto :goto_5

    .restart local v14    # "bindedDisplayMode":I
    :cond_b
    move-object/from16 v3, p1

    .line 713
    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .restart local v29    # "newDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    :cond_c
    move-object/from16 v3, v23

    .line 721
    check-cast v3, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 723
    :cond_d
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    move-object/from16 v3, v23

    check-cast v3, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 738
    .end local v29    # "newDrawable":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "view":Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->setParentStateListener(Landroid/view/View;Landroid/widget/AbsListView;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    move/from16 v0, p5

    invoke-virtual {v3, v7, v0}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->hireBitmap(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 742
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_10

    .line 743
    if-eqz p3, :cond_f

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v8, p5

    .line 744
    invoke-direct/range {v3 .. v8}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->bindBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v8, p5

    .line 746
    invoke-direct/range {v3 .. v8}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->bindDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 752
    :cond_10
    const v3, 0x19561212

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v30

    .line 753
    .local v30, "parent":Ljava/lang/Object;
    const/16 v28, 0x0

    .line 754
    .local v28, "isFastScroll":Z
    move-object/from16 v0, v30

    instance-of v3, v0, Landroid/widget/AbsListView;

    if-eqz v3, :cond_11

    .line 755
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mFastScrollListViews:Ljava/util/List;

    move-object/from16 v3, v30

    check-cast v3, Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->listView2String(Landroid/widget/AbsListView;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    .line 761
    :cond_11
    if-nez v28, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-virtual {v3, v7}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->hasBitmapBytes(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-virtual {v3, v7}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->getBitmapBytes(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;

    move-result-object v21

    .line 767
    .local v21, "drawableBytes":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mAppImageDecoder:Lcom/alibaba/doraemon/image/ImageDecoder;

    if-nez v3, :cond_12

    .line 768
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "image decoder is null"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 771
    :cond_12
    if-eqz v21, :cond_16

    .line 772
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    invoke-interface {v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->isClosed()Z

    move-result v3

    if-nez v3, :cond_16

    .line 773
    const/16 v25, 0x0

    .line 775
    .local v25, "imageInputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    :try_start_0
    new-instance v26, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;

    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v3

    .line 776
    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v3

    new-instance v5, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    invoke-direct {v5, v6}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;-><init>(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;)V

    invoke-interface {v3, v5}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newByteBuffer(Ljava/io/InputStream;)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;-><init>(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    .end local v25    # "imageInputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    .local v26, "imageInputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mAppImageDecoder:Lcom/alibaba/doraemon/image/ImageDecoder;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-interface {v3, v0, v1, v2}, Lcom/alibaba/doraemon/image/ImageDecoder;->decode(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v9

    .line 780
    .local v9, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v9, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    move/from16 v0, p5

    invoke-virtual {v3, v7, v0}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->hasBitmap(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_15

    .line 781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    move/from16 v0, p5

    invoke-virtual {v3, v7, v0, v9}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->remandBitmap(Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;)V

    .line 782
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    move/from16 v0, p5

    invoke-virtual {v3, v7, v0}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->hireBitmap(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v9

    .line 784
    if-eqz v9, :cond_15

    .line 785
    if-eqz p3, :cond_13

    move-object/from16 v8, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object v12, v7

    move/from16 v13, p5

    .line 786
    invoke-direct/range {v8 .. v13}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->bindBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 804
    :goto_6
    :try_start_2
    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/doraemon/image/ImageInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 805
    :catch_0
    move-exception v22

    .line 806
    .local v22, "e":Ljava/io/IOException;
    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .end local v22    # "e":Ljava/io/IOException;
    :cond_13
    move-object/from16 v8, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object v12, v7

    move/from16 v13, p5

    .line 788
    :try_start_3
    invoke-direct/range {v8 .. v13}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->bindDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    .line 794
    .end local v9    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_1
    move-exception v22

    move-object/from16 v25, v26

    .line 795
    .end local v26    # "imageInputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    .local v22, "e":Ljava/lang/OutOfMemoryError;
    .restart local v25    # "imageInputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    :goto_7
    const/4 v5, -0x1

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Decode OutOfMemoryError\t url: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "\t displayMode: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "\n in Activity: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 797
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mDownloadingPool:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 795
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v6, v1, v3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->notifyError(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 798
    throw v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 802
    .end local v22    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v3

    :goto_8
    if-eqz v25, :cond_14

    .line 804
    :try_start_5
    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/doraemon/image/ImageInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 807
    :cond_14
    :goto_9
    throw v3

    .line 804
    .end local v25    # "imageInputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    .restart local v9    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v26    # "imageInputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    :cond_15
    :try_start_6
    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/doraemon/image/ImageInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 814
    .end local v9    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v21    # "drawableBytes":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;
    .end local v26    # "imageInputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    :cond_16
    :goto_a
    const/16 v27, 0x0

    .line 815
    .local v27, "imageRequest":Lcom/alibaba/doraemon/request/Request;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mDownloadingPool:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .line 816
    .local v20, "downloadings":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-nez v20, :cond_20

    .line 817
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mPreDownloadingRequests:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "imageRequest":Lcom/alibaba/doraemon/request/Request;
    check-cast v27, Lcom/alibaba/doraemon/request/Request;

    .line 818
    .restart local v27    # "imageRequest":Lcom/alibaba/doraemon/request/Request;
    new-instance v20, Ljava/util/ArrayList;

    .end local v20    # "downloadings":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 819
    .restart local v20    # "downloadings":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mDownloadingPool:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    :cond_17
    :goto_b
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 835
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    :cond_18
    if-eqz v27, :cond_19

    invoke-interface/range {v27 .. v27}, Lcom/alibaba/doraemon/request/Request;->isReadCacheOnly()Z

    move-result v3

    if-eqz v3, :cond_23

    if-nez p7, :cond_23

    .line 840
    :cond_19
    const-string/jumbo v3, "REQUEST"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "imageRequest":Lcom/alibaba/doraemon/request/Request;
    check-cast v27, Lcom/alibaba/doraemon/request/Request;

    .line 842
    .restart local v27    # "imageRequest":Lcom/alibaba/doraemon/request/Request;
    if-eqz v27, :cond_0

    .line 847
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 848
    .local v19, "displayModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    move-object/from16 v0, v27

    invoke-interface {v0, v7}, Lcom/alibaba/doraemon/request/Request;->setCacheKey(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v3

    const v5, 0x20140305

    move-object/from16 v0, v19

    invoke-interface {v3, v5, v0}, Lcom/alibaba/doraemon/request/Request;->setTag(ILjava/lang/Object;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mImageFileCache:Lcom/alibaba/doraemon/impl/image/ImageCache;

    .line 850
    invoke-interface {v3, v5}, Lcom/alibaba/doraemon/request/Request;->setCacheClient(Lcom/alibaba/doraemon/request/CacheClient;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v3

    .line 851
    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v3

    sget-object v5, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v3, v5}, Lcom/alibaba/doraemon/request/Request;->setPriority(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v3

    .line 852
    move/from16 v0, p7

    invoke-interface {v3, v0}, Lcom/alibaba/doraemon/request/Request;->setReadCacheOnly(Z)Lcom/alibaba/doraemon/request/Request;

    move-result-object v3

    .line 853
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/alibaba/doraemon/request/Request;->setPerfTag(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mResponseReceiver:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;

    .line 854
    invoke-interface {v3, v5}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 855
    if-eqz p9, :cond_1a

    .line 856
    move-object/from16 v0, v27

    move-object/from16 v1, p9

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setRequestParams(Ljava/util/Map;)Lcom/alibaba/doraemon/request/Request;

    .line 857
    :cond_1a
    if-eqz p10, :cond_1b

    .line 858
    move-object/from16 v0, v27

    move-object/from16 v1, p10

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setRequestHeaders(Ljava/util/Map;)Lcom/alibaba/doraemon/request/Request;

    .line 860
    :cond_1b
    if-eqz p8, :cond_1c

    .line 861
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/doraemon/request/Request;->markHugeDownload()Lcom/alibaba/doraemon/request/Request;

    .line 863
    :cond_1c
    move-object/from16 v0, v30

    instance-of v3, v0, Landroid/content/Context;

    if-eqz v3, :cond_22

    .line 864
    check-cast v30, Landroid/content/Context;

    .end local v30    # "parent":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->activity2String(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/request/Request;->addReqest2Group(Ljava/lang/String;)V

    .line 869
    :goto_c
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/doraemon/request/Request;->start()V

    .line 880
    .end local v19    # "displayModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_d
    if-eqz p3, :cond_26

    .line 881
    if-eqz p6, :cond_1d

    .line 882
    const v3, 0x19861103

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    .line 883
    const v3, 0x19861103

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 884
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v3, v5, :cond_25

    .line 885
    const v3, 0x20150304

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 889
    :cond_1d
    :goto_e
    const v3, 0x19861104

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    .line 891
    const v3, 0x20120718

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 892
    const v3, 0x19861104

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 893
    const v3, 0x20150306

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 910
    :goto_f
    const v3, 0x20140305

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/request/Request;->getTag(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 911
    .restart local v19    # "displayModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v19, :cond_1e

    .line 912
    new-instance v19, Ljava/util/ArrayList;

    .end local v19    # "displayModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 913
    .restart local v19    # "displayModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v3, 0x20140305

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lcom/alibaba/doraemon/request/Request;->setTag(ILjava/lang/Object;)Lcom/alibaba/doraemon/request/Request;

    .line 916
    :cond_1e
    monitor-enter v19

    .line 917
    :try_start_7
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 918
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    :cond_1f
    monitor-exit v19

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3

    .line 805
    .end local v19    # "displayModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "downloadings":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v27    # "imageRequest":Lcom/alibaba/doraemon/request/Request;
    .restart local v9    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v21    # "drawableBytes":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;
    .restart local v26    # "imageInputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    .restart local v30    # "parent":Ljava/lang/Object;
    :catch_2
    move-exception v22

    .line 806
    .local v22, "e":Ljava/io/IOException;
    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 799
    .end local v9    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v22    # "e":Ljava/io/IOException;
    .end local v26    # "imageInputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    .restart local v25    # "imageInputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    :catch_3
    move-exception v22

    .line 800
    .restart local v22    # "e":Ljava/io/IOException;
    :goto_10
    :try_start_8
    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 802
    if-eqz v25, :cond_16

    .line 804
    :try_start_9
    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/doraemon/image/ImageInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_a

    .line 805
    :catch_4
    move-exception v22

    .line 806
    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 805
    .end local v22    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v22

    .line 806
    .restart local v22    # "e":Ljava/io/IOException;
    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 822
    .end local v21    # "drawableBytes":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;
    .end local v22    # "e":Ljava/io/IOException;
    .end local v25    # "imageInputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    .restart local v20    # "downloadings":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .restart local v27    # "imageRequest":Lcom/alibaba/doraemon/request/Request;
    :cond_20
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const v5, 0x19861104

    invoke-virtual {v3, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/alibaba/doraemon/request/Request;

    .line 823
    .local v31, "request":Lcom/alibaba/doraemon/request/Request;
    if-eqz v31, :cond_21

    invoke-interface/range {v31 .. v31}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 824
    move-object/from16 v27, v31

    goto/16 :goto_b

    .line 827
    :cond_21
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const v5, 0x19820626

    invoke-virtual {v3, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "request":Lcom/alibaba/doraemon/request/Request;
    check-cast v31, Lcom/alibaba/doraemon/request/Request;

    .line 828
    .restart local v31    # "request":Lcom/alibaba/doraemon/request/Request;
    if-eqz v31, :cond_17

    invoke-interface/range {v31 .. v31}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 829
    move-object/from16 v27, v31

    goto/16 :goto_b

    .line 866
    .end local v31    # "request":Lcom/alibaba/doraemon/request/Request;
    .restart local v19    # "displayModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_22
    check-cast v30, Landroid/widget/AbsListView;

    .end local v30    # "parent":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->listView2String(Landroid/widget/AbsListView;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/request/Request;->addReqest2Group(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 873
    .end local v19    # "displayModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v30    # "parent":Ljava/lang/Object;
    :cond_23
    move-object/from16 v0, v30

    instance-of v3, v0, Landroid/content/Context;

    if-eqz v3, :cond_24

    .line 874
    check-cast v30, Landroid/content/Context;

    .end local v30    # "parent":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->activity2String(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/request/Request;->addReqest2Group(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 876
    .restart local v30    # "parent":Ljava/lang/Object;
    :cond_24
    check-cast v30, Landroid/widget/AbsListView;

    .end local v30    # "parent":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->listView2String(Landroid/widget/AbsListView;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/request/Request;->addReqest2Group(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 887
    :cond_25
    const v3, 0x20150304

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_e

    .line 895
    :cond_26
    if-eqz p6, :cond_27

    .line 896
    const v3, 0x19820625

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    .line 897
    const v3, 0x19820625

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 898
    move-object/from16 v0, p1

    instance-of v3, v0, Landroid/widget/ImageView;

    if-eqz v3, :cond_27

    move-object/from16 v3, p1

    .line 899
    check-cast v3, Landroid/widget/ImageView;

    const v5, 0x20150308

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 903
    :cond_27
    const v3, 0x19820626

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    .line 904
    const v3, 0x19561111

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 905
    const v3, 0x19820626

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 906
    const v3, 0x20150307

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_f

    .line 802
    .end local v20    # "downloadings":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v27    # "imageRequest":Lcom/alibaba/doraemon/request/Request;
    .restart local v21    # "drawableBytes":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;
    .restart local v26    # "imageInputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    .restart local v30    # "parent":Ljava/lang/Object;
    :catchall_2
    move-exception v3

    move-object/from16 v25, v26

    .end local v26    # "imageInputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    .restart local v25    # "imageInputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    goto/16 :goto_8

    .line 799
    .end local v25    # "imageInputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    .restart local v26    # "imageInputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    :catch_6
    move-exception v22

    move-object/from16 v25, v26

    .end local v26    # "imageInputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    .restart local v25    # "imageInputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    goto/16 :goto_10

    .line 794
    :catch_7
    move-exception v22

    goto/16 :goto_7
.end method

.method private setParentStateListener(Landroid/view/View;Landroid/widget/AbsListView;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lvParent"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v7, 0x19561212

    .line 1079
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1082
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 1084
    .local v5, "parent":Ljava/lang/Object;
    if-nez v5, :cond_4

    .line 1087
    move-object v5, p2

    .local v5, "parent":Landroid/widget/AbsListView;
    if-nez p2, :cond_0

    .line 1088
    move-object v5, v1

    .line 1089
    .end local v5    # "parent":Landroid/widget/AbsListView;
    :cond_0
    invoke-virtual {p1, v7, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1092
    invoke-direct {p0, v1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->activity2String(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1093
    .local v0, "activityString":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mViewPool:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1094
    .local v6, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-nez v6, :cond_1

    .line 1095
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1096
    .restart local v6    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mViewPool:Ljava/util/Map;

    invoke-interface {v7, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    :cond_1
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, v5

    .line 1101
    .end local v0    # "activityString":Ljava/lang/String;
    .end local v6    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :goto_0
    instance-of v7, v8, Landroid/widget/AbsListView;

    if-eqz v7, :cond_3

    move-object v7, v8

    check-cast v7, Landroid/widget/AbsListView;

    const-class v9, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;

    invoke-static {v7, v9}, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->examHookedbyClass(Landroid/widget/AbsListView;Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v8

    .line 1103
    check-cast v7, Landroid/widget/AbsListView;

    new-instance v9, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;

    invoke-direct {v9, p0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;-><init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)V

    invoke-static {v7, v9}, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->hookScrollListener(Landroid/widget/AbsListView;Lcom/alibaba/doraemon/utils/ScrollListenerHooker$OnScrollHookListener;)V

    .line 1105
    invoke-direct {p0, v1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->activity2String(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1106
    .local v2, "contextString":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mListPool:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1107
    .local v4, "listViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v4, :cond_2

    .line 1108
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "listViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1109
    .restart local v4    # "listViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mListPool:Ljava/util/Map;

    invoke-interface {v7, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    :cond_2
    check-cast v8, Landroid/widget/AbsListView;

    invoke-direct {p0, v8}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->listView2String(Landroid/widget/AbsListView;)Ljava/lang/String;

    move-result-object v3

    .line 1112
    .local v3, "listString":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1113
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1116
    .end local v2    # "contextString":Ljava/lang/String;
    .end local v3    # "listString":Ljava/lang/String;
    .end local v4    # "listViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-void

    .local v5, "parent":Ljava/lang/Object;
    :cond_4
    move-object v8, v5

    goto :goto_0
.end method

.method private unBindedImage(Landroid/view/View;Z)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isBackground"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v6, 0x19861104

    const v5, 0x19861103

    const v4, 0x19820626

    const v2, 0x19820625

    const/4 v3, 0x0

    .line 1042
    if-eqz p2, :cond_2

    .line 1043
    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1044
    .local v0, "bindedImg":Ljava/lang/Object;
    invoke-virtual {p1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 1045
    .local v1, "bindedReq":Ljava/lang/Object;
    const v2, 0x20120718

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1046
    invoke-virtual {p1, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1047
    invoke-virtual {p1, v6, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1048
    const v2, 0x20150306

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1049
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 1050
    const v2, 0x20150304

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1064
    :cond_0
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    .line 1065
    invoke-direct {p0, v1, p1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    .line 1067
    return-void

    .line 1052
    :cond_1
    const v2, 0x20150304

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1054
    .end local v0    # "bindedImg":Ljava/lang/Object;
    .end local v1    # "bindedReq":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1055
    .restart local v0    # "bindedImg":Ljava/lang/Object;
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 1056
    .restart local v1    # "bindedReq":Ljava/lang/Object;
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1057
    invoke-virtual {p1, v4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1058
    const v2, 0x19561111

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1059
    const v2, 0x20150307

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1060
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 1061
    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x20150308

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private url2Key(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1133
    const/4 v3, 0x0

    .line 1134
    .local v3, "urlParser":Lcom/alibaba/doraemon/image/UrlParser;
    if-eqz p1, :cond_0

    .line 1135
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1136
    .local v0, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mContextUrlparser:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->activity2String(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "urlParser":Lcom/alibaba/doraemon/image/UrlParser;
    check-cast v3, Lcom/alibaba/doraemon/image/UrlParser;

    .line 1138
    .end local v0    # "context":Landroid/content/Context;
    .restart local v3    # "urlParser":Lcom/alibaba/doraemon/image/UrlParser;
    :cond_0
    const/4 v2, 0x0

    .line 1139
    .local v2, "urlKey":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1140
    invoke-interface {v3, p1, p2}, Lcom/alibaba/doraemon/image/UrlParser;->url2Key(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1146
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 1147
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 1148
    .local v1, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v4, "url 2 key result is null,urlparser: "

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1149
    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1150
    const-string/jumbo v4, "|"

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1151
    const-string/jumbo v4, "appUrlParser:"

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1152
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mAppUrlParser:Lcom/alibaba/doraemon/image/UrlParser;

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1153
    const-string/jumbo v4, "ImageMagicianImpl"

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    .end local v1    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_2
    return-object v2

    .line 1142
    :cond_3
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mAppUrlParser:Lcom/alibaba/doraemon/image/UrlParser;

    if-eqz v4, :cond_1

    .line 1143
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mAppUrlParser:Lcom/alibaba/doraemon/image/UrlParser;

    invoke-interface {v4, p1, p2}, Lcom/alibaba/doraemon/image/UrlParser;->url2Key(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public cancelPreDownloadImage(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 298
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionNotMainThread()V

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->url2Key(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "url2Key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mPreDownloadingRequests:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/Request;

    .line 307
    .local v0, "request":Lcom/alibaba/doraemon/request/Request;
    if-eqz v0, :cond_0

    .line 308
    invoke-interface {v0, p3}, Lcom/alibaba/doraemon/request/Request;->cancel(Z)Z

    .line 309
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mPreDownloadingRequests:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public cancelPreDownloadImage(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelPreDownloadImage(Landroid/view/View;Ljava/lang/String;Z)V

    .line 241
    return-void
.end method

.method public clearDiskCache()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 417
    const-string/jumbo v1, "IMAGECACHE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 418
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    invoke-interface {v0}, Lcom/alibaba/doraemon/cache/Cache;->clear()Z

    move-result v1

    return v1
.end method

.method public clearMemoryCache(F)V
    .locals 1
    .param p1, "rate"    # F

    .prologue
    .line 411
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionNotMainThread()V

    .line 412
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->forceGC(F)V

    .line 413
    return-void
.end method

.method public clearMemoryCache(J)V
    .locals 1
    .param p1, "maxToKeep"    # J

    .prologue
    .line 405
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionNotMainThread()V

    .line 406
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->forceGC(J)V

    .line 407
    return-void
.end method

.method public cloneBitmpaInCache(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Landroid/view/View;)V
    .locals 6
    .param p1, "newUrl"    # Ljava/lang/String;
    .param p2, "newView"    # Landroid/view/View;
    .param p3, "oldUrl"    # Ljava/lang/String;
    .param p4, "oldView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2199
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cloneBitmpaInCache(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Landroid/view/View;I)V

    .line 2200
    return-void
.end method

.method public cloneBitmpaInCache(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Landroid/view/View;I)V
    .locals 3
    .param p1, "newUrl"    # Ljava/lang/String;
    .param p2, "newView"    # Landroid/view/View;
    .param p3, "oldUrl"    # Ljava/lang/String;
    .param p4, "oldView"    # Landroid/view/View;
    .param p5, "displayMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2227
    :cond_0
    :goto_0
    return-void

    .line 2215
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionNotMainThread()V

    .line 2217
    invoke-direct {p0, p2, p1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->url2Key(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2218
    .local v0, "newUrlKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2221
    invoke-direct {p0, p4, p3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->url2Key(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2222
    .local v1, "oldUrlKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2226
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-virtual {v2, v0, v1, p5}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->cloneBitmap(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public cloneBitmpaInCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "newUrl"    # Ljava/lang/String;
    .param p2, "oldUrl"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2194
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cloneBitmpaInCache(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Landroid/view/View;)V

    .line 2195
    return-void
.end method

.method public cloneBitmpaInCache(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "newUrl"    # Ljava/lang/String;
    .param p2, "oldUrl"    # Ljava/lang/String;
    .param p3, "displayMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2205
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cloneBitmpaInCache(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Landroid/view/View;I)V

    .line 2206
    return-void
.end method

.method public dumpImageMemory()Lcom/alibaba/doraemon/image/ImageMemoryStatus;
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 429
    iget-object v12, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-virtual {v12}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->dumpMemoryInfo()Lcom/alibaba/doraemon/image/ImageMemoryStatus;

    move-result-object v3

    .line 430
    .local v3, "bitmapReferences":Lcom/alibaba/doraemon/image/ImageMemoryStatus;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 431
    .local v4, "bitmapStatusMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;>;"
    iget-object v12, v3, Lcom/alibaba/doraemon/image/ImageMemoryStatus;->mBitmapStatus:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;

    .line 432
    .local v5, "bs":Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v5, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v5, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;->mDisplayMode:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 435
    .end local v5    # "bs":Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;
    :cond_0
    iget-object v12, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mViewPool:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 436
    .local v2, "activitys":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/view/View;>;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 437
    .local v0, "activity":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/view/View;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 438
    .local v10, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 439
    .local v1, "activityName":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 440
    .local v9, "view":Landroid/view/View;
    const v14, 0x20120718

    invoke-virtual {v9, v14}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 441
    .local v7, "key":Ljava/lang/String;
    const v14, 0x20150306

    invoke-virtual {v9, v14}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 442
    .local v8, "tmp":Ljava/lang/Integer;
    if-nez v8, :cond_8

    move v6, v11

    .line 443
    .local v6, "displayMode":I
    :goto_2
    if-eqz v7, :cond_5

    .line 444
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;

    .line 445
    .restart local v5    # "bs":Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;
    if-eqz v5, :cond_5

    .line 446
    iget-object v14, v5, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;->mViews:Ljava/util/List;

    if-nez v14, :cond_3

    .line 447
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v5, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;->mViews:Ljava/util/List;

    .line 448
    :cond_3
    iget-object v14, v5, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;->mViews:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v14, v5, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;->mActivitys:Ljava/util/List;

    if-nez v14, :cond_4

    .line 450
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v5, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;->mActivitys:Ljava/util/List;

    .line 451
    :cond_4
    iget-object v14, v5, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;->mActivitys:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 452
    iget-object v14, v5, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;->mActivitys:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    .end local v5    # "bs":Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;
    :cond_5
    const v14, 0x19561111

    invoke-virtual {v9, v14}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "key":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 457
    .restart local v7    # "key":Ljava/lang/String;
    const v14, 0x20150307

    invoke-virtual {v9, v14}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "tmp":Ljava/lang/Integer;
    check-cast v8, Ljava/lang/Integer;

    .line 458
    .restart local v8    # "tmp":Ljava/lang/Integer;
    if-nez v8, :cond_9

    move v6, v11

    .line 459
    :goto_3
    if-eqz v7, :cond_2

    .line 460
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;

    .line 461
    .restart local v5    # "bs":Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;
    if-eqz v5, :cond_2

    .line 462
    iget-object v14, v5, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;->mViews:Ljava/util/List;

    if-nez v14, :cond_6

    .line 463
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v5, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;->mViews:Ljava/util/List;

    .line 464
    :cond_6
    iget-object v14, v5, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;->mViews:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v14, v5, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;->mActivitys:Ljava/util/List;

    if-nez v14, :cond_7

    .line 466
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v5, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;->mActivitys:Ljava/util/List;

    .line 467
    :cond_7
    iget-object v14, v5, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;->mActivitys:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 468
    iget-object v14, v5, Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;->mActivitys:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 442
    .end local v5    # "bs":Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;
    .end local v6    # "displayMode":I
    :cond_8
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto/16 :goto_2

    .line 458
    .restart local v6    # "displayMode":I
    :cond_9
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_3

    .line 474
    .end local v0    # "activity":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/view/View;>;>;"
    .end local v1    # "activityName":Ljava/lang/String;
    .end local v6    # "displayMode":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "tmp":Ljava/lang/Integer;
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_a
    return-object v3
.end method

.method public fillImage2Cache(Landroid/graphics/Bitmap;[BILandroid/view/View;Ljava/lang/String;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "image"    # [B
    .param p3, "size"    # I
    .param p4, "view"    # Landroid/view/View;
    .param p5, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2015
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->fillImage2Cache(Landroid/graphics/Bitmap;[BILandroid/view/View;Ljava/lang/String;I)V

    .line 2016
    return-void
.end method

.method public fillImage2Cache(Landroid/graphics/Bitmap;[BILandroid/view/View;Ljava/lang/String;I)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "image"    # [B
    .param p3, "size"    # I
    .param p4, "view"    # Landroid/view/View;
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "displayMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2036
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2072
    :cond_0
    :goto_0
    return-void

    .line 2040
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionIfInMainThread()V

    .line 2043
    invoke-direct {p0, p4, p5}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->url2Key(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2044
    .local v3, "url2Key":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2047
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mImageFileCache:Lcom/alibaba/doraemon/impl/image/ImageCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3, v3}, Lcom/alibaba/doraemon/impl/image/ImageCache;->fillCache(Ljava/lang/String;[BILjava/lang/String;)[B

    move-result-object v5

    .line 2048
    .local v5, "cacheBytes":[B
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;

    move-object v1, p0

    move-object v2, p1

    move v4, p6

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$4;-><init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Landroid/graphics/Bitmap;Ljava/lang/String;I[BI)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public fillImage2Cache(Landroid/graphics/Bitmap;[BILjava/lang/String;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "image"    # [B
    .param p3, "size"    # I
    .param p4, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2010
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->fillImage2Cache(Landroid/graphics/Bitmap;[BILjava/lang/String;I)V

    .line 2011
    return-void
.end method

.method public fillImage2Cache(Landroid/graphics/Bitmap;[BILjava/lang/String;I)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "image"    # [B
    .param p3, "size"    # I
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "displayMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2031
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->fillImage2Cache(Landroid/graphics/Bitmap;[BILandroid/view/View;Ljava/lang/String;I)V

    .line 2032
    return-void
.end method

.method public fillImage2Cache(Landroid/graphics/Bitmap;[BLandroid/view/View;Ljava/lang/String;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "image"    # [B
    .param p3, "view"    # Landroid/view/View;
    .param p4, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2005
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->fillImage2Cache(Landroid/graphics/Bitmap;[BLandroid/view/View;Ljava/lang/String;I)V

    .line 2006
    return-void
.end method

.method public fillImage2Cache(Landroid/graphics/Bitmap;[BLandroid/view/View;Ljava/lang/String;I)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "image"    # [B
    .param p3, "view"    # Landroid/view/View;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "displayMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2026
    array-length v3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->fillImage2Cache(Landroid/graphics/Bitmap;[BILandroid/view/View;Ljava/lang/String;I)V

    .line 2027
    return-void
.end method

.method public fillImage2Cache(Landroid/graphics/Bitmap;[BLjava/lang/String;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "image"    # [B
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 2000
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->fillImage2Cache(Landroid/graphics/Bitmap;[BLjava/lang/String;I)V

    .line 2001
    return-void
.end method

.method public fillImage2Cache(Landroid/graphics/Bitmap;[BLjava/lang/String;I)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "image"    # [B
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "displayMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2021
    array-length v3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->fillImage2Cache(Landroid/graphics/Bitmap;[BILjava/lang/String;I)V

    .line 2022
    return-void
.end method

.method public fillImage2Cache(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "localUrl"    # Ljava/lang/String;

    .prologue
    .line 2126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->fillImage2Cache(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2127
    return-void
.end method

.method public fillImage2Cache(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "localUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p4, "description":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 2136
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "file"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2162
    :cond_0
    :goto_0
    return-void

    .line 2139
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionIfInMainThread()V

    .line 2140
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->url2Key(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2141
    .local v4, "newUrlKey":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2144
    invoke-direct {p0, p1, p3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->url2Key(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2145
    .local v7, "oldUrlKey":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2150
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mImageFileCache:Lcom/alibaba/doraemon/impl/image/ImageCache;

    const/4 v3, 0x0

    if-eqz p4, :cond_2

    invoke-static {p4}, Lcom/alibaba/doraemon/utils/CommonUtils;->map2JSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    :goto_1
    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/image/ImageCache;->fillCache(Ljava/lang/String;[BILjava/lang/String;[B)[B

    move-result-object v6

    .line 2151
    .local v6, "cacheBytes":[B
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$6;

    invoke-direct {v1, p0, v4, v7, v6}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$6;-><init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v6    # "cacheBytes":[B
    :cond_2
    move-object v5, v2

    .line 2150
    goto :goto_1
.end method

.method public fillImage2Cache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "localUrl"    # Ljava/lang/String;

    .prologue
    .line 2121
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->fillImage2Cache(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2122
    return-void
.end method

.method public fillImage2Cache(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "localUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2131
    .local p3, "description":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->fillImage2Cache(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2132
    return-void
.end method

.method public fillImage2CacheInMainThread(Landroid/graphics/Bitmap;[BILjava/lang/String;I)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "image"    # [B
    .param p3, "size"    # I
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "displayMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2086
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->fillImage2CacheInMainThread(Landroid/view/View;Landroid/graphics/Bitmap;[BILjava/lang/String;I)V

    .line 2087
    return-void
.end method

.method public fillImage2CacheInMainThread(Landroid/graphics/Bitmap;[BLjava/lang/String;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "image"    # [B
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 2076
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->fillImage2CacheInMainThread(Landroid/view/View;Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 2077
    return-void
.end method

.method public fillImage2CacheInMainThread(Landroid/view/View;Landroid/graphics/Bitmap;[BILjava/lang/String;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "image"    # [B
    .param p4, "size"    # I
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "displayMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2091
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2117
    :cond_0
    :goto_0
    return-void

    .line 2095
    :cond_1
    invoke-direct {p0, p1, p5}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->url2Key(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2096
    .local v1, "url2Key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2099
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionNotMainThread()V

    .line 2101
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-virtual {v2, v1, p6}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->hasBitmap(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2102
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mRes:Landroid/content/res/Resources;

    invoke-direct {v3, v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v1, p6, v3}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->remandBitmap(Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;)V

    .line 2106
    :cond_2
    if-eqz p3, :cond_3

    if-lez p4, :cond_3

    const v2, 0x7d000

    if-ge p4, v2, :cond_3

    .line 2107
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v2

    invoke-interface {v2, p3}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newByteBuffer([B)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v0

    .line 2108
    .local v0, "pooledByteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, p5, v0, v4, v5}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->fillBytes2Cache(Ljava/lang/String;Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;J)V

    .line 2111
    .end local v0    # "pooledByteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->getToCacheThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$5;

    invoke-direct {v3, p0, p3, p4, v1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$5;-><init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;[BILjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public fillImage2CacheInMainThread(Landroid/view/View;Landroid/graphics/Bitmap;[BLjava/lang/String;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "image"    # [B
    .param p4, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2081
    const/4 v1, 0x0

    array-length v4, p3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->fillImage2CacheInMainThread(Landroid/view/View;Landroid/graphics/Bitmap;[BILjava/lang/String;I)V

    .line 2082
    return-void
.end method

.method public fillImage2MemoryCache(Landroid/graphics/Bitmap;[BILjava/lang/String;I)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "image"    # [B
    .param p3, "size"    # I
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "displayMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2231
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->fillImage2MemoryCache(Landroid/view/View;Landroid/graphics/Bitmap;[BILjava/lang/String;I)V

    .line 2232
    return-void
.end method

.method public fillImage2MemoryCache(Landroid/view/View;Landroid/graphics/Bitmap;[BILjava/lang/String;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "image"    # [B
    .param p4, "size"    # I
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "displayMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2236
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2257
    :cond_0
    :goto_0
    return-void

    .line 2240
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionNotMainThread()V

    .line 2242
    invoke-direct {p0, p1, p5}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->url2Key(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2243
    .local v0, "newUrlKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2248
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-virtual {v2, v0, p6}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->hasBitmap(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2249
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mRes:Landroid/content/res/Resources;

    invoke-direct {v3, v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v0, p6, v3}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->remandBitmap(Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;)V

    .line 2253
    :cond_2
    if-eqz p3, :cond_0

    if-lez p4, :cond_0

    const v2, 0x7d000

    if-ge p4, v2, :cond_0

    .line 2254
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v2

    invoke-interface {v2, p3}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newByteBuffer([B)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v1

    .line 2255
    .local v1, "pooledByteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->fillBytes2Cache(Ljava/lang/String;Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;J)V

    goto :goto_0
.end method

.method public getDiskCacheSize()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 423
    const-string/jumbo v1, "IMAGECACHE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 424
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    invoke-interface {v0}, Lcom/alibaba/doraemon/cache/Cache;->getCacheSize()J

    move-result-wide v2

    return-wide v2
.end method

.method protected getDrawableInMem(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "displayMode"    # I

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->hireBitmap(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getImageBitmapMemorySize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 484
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->getBitmapMemorySize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getImageCache(Landroid/view/View;Ljava/lang/String;)Lcom/alibaba/doraemon/image/ImageInputStream;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 378
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionIfInMainThread()V

    .line 379
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->url2Key(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "url2Key":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, v4

    .line 399
    :goto_0
    return-object v2

    .line 383
    :cond_0
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-virtual {v5, v3}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->getBitmapBytes(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;

    move-result-object v1

    .line 384
    .local v1, "imageBytes":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;
    if-eqz v1, :cond_1

    .line 387
    :try_start_0
    new-instance v2, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;

    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v5

    .line 388
    invoke-virtual {v5}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v5

    new-instance v6, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    iget-object v7, v1, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    invoke-direct {v6, v7}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;-><init>(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;)V

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newByteBuffer(Ljava/io/InputStream;)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;-><init>(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .local v2, "inputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    goto :goto_0

    .line 391
    .end local v2    # "inputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 396
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mImageFileCache:Lcom/alibaba/doraemon/impl/image/ImageCache;

    invoke-virtual {v5, v3}, Lcom/alibaba/doraemon/impl/image/ImageCache;->getCache(Ljava/lang/String;)Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v2

    .line 397
    .local v2, "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    if-eqz v2, :cond_2

    .line 398
    new-instance v4, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/request/RequestInputStream;->length()I

    move-result v5

    invoke-direct {v4, v2, v5}, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;-><init>(Lcom/alibaba/doraemon/request/RequestInputStream;I)V

    move-object v2, v4

    goto :goto_0

    :cond_2
    move-object v2, v4

    .line 399
    goto :goto_0
.end method

.method public getImageCache(Ljava/lang/String;)Lcom/alibaba/doraemon/image/ImageInputStream;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->getImageCache(Landroid/view/View;Ljava/lang/String;)Lcom/alibaba/doraemon/image/ImageInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getImageDescription(Landroid/view/View;Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2171
    const/4 v3, 0x0

    .line 2172
    .local v3, "descriptionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2173
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->url2Key(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2174
    .local v5, "url2Key":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2175
    const/4 v6, 0x0

    .line 2189
    .end local v5    # "url2Key":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 2177
    .restart local v5    # "url2Key":Ljava/lang/String;
    :cond_0
    const-string/jumbo v6, "IMAGECACHE"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 2178
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    invoke-interface {v0, v5}, Lcom/alibaba/doraemon/cache/Cache;->read(Ljava/lang/String;)Lcom/alibaba/doraemon/cache/CacheEntity;

    move-result-object v4

    .line 2179
    .local v4, "entity":Lcom/alibaba/doraemon/cache/CacheEntity;
    if-eqz v4, :cond_1

    .line 2180
    invoke-interface {v4}, Lcom/alibaba/doraemon/cache/CacheEntity;->getCacheDescription()[B

    move-result-object v1

    .line 2182
    .local v1, "desBytes":[B
    if-eqz v1, :cond_1

    .line 2183
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 2184
    .local v2, "description":Ljava/lang/String;
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->json2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .end local v0    # "cache":Lcom/alibaba/doraemon/cache/Cache;
    .end local v1    # "desBytes":[B
    .end local v2    # "description":Ljava/lang/String;
    .end local v4    # "entity":Lcom/alibaba/doraemon/cache/CacheEntity;
    .end local v5    # "url2Key":Ljava/lang/String;
    :cond_1
    move-object v6, v3

    .line 2189
    goto :goto_0
.end method

.method public getImageDescription(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2166
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->getImageDescription(Landroid/view/View;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getImageMaxMemSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 489
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->getMaxMemorySize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getImageMemorySize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 479
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->getMemorySize()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasImageCache(Landroid/view/View;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->url2Key(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "url2Key":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->getBitmapBytes(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$ImageBytes;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mImageFileCache:Lcom/alibaba/doraemon/impl/image/ImageCache;

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/impl/image/ImageCache;->hasCache(Ljava/lang/String;)Z

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

.method public hasImageCache(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->hasImageCache(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1165
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v13, 0x19861103

    const v12, 0x19820626

    const v11, 0x19820625

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1258
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mForegroundActivity:Landroid/app/Activity;

    if-ne p1, v6, :cond_0

    .line 1259
    iput-object v9, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mForegroundActivity:Landroid/app/Activity;

    .line 1261
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->activity2String(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1263
    .local v0, "activityString":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mContextUrlparser:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mViewPool:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1267
    .local v5, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v5, :cond_3

    .line 1268
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1270
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    .line 1271
    const v6, 0x19861104

    invoke-virtual {v4, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    .line 1272
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v6, v8, :cond_2

    .line 1273
    invoke-virtual {v4, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1277
    :goto_1
    instance-of v6, v4, Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    .line 1278
    invoke-virtual {v4, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    .line 1279
    invoke-virtual {v4, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    move-object v6, v4

    .line 1280
    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1284
    :cond_1
    invoke-virtual {v4, v13, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1285
    const v6, 0x19861104

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1286
    invoke-virtual {v4, v11, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1287
    invoke-virtual {v4, v12, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1288
    const v6, 0x19561111

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1289
    const v6, 0x20120718

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1290
    const v6, 0x20150308

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1291
    const v6, 0x20150304

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1292
    const v6, 0x20150307

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1293
    const v6, 0x20150306

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1294
    const v6, 0x20100315

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1295
    const v6, 0x20140617

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1296
    const v6, 0x19561212

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1275
    :cond_2
    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1301
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mListPool:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1302
    .local v1, "listViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    .line 1303
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1304
    .local v2, "livtview":Ljava/lang/String;
    const-string/jumbo v7, "REQUEST"

    invoke-static {v7}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/request/Request;

    .line 1305
    .local v3, "request":Lcom/alibaba/doraemon/request/Request;
    invoke-interface {v3, v2}, Lcom/alibaba/doraemon/request/Request;->addReqest2Group(Ljava/lang/String;)V

    .line 1306
    invoke-interface {v3, v10}, Lcom/alibaba/doraemon/request/Request;->cancelGroupRequest(Z)V

    goto :goto_2

    .line 1310
    .end local v2    # "livtview":Ljava/lang/String;
    .end local v3    # "request":Lcom/alibaba/doraemon/request/Request;
    :cond_4
    const-string/jumbo v6, "REQUEST"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/request/Request;

    .line 1311
    .restart local v3    # "request":Lcom/alibaba/doraemon/request/Request;
    invoke-interface {v3, v0}, Lcom/alibaba/doraemon/request/Request;->addReqest2Group(Ljava/lang/String;)V

    .line 1312
    invoke-interface {v3, v10}, Lcom/alibaba/doraemon/request/Request;->cancelGroupRequest(Z)V

    .line 1314
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mListPool:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mViewPool:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1208
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mForegroundActivity:Landroid/app/Activity;

    .line 1177
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->activity2String(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1179
    .local v0, "activityString":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mViewPool:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1180
    .local v5, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v5, :cond_1

    .line 1181
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1182
    .local v4, "view":Landroid/view/View;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1183
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 1189
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mListPool:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1190
    .local v1, "listViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 1191
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1192
    .local v2, "livtview":Ljava/lang/String;
    const-string/jumbo v7, "REQUEST"

    invoke-static {v7}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/request/Request;

    .line 1193
    .local v3, "request":Lcom/alibaba/doraemon/request/Request;
    invoke-interface {v3, v2}, Lcom/alibaba/doraemon/request/Request;->addReqest2Group(Ljava/lang/String;)V

    .line 1194
    invoke-interface {v3}, Lcom/alibaba/doraemon/request/Request;->resumeGroupRequest()V

    goto :goto_1

    .line 1198
    .end local v2    # "livtview":Ljava/lang/String;
    .end local v3    # "request":Lcom/alibaba/doraemon/request/Request;
    :cond_2
    const-string/jumbo v6, "REQUEST"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/request/Request;

    .line 1199
    .restart local v3    # "request":Lcom/alibaba/doraemon/request/Request;
    if-eqz v3, :cond_3

    .line 1200
    invoke-interface {v3, v0}, Lcom/alibaba/doraemon/request/Request;->addReqest2Group(Ljava/lang/String;)V

    .line 1201
    invoke-interface {v3}, Lcom/alibaba/doraemon/request/Request;->resumeGroupRequest()V

    .line 1203
    :cond_3
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1253
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1170
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1213
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->activity2String(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1215
    .local v0, "activityString":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mViewPool:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1216
    .local v6, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v6, :cond_2

    .line 1217
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1218
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1219
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    instance-of v7, v1, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    if-eqz v7, :cond_1

    move-object v7, v1

    .line 1220
    check-cast v7, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->flushImg2Cache()V

    .line 1223
    :cond_1
    instance-of v7, v5, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 1224
    check-cast v5, Landroid/widget/ImageView;

    .end local v5    # "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1225
    if-eqz v1, :cond_0

    instance-of v7, v1, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    if-eqz v7, :cond_0

    move-object v7, v1

    .line 1226
    check-cast v7, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    invoke-virtual {v7}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->flushImg2Cache()V

    goto :goto_0

    .line 1232
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mListPool:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1233
    .local v2, "listViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 1234
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1235
    .local v3, "livtview":Ljava/lang/String;
    const-string/jumbo v8, "REQUEST"

    invoke-static {v8}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/request/Request;

    .line 1236
    .local v4, "request":Lcom/alibaba/doraemon/request/Request;
    if-eqz v4, :cond_3

    .line 1237
    invoke-interface {v4, v3}, Lcom/alibaba/doraemon/request/Request;->addReqest2Group(Ljava/lang/String;)V

    .line 1238
    invoke-interface {v4}, Lcom/alibaba/doraemon/request/Request;->pauseGroupRequset()V

    goto :goto_1

    .line 1243
    .end local v3    # "livtview":Ljava/lang/String;
    .end local v4    # "request":Lcom/alibaba/doraemon/request/Request;
    :cond_4
    const-string/jumbo v7, "REQUEST"

    invoke-static {v7}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/request/Request;

    .line 1244
    .restart local v4    # "request":Lcom/alibaba/doraemon/request/Request;
    if-eqz v4, :cond_5

    .line 1245
    invoke-interface {v4, v0}, Lcom/alibaba/doraemon/request/Request;->addReqest2Group(Ljava/lang/String;)V

    .line 1246
    invoke-interface {v4}, Lcom/alibaba/doraemon/request/Request;->pauseGroupRequset()V

    .line 1248
    :cond_5
    return-void
.end method

.method public onEnterBackground()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mEnterBackgourndTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1324
    return-void
.end method

.method public onEnterForeground()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mEnterBackgourndTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1330
    return-void
.end method

.method public preDownloadImage(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "trafficTag"    # Ljava/lang/String;
    .param p4, "isHugePic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 250
    .local p5, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->preDownloadImage(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)V

    .line 251
    return-void
.end method

.method public preDownloadImage(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "trafficTag"    # Ljava/lang/String;
    .param p4, "isHugePic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 255
    .local p5, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    const-string/jumbo v3, "ImageMagicianImpl"

    const-string/jumbo v4, "preDownloadImage: url should not be null !"

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionNotMainThread()V

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->url2Key(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "url2Key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 269
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mPreDownloadingRequests:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 274
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mDownloadingPool:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 275
    .local v1, "mDownloadings":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-nez v1, :cond_0

    .line 280
    const-string/jumbo v3, "REQUEST"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/Request;

    .line 281
    .local v0, "imageRequest":Lcom/alibaba/doraemon/request/Request;
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mPreDownloadingRequests:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/request/Request;->setCacheKey(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mImageFileCache:Lcom/alibaba/doraemon/impl/image/ImageCache;

    .line 283
    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/request/Request;->setCacheClient(Lcom/alibaba/doraemon/request/CacheClient;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v3

    .line 284
    invoke-interface {v3, p2}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v3

    sget-object v4, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/request/Request;->setPriority(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v3

    .line 285
    invoke-interface {v3, p3}, Lcom/alibaba/doraemon/request/Request;->setPerfTag(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mResponseReceiver:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;

    .line 286
    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 287
    if-eqz p4, :cond_2

    .line 288
    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->markHugeDownload()Lcom/alibaba/doraemon/request/Request;

    .line 289
    :cond_2
    if-eqz p5, :cond_3

    .line 290
    invoke-interface {v0, p5}, Lcom/alibaba/doraemon/request/Request;->setRequestParams(Ljava/util/Map;)Lcom/alibaba/doraemon/request/Request;

    .line 291
    :cond_3
    if-eqz p6, :cond_4

    .line 292
    invoke-interface {v0, p6}, Lcom/alibaba/doraemon/request/Request;->setRequestHeaders(Ljava/util/Map;)Lcom/alibaba/doraemon/request/Request;

    .line 293
    :cond_4
    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->start()V

    goto :goto_0
.end method

.method public preDownloadImage(Landroid/view/View;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isHugePic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 245
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->preDownloadImage(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)V

    .line 246
    return-void
.end method

.method public preDownloadImage(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "trafficTag"    # Ljava/lang/String;
    .param p3, "isHugePic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 230
    .local p4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->preDownloadImage(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)V

    .line 231
    return-void
.end method

.method public preDownloadImage(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "trafficTag"    # Ljava/lang/String;
    .param p3, "isHugePic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 235
    .local p4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->preDownloadImage(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)V

    .line 236
    return-void
.end method

.method public preDownloadImage(Ljava/lang/String;ZLjava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isHugePic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p3, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->preDownloadImage(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V

    .line 226
    return-void
.end method

.method public registerEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/doraemon/image/ImageEventListener;

    .prologue
    .line 494
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionNotMainThread()V

    .line 495
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    return-void
.end method

.method protected releaseDrawable(Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "displayMode"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->hasBitmap(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mMemoryCache:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->remandBitmap(Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;)V

    .line 1382
    :cond_0
    return-void
.end method

.method public removeImageCache(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 320
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    const-string/jumbo v1, "ImageMagicianImpl"

    const-string/jumbo v2, "removeImageCache: url should not be null !"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionIfInMainThread()V

    .line 327
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->url2Key(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "url2Key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    const-string/jumbo v1, "IMAGECACHE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/cache/Cache;

    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/cache/Cache;->remove(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public removeImageCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->removeImageCache(Landroid/view/View;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public removeImageCacheAsync(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 342
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    const-string/jumbo v1, "ImageMagicianImpl"

    const-string/jumbo v2, "removeImageCache: url should not be null !"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->url2Key(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "url2Key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->getToCacheThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$2;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$2;-><init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public removeImageCacheAsync(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 337
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->removeImageCacheAsync(Landroid/view/View;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method protected reportStates()[Ljava/lang/String;
    .locals 26

    .prologue
    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mViewPool:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 1450
    .local v7, "activitys":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/view/View;>;>;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1451
    .local v12, "leakLog":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1452
    .local v10, "emptyActivity":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1454
    .local v17, "tmp":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1455
    .local v11, "leakActivity":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1456
    .local v5, "activity":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/view/View;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    .line 1457
    .local v19, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_1
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 1458
    .local v18, "view":Landroid/view/View;
    const/4 v15, 0x0

    .line 1459
    .local v15, "needUnbind":Z
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v23, 0x8

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v23, 0x4

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    .line 1460
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mForegroundActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 1461
    :cond_2
    const/4 v15, 0x1

    .line 1462
    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1464
    const v20, 0x19561212

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1467
    :cond_3
    const v20, 0x19820625

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    .line 1468
    .local v14, "md":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mForegroundActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mForegroundActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    .line 1469
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->activity2String(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 1471
    .local v8, "curActivityStr":Ljava/lang/String;
    :goto_2
    instance-of v0, v14, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v20, v14

    .line 1472
    check-cast v20, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->isRecycled()Z

    move-result v20

    if-nez v20, :cond_5

    .line 1474
    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 1475
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1476
    .local v6, "activityStr":Ljava/lang/String;
    const/16 v20, 0x2e

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1479
    .end local v6    # "activityStr":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    .line 1480
    .local v9, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v20, "leak background, memory size: "

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v23

    move-object/from16 v20, v14

    check-cast v20, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->getByteCount()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v20

    const-string/jumbo v23, " url: "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v23

    move-object/from16 v20, v14

    check-cast v20, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    .line 1481
    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->getBindedUrl()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v20

    const-string/jumbo v23, " view: "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v20

    const-string/jumbo v23, "@"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->hashCode()I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1482
    invoke-virtual {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1484
    if-eqz v15, :cond_5

    .line 1485
    check-cast v14, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    .end local v14    # "md":Ljava/lang/Object;
    invoke-virtual {v14}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->flushImg2Cache()V

    .line 1490
    .end local v9    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_5
    const v20, 0x19861103

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    .line 1491
    .restart local v14    # "md":Ljava/lang/Object;
    instance-of v0, v14, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v20, v14

    .line 1492
    check-cast v20, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->isRecycled()Z

    move-result v20

    if-nez v20, :cond_1

    .line 1494
    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 1495
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1496
    .restart local v6    # "activityStr":Ljava/lang/String;
    const/16 v20, 0x2e

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1499
    .end local v6    # "activityStr":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    .line 1500
    .restart local v9    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v20, "leak background, memory size: "

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v23

    move-object/from16 v20, v14

    check-cast v20, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->getByteCount()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v20

    const-string/jumbo v23, " url: "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v23

    move-object/from16 v20, v14

    check-cast v20, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    .line 1501
    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->getBindedUrl()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v20

    const-string/jumbo v23, " view: "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v20

    const-string/jumbo v23, "@"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->hashCode()I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1502
    invoke-virtual {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1504
    if-eqz v15, :cond_1

    .line 1505
    check-cast v14, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    .end local v14    # "md":Ljava/lang/Object;
    invoke-virtual {v14}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->flushImg2Cache()V

    goto/16 :goto_1

    .line 1469
    .end local v8    # "curActivityStr":Ljava/lang/String;
    .end local v9    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v14    # "md":Ljava/lang/Object;
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1512
    .end local v14    # "md":Ljava/lang/Object;
    .end local v15    # "needUnbind":Z
    .end local v18    # "view":Landroid/view/View;
    :cond_8
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1513
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_9

    .line 1514
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1517
    :cond_9
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_0

    .line 1518
    const-string/jumbo v22, "image_memory_state"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "Activity :"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1520
    .local v13, "log":Ljava/lang/String;
    const-string/jumbo v22, "image_memory_state"

    move-object/from16 v0, v22

    invoke-static {v0, v13}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1522
    .end local v13    # "log":Ljava/lang/String;
    :cond_a
    invoke-interface {v12}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 1526
    .end local v5    # "activity":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/view/View;>;>;"
    .end local v19    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_b
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1527
    .local v4, "activity":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mViewPool:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1529
    .end local v4    # "activity":Ljava/lang/String;
    :cond_c
    const/16 v16, 0x0

    .line 1530
    .local v16, "strArray":[Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v20

    if-lez v20, :cond_d

    .line 1531
    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1532
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "strArray":[Ljava/lang/String;
    check-cast v16, [Ljava/lang/String;

    .line 1535
    .restart local v16    # "strArray":[Ljava/lang/String;
    :cond_d
    return-object v16
.end method

.method public setDecoder(Lcom/alibaba/doraemon/image/ImageDecoder;)V
    .locals 0
    .param p1, "decoder"    # Lcom/alibaba/doraemon/image/ImageDecoder;

    .prologue
    .line 1070
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionNotMainThread()V

    .line 1071
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mAppImageDecoder:Lcom/alibaba/doraemon/image/ImageDecoder;

    .line 1072
    return-void
.end method

.method public setFastScrollEnabled(Landroid/widget/AbsListView;Z)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->listView2String(Landroid/widget/AbsListView;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "viewStr":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 215
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mFastScrollListViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mFastScrollListViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mFastScrollListViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "lvParent"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 185
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v6, v3

    move v7, v5

    move v8, v5

    move-object v10, v9

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->setImage(Landroid/view/View;Ljava/lang/String;ZLandroid/widget/AbsListView;IZZZLjava/util/Map;Ljava/util/Map;)V

    .line 186
    return-void
.end method

.method public setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "lvParent"    # Landroid/widget/AbsListView;
    .param p4, "displayMode"    # I
    .param p5, "isClearDrawable"    # Z
    .param p6, "isHugePic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Landroid/widget/AbsListView;",
            "IZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    .local p7, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->setImage(Landroid/view/View;Ljava/lang/String;ZLandroid/widget/AbsListView;IZZZLjava/util/Map;Ljava/util/Map;)V

    .line 196
    return-void
.end method

.method public setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "lvParent"    # Landroid/widget/AbsListView;
    .param p4, "displayMode"    # I
    .param p5, "isClearDrawable"    # Z
    .param p6, "isHugePic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Landroid/widget/AbsListView;",
            "IZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 200
    .local p7, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p8, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->setImage(Landroid/view/View;Ljava/lang/String;ZLandroid/widget/AbsListView;IZZZLjava/util/Map;Ljava/util/Map;)V

    .line 201
    return-void
.end method

.method public setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "lvParent"    # Landroid/widget/AbsListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Landroid/widget/AbsListView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 190
    .local p4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->setImage(Landroid/view/View;Ljava/lang/String;ZLandroid/widget/AbsListView;IZZZLjava/util/Map;Ljava/util/Map;)V

    .line 191
    return-void
.end method

.method public setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V
    .locals 11
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "lvParent"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 160
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, v3

    move v7, v3

    move v8, v3

    move-object v10, v9

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->setImage(Landroid/view/View;Ljava/lang/String;ZLandroid/widget/AbsListView;IZZZLjava/util/Map;Ljava/util/Map;)V

    .line 161
    return-void
.end method

.method public setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V
    .locals 11
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "lvParent"    # Landroid/widget/AbsListView;
    .param p4, "displayMode"    # I
    .param p5, "isClearDrawable"    # Z
    .param p6, "isHugePic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Landroid/widget/AbsListView;",
            "IZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 170
    .local p7, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->setImage(Landroid/view/View;Ljava/lang/String;ZLandroid/widget/AbsListView;IZZZLjava/util/Map;Ljava/util/Map;)V

    .line 171
    return-void
.end method

.method public setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V
    .locals 11
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "lvParent"    # Landroid/widget/AbsListView;
    .param p4, "displayMode"    # I
    .param p5, "isClearDrawable"    # Z
    .param p6, "isHugePic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Landroid/widget/AbsListView;",
            "IZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    .local p7, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p8, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->setImage(Landroid/view/View;Ljava/lang/String;ZLandroid/widget/AbsListView;IZZZLjava/util/Map;Ljava/util/Map;)V

    .line 176
    return-void
.end method

.method public setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "lvParent"    # Landroid/widget/AbsListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Landroid/widget/AbsListView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    .local p4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->setImage(Landroid/view/View;Ljava/lang/String;ZLandroid/widget/AbsListView;IZZZLjava/util/Map;Ljava/util/Map;)V

    .line 166
    return-void
.end method

.method public setLocalImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;IZ)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "lvParent"    # Landroid/widget/AbsListView;
    .param p4, "displayMode"    # I
    .param p5, "isClearDrawable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    const/4 v3, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->setImage(Landroid/view/View;Ljava/lang/String;ZLandroid/widget/AbsListView;IZZZLjava/util/Map;Ljava/util/Map;)V

    .line 206
    return-void
.end method

.method public setLocalImageDrawalbe(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZ)V
    .locals 11
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "lvParent"    # Landroid/widget/AbsListView;
    .param p4, "displayMode"    # I
    .param p5, "isClearDrawable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 180
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->setImage(Landroid/view/View;Ljava/lang/String;ZLandroid/widget/AbsListView;IZZZLjava/util/Map;Ljava/util/Map;)V

    .line 181
    return-void
.end method

.method public setUrlParser(Landroid/content/Context;Lcom/alibaba/doraemon/image/UrlParser;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lcom/alibaba/doraemon/image/UrlParser;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 602
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionNotMainThread()V

    .line 606
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 607
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mAppUrlParser:Lcom/alibaba/doraemon/image/UrlParser;

    goto :goto_0

    .line 609
    :cond_2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 610
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mContextUrlparser:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->activity2String(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 613
    :cond_3
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 614
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Warnning: setUrlParser Context is not Activity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unBindViews(Landroid/app/Activity;)V
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v13, 0x19820626

    const v12, 0x19820625

    const/16 v11, 0x8

    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 506
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionNotMainThread()V

    .line 508
    if-eqz p1, :cond_6

    .line 509
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->activity2String(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "activityStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mViewPool:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 511
    .local v5, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-nez v5, :cond_1

    .line 598
    .end local v0    # "activityStr":Ljava/lang/String;
    .end local v5    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_0
    return-void

    .line 515
    .restart local v0    # "activityStr":Ljava/lang/String;
    .restart local v5    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 516
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/View;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 517
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 518
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v11, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v10, :cond_3

    .line 519
    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result v6

    if-eq v6, v11, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 521
    :cond_3
    const v6, 0x19861103

    invoke-virtual {v4, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    .line 522
    const v6, 0x19861104

    invoke-virtual {v4, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    .line 523
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_5

    .line 524
    invoke-virtual {v4, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 528
    :goto_1
    instance-of v6, v4, Landroid/widget/ImageView;

    if-eqz v6, :cond_4

    .line 529
    invoke-virtual {v4, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    .line 530
    invoke-virtual {v4, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    move-object v6, v4

    .line 531
    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 534
    :cond_4
    const v6, 0x19861103

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 535
    const v6, 0x19861104

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 536
    invoke-virtual {v4, v12, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 537
    invoke-virtual {v4, v13, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 538
    const v6, 0x19561111

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 539
    const v6, 0x20120718

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 540
    const v6, 0x20150308

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 541
    const v6, 0x20150304

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 542
    const v6, 0x20150307

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 543
    const v6, 0x20150306

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 544
    const v6, 0x20100315

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 545
    const v6, 0x20140617

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 546
    const v6, 0x19561212

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 548
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 526
    :cond_5
    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 552
    .end local v0    # "activityStr":Ljava/lang/String;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/View;>;"
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_6
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mViewPool:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 554
    .local v1, "activitys":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/view/View;>;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 555
    .local v3, "tmpActivity":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/view/View;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 556
    .restart local v5    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v5, :cond_7

    .line 560
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 561
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/View;>;"
    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 562
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 563
    .restart local v4    # "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v8, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mForegroundActivity:Landroid/app/Activity;

    if-ne v6, v8, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v11, :cond_9

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v10, :cond_9

    .line 564
    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result v6

    if-eq v6, v11, :cond_9

    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result v6

    if-ne v6, v10, :cond_8

    .line 566
    :cond_9
    const v6, 0x19861103

    invoke-virtual {v4, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    .line 567
    const v6, 0x19861104

    invoke-virtual {v4, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    .line 568
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v6, v8, :cond_b

    .line 569
    invoke-virtual {v4, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 573
    :goto_3
    instance-of v6, v4, Landroid/widget/ImageView;

    if-eqz v6, :cond_a

    .line 574
    invoke-virtual {v4, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    .line 575
    invoke-virtual {v4, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->cancelBinded(Ljava/lang/Object;Landroid/view/View;)V

    move-object v6, v4

    .line 576
    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 579
    :cond_a
    const v6, 0x19861103

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 580
    const v6, 0x19861104

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 581
    invoke-virtual {v4, v12, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 582
    invoke-virtual {v4, v13, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 583
    const v6, 0x19561111

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 584
    const v6, 0x20120718

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 585
    const v6, 0x20150308

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 586
    const v6, 0x20150304

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 587
    const v6, 0x20150307

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 588
    const v6, 0x20150306

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 589
    const v6, 0x20100315

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 590
    const v6, 0x20140617

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 591
    const v6, 0x19561212

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 593
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2

    .line 571
    :cond_b
    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method public unregisterEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/doraemon/image/ImageEventListener;

    .prologue
    .line 500
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionNotMainThread()V

    .line 501
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->mEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 502
    return-void
.end method
