.class public final Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;
.super Ljava/lang/Object;
.source "ScreencastDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$CancellationRunnable;,
        Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$EventDispatchRunnable;,
        Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;
    }
.end annotation


# static fields
.field private static final FRAME_DELAY:J = 0xc8L

.field private static sBitmapScale:F


# instance fields
.field private final mActivityTracker:Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapFetchRunnable:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mEvent:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ScreencastFrameEvent;

.field private final mEventDispatchRunnable:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$EventDispatchRunnable;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsRunning:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mMetadata:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ScreencastFrameEventMetadata;

.field private mPeer:Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

.field private mRequest:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$StartScreencastRequest;

.field private mStream:Ljava/io/ByteArrayOutputStream;

.field private final mTempDst:Landroid/graphics/RectF;

.field private final mTempSrc:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->sBitmapScale:F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mMainHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;

    invoke-direct {v0, p0, v2}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;-><init>(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$1;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mBitmapFetchRunnable:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;

    .line 37
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->get()Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mActivityTracker:Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;

    .line 38
    new-instance v0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$EventDispatchRunnable;

    invoke-direct {v0, p0, v2}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$EventDispatchRunnable;-><init>(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$1;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mEventDispatchRunnable:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$EventDispatchRunnable;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mTempSrc:Landroid/graphics/RectF;

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mTempDst:Landroid/graphics/RectF;

    .line 51
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ScreencastFrameEvent;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ScreencastFrameEvent;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mEvent:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ScreencastFrameEvent;

    .line 52
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ScreencastFrameEventMetadata;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ScreencastFrameEventMetadata;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mMetadata:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ScreencastFrameEventMetadata;

    .line 55
    return-void
.end method

.method static synthetic access$1000()F
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->sBitmapScale:F

    return v0
.end method

.method static synthetic access$1002(F)F
    .locals 0
    .param p0, "x0"    # F

    .prologue
    .line 31
    sput p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->sBitmapScale:F

    return p0
.end method

.method static synthetic access$1100(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Landroid/graphics/Canvas;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mCanvas:Landroid/graphics/Canvas;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mTempSrc:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mTempDst:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Ljava/io/ByteArrayOutputStream;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mStream:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;
    .param p1, "x1"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mStream:Ljava/io/ByteArrayOutputStream;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ScreencastFrameEvent;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mEvent:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ScreencastFrameEvent;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ScreencastFrameEventMetadata;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mMetadata:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ScreencastFrameEventMetadata;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mPeer:Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mBitmapFetchRunnable:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$EventDispatchRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mEventDispatchRunnable:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$EventDispatchRunnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$602(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mActivityTracker:Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;

    return-object v0
.end method

.method static synthetic access$800(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$802(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$900(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Lcom/taobao/weex/devtools/inspector/protocol/module/Page$StartScreencastRequest;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mRequest:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$StartScreencastRequest;

    return-object v0
.end method

.method public static getsBitmapScale()F
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->sBitmapScale:F

    return v0
.end method


# virtual methods
.method public final startScreencast(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lcom/taobao/weex/devtools/inspector/protocol/module/Page$StartScreencastRequest;)V
    .locals 4
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "request"    # Lcom/taobao/weex/devtools/inspector/protocol/module/Page$StartScreencastRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mRequest:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$StartScreencastRequest;

    .line 63
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Screencast Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mHandlerThread:Landroid/os/HandlerThread;

    .line 64
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 65
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mPeer:Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mIsRunning:Z

    .line 67
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mStream:Ljava/io/ByteArrayOutputStream;

    .line 68
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mBackgroundHandler:Landroid/os/Handler;

    .line 69
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mBitmapFetchRunnable:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    return-void
.end method

.method public final stopScreencast()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$CancellationRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$CancellationRunnable;-><init>(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method
